package com.example.qiaomallback.controller;

import com.example.qiaomallback.service.TestSer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin(value = "*")
public class TestCtl {
    @Autowired
    TestSer testSer;

    @RequestMapping("/")
    public String hello(){
        return "Success";
    }

    @RequestMapping("/BuyFrontDetail")
    public Object BuyFrontDetail(@RequestParam("name") String name){
        return testSer.selectAll(name);

    }
}
