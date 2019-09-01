package com.example.qiaomallback.dao;

import com.example.qiaomallback.entity.testEntity;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface testEntityMapper {

    ArrayList<testEntity> selectAll(String name);

    int insert(testEntity record);

    int insertSelective(testEntity record);
}