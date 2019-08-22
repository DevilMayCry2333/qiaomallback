package com.example.qiaomallback.controller;

import com.example.qiaomallback.entity.User;
import com.example.qiaomallback.service.userService;
import com.example.qiaomallback.service.userServiceImp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.Map;

@Controller
public class loginCtl {
    @Autowired
    userServiceImp userServiceImp;
    @PostMapping("/login")
    public Map<String, Object> login(@RequestParam String username, @RequestParam String password) {
        Map<String, Object> modelMap = new HashMap<>();
        User user = userServiceImp.login(username);
        if (user != null) {
            if (!user.getUsername().equals(username)) {
                modelMap.put("success", false);
                modelMap.put("errMsg", "用户名不存在请先注册");
            }
            if (user.getPassword().equals(password)) {
                modelMap.put("success", true);
                modelMap.put("user", user);

            } else {
                modelMap.put("success", false);
                modelMap.put("errMsg", "密码或者账户不正确");
            }

        } else {
            modelMap.put("success", false);
            modelMap.put("errMsg", "密码或者账户不正确");
        }
        return modelMap;
    }
}
