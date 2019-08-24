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

    @Autowired
    pms_product_service pms_product_service;


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

    @RequestMapping("/AddGoods")
    public JSONObject add(@RequestParam String name,@RequestParam String parent_id,@RequestParam String level,@RequestParam String product_count,@RequestParam String product_unit,@RequestParam String nav_status,@RequestParam String show_status,@RequestParam String sort,@RequestParam String icon,@RequestParam String keywords,@RequestParam String description) {
//        Map<String, Object> modelMap = new HashMap<>();
//        JSONObject json=new JSONObject();
//        int add = pms_product_service.insert(pms_product_categoryEntity);
        JSONObject json = new JSONObject();
        pms_product_categoryEntity pmsProductEntity = new pms_product_categoryEntity();
        pmsProductEntity.setName(name);
        pmsProductEntity.setParentId(Long.valueOf(parent_id));
        pmsProductEntity.setLevel(Integer.valueOf(level));
        pmsProductEntity.setProductCount(Integer.valueOf(product_count));
        pmsProductEntity.setProductUnit(product_unit);
        pmsProductEntity.setNavStatus(Integer.valueOf(nav_status));
        pmsProductEntity.setShowStatus(Integer.valueOf((show_status)));
        pmsProductEntity.setSort(Integer.valueOf(sort));
        pmsProductEntity.setIcon(icon);
        pmsProductEntity.setKeywords(keywords);
        pmsProductEntity.setDescription(description);
        int add = goodsSer.insert(pmsProductEntity);
        if (add > 0) {
            json.put("success", true);

        } else {
            json.put("success", false);
            json.put("errMsg", "添加失败");
        }
        return json;
    }

    @RequestMapping("/EditGoods")
    JSONObject edit(@RequestParam String id,@RequestParam String name,@RequestParam String parent_id,@RequestParam String level,@RequestParam String product_count,@RequestParam String product_unit,@RequestParam String nav_status,@RequestParam String show_status,@RequestParam String sort,@RequestParam String icon,@RequestParam String keywords,@RequestParam String description){
        JSONObject json = new JSONObject();
        pms_product_categoryEntity pmsProductEntity = new pms_product_categoryEntity();
        pmsProductEntity.setId(Long.valueOf(id));
        pmsProductEntity.setName(name);
        pmsProductEntity.setParentId(Long.valueOf(parent_id));
        pmsProductEntity.setLevel(Integer.valueOf(level));
        pmsProductEntity.setProductCount(Integer.valueOf(product_count));
        pmsProductEntity.setProductUnit(product_unit);
        pmsProductEntity.setNavStatus(Integer.valueOf(nav_status));
        pmsProductEntity.setShowStatus(Integer.valueOf((show_status)));
        pmsProductEntity.setSort(Integer.valueOf(sort));
        pmsProductEntity.setIcon(icon);
        pmsProductEntity.setKeywords(keywords);
        pmsProductEntity.setDescription(description);
        if(goodsSer.EditGoods(pmsProductEntity) == true){
            json.put("success",true);
        }else {
            json.put("success",false);
            json.put("errMsg","添加失败");
        }
        return  json;
    }


}
