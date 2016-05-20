package com.admin.tool.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.admin.tool.entity.Role;


public interface RoleRepository extends JpaRepository<Role, Integer>{

	Role findByName(String name);
}
