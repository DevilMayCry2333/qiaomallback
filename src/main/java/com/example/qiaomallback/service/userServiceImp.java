package com.example.qiaomallback.service;

import com.example.qiaomallback.dao.UserDao;
import com.example.qiaomallback.entity.User;
import com.example.qiaomallback.util.MD5;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class userServiceImp implements userService{
    @Autowired
    private UserDao userDao;

    @Override
    public User login(String username,String password) {
        System.out.println(MD5.getMD5String(password));

        return userDao.login(username,MD5.getMD5String(password));
    }

//    @Override
//    public int add(User user){
//        return userDao.add(user);
//    }
}
