package com.example.qiaomallback.service;

import com.example.qiaomallback.dao.pms_productEntityMapper;
import com.example.qiaomallback.entity.pms_productEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class GoodsDetailSer {

    @Autowired
    pms_productEntityMapper productEntityMapper;

    public pms_productEntity goodsDetail(String id){

        System.out.println(productEntityMapper.selectByPrimaryKey(Long.parseLong(id)).getName());

        return productEntityMapper.selectByPrimaryKey(Long.parseLong(id));
    }

}
