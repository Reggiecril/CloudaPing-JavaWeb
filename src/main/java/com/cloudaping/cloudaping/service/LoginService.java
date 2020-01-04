package com.cloudaping.cloudaping.service;

import com.cloudaping.cloudaping.entity.User;

public interface LoginService {
    User save(User user);
    User update(User user);
    User findByEmail(String email);
    User findByUserId(String userId);
    void delete(String userId);
}
