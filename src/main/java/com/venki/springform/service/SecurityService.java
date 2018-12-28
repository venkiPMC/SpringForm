package com.venki.springform.service;

public interface SecurityService {
    String findLoggedInUsername();

    void autologin(String username, String password);
}
