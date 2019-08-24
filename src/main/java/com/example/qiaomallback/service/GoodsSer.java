package com.example.qiaomallback.service;

import com.example.qiaomallback.dao.pms_productEntityMapper;
import com.example.qiaomallback.dao.pms_product_categoryEntityMapper;
import com.example.qiaomallback.entity.goodsEntity;
import com.example.qiaomallback.entity.pms_productEntity;
import com.example.qiaomallback.entity.pms_product_categoryEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.Set;

@Service
public class GoodsSer {

    @Autowired
    pms_productEntityMapper productEntityMapper;

    @Autowired
    pms_product_categoryEntityMapper pmsProductCategoryEntityMapper;


    public pms_productEntity goodsDetail(String id){

        System.out.println(productEntityMapper.selectByPrimaryKey(Long.parseLong(id)).getName());

        return productEntityMapper.selectByPrimaryKey(Long.parseLong(id));
    }

    public ArrayList<pms_productEntity> AllGoods(){
        return productEntityMapper.selectPmsProduct();
    }

    public boolean EditGoods(pms_product_categoryEntity goodes){
        boolean flag =false;
        if(pmsProductCategoryEntityMapper.updateByPrimaryKeySelective(goodes) >  0)
            flag = true;
        return flag;
    }

}
