package com.example.qiaomallback.controller;

import com.example.qiaomallback.entity.oms_orderEntity;
import com.example.qiaomallback.entity.oms_order_itemEntity;
import com.example.qiaomallback.service.OrderSer;
import com.example.qiaomallback.util.MD5;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

@RestController
@CrossOrigin(value = "*")

public class OrderCtl {
    @Autowired
    OrderSer orderSer;
    JSONObject jsonObject = new JSONObject();
    private static final Logger logger = LoggerFactory.getLogger(OrderCtl.class);

    @RequestMapping("/allOrder")
    public Object AllOrder(){
        jsonObject.put("Res",true);
        jsonObject.put("orderData",orderSer.selectAllOrder());
        return jsonObject;
//        return orderSer.selectAllOrder();
    }

    @RequestMapping("/Order/OrderItemById")
    public Object OrderItemById(@RequestParam String id){
        return orderSer.orderItemById(Long.valueOf(id));
    }


    @RequestMapping("/Order/OrderBasicDetail")
    public Object OrderBasicDetail(@RequestParam String id){
        JSONArray jsonArray = new JSONArray();
        jsonArray.add(orderSer.OrderBasicDetail(id));
        return jsonArray;
    }
    @RequestMapping("/SearchByUserName")
    public Object OrderItemByUserName(@RequestParam String memberUsername){
        return orderSer.searchByUserName(memberUsername);
    }
    @RequestMapping("/SearchById")
    public Object OrderItemById(@RequestParam Long id){
        return orderSer.searchById(id);
    }
    @RequestMapping("/SearchByTime")
    public Object OrderItemByTime(@RequestParam String time){
        return orderSer.searchByTime(time);
    }
    @RequestMapping("/SearchOrderBySn")

    public Object OrderItemBySn(@RequestParam String sn){
        return orderSer.searchBySn(sn);
    }
    @RequestMapping("/delOrder")
    public Object DelOrder(@RequestParam String id){
        JSONObject jsonObject = new JSONObject();

        orderSer.delOrder(Long.valueOf(id));
        jsonObject.put("Res",true);
        return jsonObject;

    }
    @RequestMapping("/insertOrder")
    public Object insertOrder(@RequestParam String size,@RequestParam String color,@RequestParam String amount,@RequestParam String pic,@RequestParam String username,@RequestParam String province,@RequestParam String city,@RequestParam String county,@RequestParam String tel,@RequestParam String detail){
        JSONObject jsonObject = new JSONObject();
        logger.info(size);
        logger.info(color);
        logger.info(amount);
        logger.info(pic);
        logger.info(username);
        logger.info(province);
        logger.info(city);
        logger.info(county);
        logger.info(tel);
        logger.info(detail);

        oms_orderEntity omsOrderEntity = new oms_orderEntity();
        oms_order_itemEntity omsOrderItemEntity = new oms_order_itemEntity();
        Long id = (long)(Math.random()*100000);

        omsOrderEntity.setId(id);
        omsOrderEntity.setTotalAmount(BigDecimal.valueOf(Long.parseLong(amount)*100));
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String dateString = formatter.format(new Date());

        omsOrderEntity.setCreateTime(dateString);
        omsOrderEntity.setDeleteStatus(0);
        omsOrderEntity.setReceiverProvince(province);
        omsOrderEntity.setReceiverCity(city);
        omsOrderEntity.setReceiverRegion(county);
        omsOrderEntity.setReceiverDetailAddress(detail);
        omsOrderEntity.setReceiverPhone(tel);
        omsOrderEntity.setTotalAmount(BigDecimal.valueOf(Integer.valueOf(amount)*100));
        omsOrderEntity.setPaymentTime(new Date());
        omsOrderEntity.setDeliveryTime(new Date());
        omsOrderEntity.setReceiveTime(new Date());
        omsOrderEntity.setCommentTime(new Date());
        omsOrderEntity.setModifyTime(new Date());


        omsOrderItemEntity.setId(Math.toIntExact(id));
        omsOrderItemEntity.setOrderId(id);
        omsOrderItemEntity.setProductName("衣服");
        omsOrderItemEntity.setProductAttr("大小:" + size +",颜色:" + color);
        omsOrderItemEntity.setProductQuantity(Integer.valueOf(amount));

        omsOrderItemEntity.setProductPic("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567397649048&di=4933d7cedd59222011d2a73456c0de73&imgtype=0&src=http%3A%2F%2Fpic1.cxtuku.com%2F00%2F09%2F79%2Fb2949b414ece.jpg");

        orderSer.insertOrder(omsOrderEntity,omsOrderItemEntity);

        jsonObject.put("Res",true);
        return jsonObject;
    }
}
