package com.example.qiaomallback.controller;

import com.example.qiaomallback.dao.regUserEntityMapper;
import com.example.qiaomallback.entity.User;
import com.example.qiaomallback.entity.regUserEntity;
import com.example.qiaomallback.service.userServiceImp;
import com.example.qiaomallback.util.MD5;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


@RestController
@CrossOrigin(value = "*")
public class UserCtl {
    @Autowired
    userServiceImp userServiceImp;

//    @RequestMapping("/reg")
//    public JSONObject reg(@RequestParam String username, String password) {
//        JSONObject modelMap = new JSONObject();
//
//        if (!"".equals(username) && !"".equals(password)) {
//            User user = new User();
//            user.setUsername(username);
//            user.setPassword(password);
//            int add = userServiceImp.add(user);
//            if (add > 0) {
//                modelMap.put("success", true);
//
//            } else {
//                modelMap.put("success", false);
//                modelMap.put("errMsg", "注册失败");
//            }
//        } else {
//            modelMap.put("success", false);
//            modelMap.put("errMsg", "注册信息不能为空");
//        }
//        return modelMap;
//    }

    @RequestMapping("/register")
    public Object register(@RequestParam String username,@RequestParam String password,@RequestParam String Province,@RequestParam String City,@RequestParam String County, @RequestParam String Detail,@RequestParam String Tel){
        regUserEntity regUserEntity = new regUserEntity();
        regUserEntity.setUsername(username);
        regUserEntity.setPassword(MD5.getMD5String(password));
        regUserEntity.setProvince(Province);
        regUserEntity.setCity(City);
        regUserEntity.setCounty(County);
        regUserEntity.setTel(Tel);
        regUserEntity.setDetail(Detail);
        regUserEntity.setIslock("0");

        userServiceImp.register(regUserEntity);

        JSONObject jsonObject = new JSONObject();
        jsonObject.put("Res",true);
        jsonObject.put("Token",MD5.getMD5String(username + password));

        return jsonObject;
    }


    @RequestMapping("/login")
    public JSONObject login(@RequestParam String username, @RequestParam String password) {
        JSONObject modelMap = new JSONObject();
        regUserEntity user = userServiceImp.login(username,password);

        if (user != null) {
            if (!user.getUsername().equals(username)) {
                modelMap.put("Res", false);
                modelMap.put("errMsg", "用户名不存在请先注册");
            }
            if (user.getPassword().equals(MD5.getMD5String(password))) {
                modelMap.put("Res", true);
                modelMap.put("Token",MD5.getMD5String(username + password));
                modelMap.put("Info",user);

            } else {
                modelMap.put("Res", false);
                modelMap.put("errMsg", "密码或者账户不正确");
            }

        } else {
            modelMap.put("Res", false);
            modelMap.put("errMsg", "密码或者账户不正确");
        }
        return modelMap;
    }
}
