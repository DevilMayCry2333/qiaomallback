package com.example.qiaomallback.controller;

import com.example.qiaomallback.entity.pms_productEntity;
import com.example.qiaomallback.service.GoodsSer;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

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


}