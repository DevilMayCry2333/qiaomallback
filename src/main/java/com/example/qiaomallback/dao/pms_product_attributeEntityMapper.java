package com.example.qiaomallback.dao;

import com.example.qiaomallback.entity.pms_product_attributeEntity;
import org.springframework.stereotype.Repository;

@Repository
//商品属性
public interface pms_product_attributeEntityMapper {
    int deleteByPrimaryKey(Long id);

    int insert(pms_product_attributeEntity record);

    int insertSelective(pms_product_attributeEntity record);

    pms_product_attributeEntity selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(pms_product_attributeEntity record);

    int updateByPrimaryKey(pms_product_attributeEntity record);
}
