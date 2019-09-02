package com.example.qiaomallback.dao;

import com.example.qiaomallback.entity.regUserEntity;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface regUserEntityMapper {

    @Select("SELECT * FROM regUser WHERE username= #{username} AND password= #{password}")
    regUserEntity login(@Param("username") String username, @Param("password") String password);

    int insert(regUserEntity record);

    int insertSelective(regUserEntity record);
}