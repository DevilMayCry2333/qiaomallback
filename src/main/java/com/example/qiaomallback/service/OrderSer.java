package com.example.qiaomallback.service;

import com.example.qiaomallback.dao.oms_orderEntityMapper;
import com.example.qiaomallback.dao.oms_order_itemEntityMapper;
import com.example.qiaomallback.entity.oms_orderEntity;
import com.example.qiaomallback.entity.oms_order_itemEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class OrderSer {
    @Autowired
    oms_orderEntityMapper orderEntityMapper;
    @Autowired
    oms_order_itemEntityMapper omsOrderItemEntityMapper;

    public ArrayList<oms_orderEntity> selectAllOrder(){
        ArrayList<oms_orderEntity> omsOrderEntities =orderEntityMapper.selectAll();
        for (int i = 0; i < omsOrderEntities.size(); i++) {
            if(omsOrderEntities.get(i).getDeleteStatus()==1){
                omsOrderEntities.remove(i);
            }
        }
        return omsOrderEntities;
    }
    public ArrayList<oms_orderEntity> searchByUserName(String memberUsername){
        ArrayList<oms_orderEntity> omsOrderEntities =orderEntityMapper.searchByUserName(memberUsername);
        return omsOrderEntities;
    }
    public ArrayList<oms_orderEntity> searchById(Long id){
        ArrayList<oms_orderEntity> omsOrderEntities =orderEntityMapper.searchById(id);
        return omsOrderEntities;
    }
    public ArrayList<oms_orderEntity> searchBySn(String sn){
        ArrayList<oms_orderEntity> omsOrderEntities =orderEntityMapper.searchBySn(sn);
        return omsOrderEntities;
    }
    public ArrayList<oms_orderEntity> searchByTime(String time){
        ArrayList<oms_orderEntity> omsOrderEntities =orderEntityMapper.searchByTime(time);
        return omsOrderEntities;
    }
    public int delOrder(Long id){
        oms_orderEntity omsOrderEntity = new oms_orderEntity();
        omsOrderEntity.setId(id);
        omsOrderEntity.setDeleteStatus(1);
        return orderEntityMapper.updateByPrimaryKeySelective(omsOrderEntity);


    }

    public oms_orderEntity OrderBasicDetail(String id){
        return orderEntityMapper.selectByPrimaryKey(Long.valueOf(id));
    }

    public ArrayList<oms_order_itemEntity> orderItemById(Long id){
        return omsOrderItemEntityMapper.selectById(id);
    }

}
