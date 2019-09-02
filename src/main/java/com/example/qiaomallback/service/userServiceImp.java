package com.example.qiaomallback.service;

import com.example.qiaomallback.dao.UserDao;
import com.example.qiaomallback.dao.regUserEntityMapper;
import com.example.qiaomallback.entity.User;
import com.example.qiaomallback.entity.regUserEntity;
import com.example.qiaomallback.util.MD5;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class userServiceImp{
    @Autowired
    private regUserEntityMapper regUserEntityMapper;

    public regUserEntity login(String username,String password) {
        System.out.println(MD5.getMD5String(password));

        return regUserEntityMapper.login(username,MD5.getMD5String(password));
    }

    public int register(regUserEntity regUserEntity){
        return regUserEntityMapper.insert(regUserEntity);
    }


//    public int add(User user){
//        return userDao.add(user);
//    }
}
