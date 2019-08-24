package com.example.qiaomallback.controller;

import com.example.qiaomallback.entity.User;
import com.example.qiaomallback.service.userServiceImp;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class UserCtl {
    @Autowired
    userServiceImp userServiceImp;

    @RequestMapping("/reg")
    public JSONObject reg(@RequestParam String username, String password) {
        JSONObject modelMap = new JSONObject();

        if (!"".equals(username) && !"".equals(password)) {
            User user = new User();
            user.setUsername(username);
            user.setPassword(password);
            int add = userServiceImp.add(user);
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
