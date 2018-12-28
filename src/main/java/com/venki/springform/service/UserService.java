package com.venki.springform.service;

import com.venki.springform.model.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
}
