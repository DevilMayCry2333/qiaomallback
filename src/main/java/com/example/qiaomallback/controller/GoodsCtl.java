package com.example.qiaomallback.controller;

import com.example.qiaomallback.entity.pms_productEntity;
import com.example.qiaomallback.entity.pms_product_categoryEntity;
import com.example.qiaomallback.service.GoodsSer;
import com.example.qiaomallback.service.pms_product_service;
import net.sf.json.JSON;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.*;

@RestController
@CrossOrigin(value = "*")

public class GoodsCtl {
    @Autowired
    GoodsSer goodsSer;
    JSONObject jsonObject = new JSONObject();


    @RequestMapping("/showGoodsDetail")
    public Object showGoodsDetail(@RequestParam("goodsId") String goodsId){

        jsonObject.put("Res",true);
        System.out.println(goodsSer.goodsDetail(goodsId));
        pms_productEntity pmsEty = goodsSer.goodsDetail(goodsId);

        System.out.println(pmsEty);

        JSONArray jsonArray = new JSONArray();
        jsonArray.add(pmsEty);

        jsonObject.put("tableData",jsonArray);


//        JSONObject goodsDetail = JSONObject.fromObject(pmsEty);
//        System.out.println(goodsDetail.get("id"));

//        jsonObject.put("goodInfo",goodsDetail);

        return jsonObject;

    }

    @RequestMapping("/AllGoods")
    public Object showAllGoods(){
        JSONArray jsonArray = new JSONArray();
        ArrayList<pms_productEntity> pmsProductEntities = goodsSer.AllGoods();
        jsonArray.add(pmsProductEntities);
        jsonObject.put("Res",true);
        jsonObject.put("tableData",pmsProductEntities);

        return jsonObject;

    }
    pms_product_service pms_product_service;
    public JSONObject add(@RequestBody pms_product_categoryEntity pms_product_categoryEntity) {
        Map<String, Object> modelMap = new HashMap<>();
        JSONObject json=new JSONObject();
        int add = pms_product_service.insert(pms_product_categoryEntity);
        if (add > 0) {
            json.put("success", true);

        } else {
            json.put("success", false);
            json.put("errMsg", "添加失败");
        }
        return json;
    }


}
