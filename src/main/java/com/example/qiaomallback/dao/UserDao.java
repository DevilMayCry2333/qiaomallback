package com.example.qiaomallback.dao;

import com.example.qiaomallback.entity.User;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDao {
    @Select("SELECT * FROM regUser WHERE username= #{username} AND password= #{password}")
    User login(@Param("username") String username, @Param("password") String password);

//    int add(User user);
}
