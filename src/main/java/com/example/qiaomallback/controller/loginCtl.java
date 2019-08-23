package com.example.qiaomallback.controller;

import com.example.qiaomallback.entity.User;
import com.example.qiaomallback.service.userServiceImp;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class loginCtl {
    @Autowired
    userServiceImp userServiceImp;
    @RequestMapping("/login")
    public JSONObject login(@RequestParam String username, @RequestParam String password) {
        JSONObject modelMap = new JSONObject();
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
