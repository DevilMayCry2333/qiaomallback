package com.example.qiaomallback.dao;

import com.example.qiaomallback.entity.pms_productEntity;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface pms_productEntityMapper {

    pms_productEntity selectByName(String name);

    ArrayList<pms_productEntity> selectPmsProduct();

    int deleteByPrimaryKey(Long id);

    int insert(pms_productEntity record);

    int insertSelective(pms_productEntity record);

    pms_productEntity selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(pms_productEntity record);

    int updateByPrimaryKeyWithBLOBs(pms_productEntity record);

    int updateByPrimaryKey(pms_productEntity record);
}
