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
public class registerCtl {
    @Autowired
    userServiceImp userServiceImp;
    userService userService;
    @PostMapping("/reg")
    public Map<String, Object> reg(@RequestParam String username, String password) {
        Map<String, Object> modelMap = new HashMap<>();
        if (!"".equals(username) && !"".equals(password)) {
            User user = new User();
            user.setUsername(username);
            user.setPassword(password);
            int add = userService.add(user);
            if (add > 0) {
                modelMap.put("success", true);

            } else {
                modelMap.put("success", false);
                modelMap.put("errMsg", "注册失败");
            }
        } else {
            modelMap.put("success", false);
            modelMap.put("errMsg", "注册信息不能为空");
        }
        return modelMap;
    }

}
