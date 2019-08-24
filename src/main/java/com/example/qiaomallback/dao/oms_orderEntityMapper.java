package com.example.qiaomallback.dao;

import com.example.qiaomallback.entity.oms_orderEntity;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface oms_orderEntityMapper {

    ArrayList<oms_orderEntity> selectAll();

    int deleteByPrimaryKey(Long id);

    int insert(oms_orderEntity record);

    int insertSelective(oms_orderEntity record);

    oms_orderEntity selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(oms_orderEntity record);

    int updateByPrimaryKey(oms_orderEntity record);
}