package com.admin.tool.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.admin.tool.entity.Blog;
import com.admin.tool.entity.User;

public interface BlogRepository extends JpaRepository<Blog, Integer>{

	List<Blog> findByUser(User user);
}
