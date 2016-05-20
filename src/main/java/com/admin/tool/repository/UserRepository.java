package com.admin.tool.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.admin.tool.entity.User;

public interface UserRepository extends JpaRepository<User, Integer>{

	User findByName(String name);
	
	User findByEmail(String email);
}
