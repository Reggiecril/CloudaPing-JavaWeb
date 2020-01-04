package com.cloudaping.cloudaping.service.impl;

import com.cloudaping.cloudaping.dao.LoginRepository;
import com.cloudaping.cloudaping.entity.User;
import com.cloudaping.cloudaping.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
@Service
public class LoginServiceImpl implements LoginService {
    @Autowired
    private LoginRepository loginRepository;
    @Override
    @Transactional
    public User save(User user) {
        return loginRepository.save(user);
    }

    @Override
    @Transactional
    public User update(User user) {
        return loginRepository.save(user);
    }

    @Override
    public User findByEmail(String email) {
        return loginRepository.findByEmail(email);
    }

    @Override
    public User findByUserId(String userId) {
        return loginRepository.findByUserId(userId);
    }


    @Override
    @Transactional
    public void delete(String userId) {
        loginRepository.deleteByUserId(userId);
    }
}
