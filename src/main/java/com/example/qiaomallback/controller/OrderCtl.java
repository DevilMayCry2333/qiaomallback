package com.example.qiaomallback.controller;

import com.example.qiaomallback.service.OrderSer;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin(value = "*")

public class OrderCtl {
    @Autowired
    OrderSer orderSer;
    JSONObject jsonObject = new JSONObject();


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
}
