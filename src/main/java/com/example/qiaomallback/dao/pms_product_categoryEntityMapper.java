package com.example.qiaomallback.dao;

import com.example.qiaomallback.entity.pms_product_categoryEntity;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
//商品信息
public interface pms_product_categoryEntityMapper {
    int deleteByPrimaryKey(Long id);

    int insert(pms_product_categoryEntity record);

    int insertSelective(pms_product_categoryEntity record);

    pms_product_categoryEntity selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(pms_product_categoryEntity record);

    int updateByPrimaryKeyWithBLOBs(pms_product_categoryEntity record);

    int updateByPrimaryKey(pms_product_categoryEntity record);
    @Select("Select * from pms_product_category")
    List<pms_product_categoryEntity> pmsselect();

}
