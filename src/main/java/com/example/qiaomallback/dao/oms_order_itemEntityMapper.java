package com.example.qiaomallback.dao;

import com.example.qiaomallback.entity.oms_order_itemEntity;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface oms_order_itemEntityMapper {

    ArrayList<oms_order_itemEntity> selectById(Long id);

    int insert(oms_order_itemEntity record);

    int insertSelective(oms_order_itemEntity record);
}