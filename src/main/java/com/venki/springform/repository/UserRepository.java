package com.venki.springform.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.venki.springform.model.User;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
