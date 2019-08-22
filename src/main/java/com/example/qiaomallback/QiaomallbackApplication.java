package com.example.qiaomallback;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.example.qiaomallback.dao")
public class QiaomallbackApplication {

    public static void main(String[] args) {
        SpringApplication.run(QiaomallbackApplication.class, args);
    }

}
