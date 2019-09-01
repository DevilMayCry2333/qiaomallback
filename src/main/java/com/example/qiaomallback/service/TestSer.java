package com.example.qiaomallback.service;

import com.example.qiaomallback.dao.testEntityMapper;
import com.example.qiaomallback.entity.testEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class TestSer {
    @Autowired
    testEntityMapper testEntityMapper;

    public ArrayList<testEntity> selectAll(String name){
        return testEntityMapper.selectAll(name);

    }
}
