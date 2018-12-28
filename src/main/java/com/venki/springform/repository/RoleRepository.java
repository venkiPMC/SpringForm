package com.venki.springform.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.venki.springform.model.Role;

public interface RoleRepository extends JpaRepository<Role, Long>{
}
