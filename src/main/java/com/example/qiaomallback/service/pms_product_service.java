package com.example.qiaomallback.service;

import com.example.qiaomallback.dao.pms_product_categoryEntityMapper;
import com.example.qiaomallback.entity.pms_product_categoryEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class pms_product_service {
    @Autowired
    private pms_product_categoryEntityMapper pms;
    public List<pms_product_categoryEntity> getlist(){
        return pms.pmsselect();
    }
    public int insert(pms_product_categoryEntity pms_product_categoryEntity){
        return pms.insert(pms_product_categoryEntity);
    }

}

