package com.example.qiaomallback.controller;

import com.example.qiaomallback.service.pms_product_service;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class pms_product_categoryCtl {
    @Autowired
    pms_product_service pmsProductService;
    JSONObject json=new JSONObject();
    @RequestMapping("/goodcCategory")
    public JSONObject pms_product_categoryCtl(){
        JSONArray array=JSONArray.fromObject(pmsProductService.getlist());
        json.put("Res",true);
        json.put("Data",array);
        return json;
    }

}
