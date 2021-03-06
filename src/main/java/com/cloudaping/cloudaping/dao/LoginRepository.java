package com.cloudaping.cloudaping.dao;

import com.cloudaping.cloudaping.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LoginRepository extends JpaRepository<User, String> {
    User findByEmail(String email);
    User findByUserId(String userId);
    void deleteByUserId(String userId);

}
