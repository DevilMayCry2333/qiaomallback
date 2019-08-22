package com.example.qiaomallback.dao;

import com.example.qiaomallback.entity.User;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDao {
    User login(String username);
    int add(User user);
}
