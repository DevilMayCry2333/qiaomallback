package com.example.qiaomallback.service;

import com.example.qiaomallback.dao.UserDao;
import com.example.qiaomallback.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class userServiceImp implements userService{
    @Autowired
    private UserDao userDao;

    @Override
    public User login(String username) {
        return userDao.login(username);
    }
    @Override
    public int add(User user){
        return userDao.add(user);
    }
}
