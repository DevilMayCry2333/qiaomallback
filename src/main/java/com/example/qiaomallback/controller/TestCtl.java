package com.example.qiaomallback.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestCtl {
    @RequestMapping("/")
    public String hello(){
        return "Success";
    }
}
