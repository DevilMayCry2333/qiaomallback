package com.example.qiaomallback.dao;

import com.example.qiaomallback.entity.pms_productEntity;
import org.springframework.stereotype.Repository;

@Repository
public interface pms_productEntityMapper {

    int deleteByPrimaryKey(Long id);

    int insert(pms_productEntity record);

    int insertSelective(pms_productEntity record);

    pms_productEntity selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(pms_productEntity record);

    int updateByPrimaryKeyWithBLOBs(pms_productEntity record);

    int updateByPrimaryKey(pms_productEntity record);
}