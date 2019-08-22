package com.example.qiaomallback.service;

import com.example.qiaomallback.entity.User;

public interface userService {
    User  login(String username);
    int add(User user);
}
