package com.example.qiaomallback.controller;

import com.example.qiaomallback.service.pms_product_service;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin(value = "*")

public class GoodsCategoryCtl {

    @Autowired
    pms_product_service pmsProductService;
    JSONObject json=new JSONObject();

    @RequestMapping("/goodsCategory")
    public JSONObject pms_product_categoryCtl(){
        JSONArray array=JSONArray.fromObject(pmsProductService.getlist());
        System.out.println(array.get(0));

        json.put("Res",true);
        json.put("Data",array);
        return json;
    }


}
