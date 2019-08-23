package com.example.qiaomallback.controller;

import com.example.qiaomallback.entity.User;
import com.example.qiaomallback.service.userService;
import com.example.qiaomallback.service.userServiceImp;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
public class registerCtl {
    @Autowired
    userServiceImp userServiceImp;
    userService userService;
    @RequestMapping("/reg")
    public JSONObject reg(@RequestParam String username, String password) {
        JSONObject modelMap = new JSONObject();

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
