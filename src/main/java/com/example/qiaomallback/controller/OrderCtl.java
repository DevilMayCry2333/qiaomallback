package com.example.qiaomallback.controller;

import com.example.qiaomallback.service.OrderSer;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
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
}
