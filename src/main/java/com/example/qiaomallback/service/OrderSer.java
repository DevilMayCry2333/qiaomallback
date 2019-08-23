package com.example.qiaomallback.service;

import com.example.qiaomallback.dao.oms_orderEntityMapper;
import com.example.qiaomallback.entity.oms_orderEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class OrderSer {
    @Autowired
    oms_orderEntityMapper orderEntityMapper;
    public ArrayList<oms_orderEntity> selectAllOrder(){
        return orderEntityMapper.selectAll();
    }

    public int delOrder(Long id){
        oms_orderEntity omsOrderEntity = new oms_orderEntity();
        omsOrderEntity.setId(id);
        omsOrderEntity.setDeleteStatus(1);
        return orderEntityMapper.updateByPrimaryKeySelective(omsOrderEntity);


    }

}
