package com.example.qiaomallback.controller;

import com.example.qiaomallback.entity.pms_productEntity;
import net.sf.json.JSONObject;

import com.example.qiaomallback.service.GoodsDetailSer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin(value = "*")

public class GoodsDetail {
    @Autowired
    GoodsDetailSer goodsDetailSer;

    @RequestMapping("/showGoodsDetail")
    public Object showGoodsDetail(@RequestParam("goodsId") String goodsId){

        JSONObject jsonObject = new JSONObject();
        jsonObject.put("Res",true);
        System.out.println(goodsDetailSer.goodsDetail(goodsId));
        pms_productEntity pmsEty = goodsDetailSer.goodsDetail(goodsId);

        System.out.println(pmsEty);

//        JSONObject goodsDetail = JSONObject.fromObject(pmsEty);
//        System.out.println(goodsDetail.get("id"));

//        jsonObject.put("goodInfo",goodsDetail);

        return pmsEty;

    }


}