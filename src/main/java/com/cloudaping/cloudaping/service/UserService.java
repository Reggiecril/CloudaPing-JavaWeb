package com.cloudaping.cloudaping.service;

import com.cloudaping.cloudaping.entity.Address;
import com.cloudaping.cloudaping.entity.Payment;
import com.cloudaping.cloudaping.entity.User;

import java.util.List;

public interface UserService {
    User save(User user);
    User update(User user);
    User findByEmail(String email);
    User findByUserId(String userId);
    void delete(String userId);
    List<Address> findAddressByUserId(String userId);
    Address saveAddress(Address address);
    List<Payment> findPaymentByUserId(String userId)
}
