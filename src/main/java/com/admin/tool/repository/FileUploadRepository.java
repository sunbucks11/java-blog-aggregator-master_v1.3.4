package com.admin.tool.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.admin.tool.entity.UploadedFile;
import com.admin.tool.entity.User;


public interface FileUploadRepository extends JpaRepository<UploadedFile, Integer> {
	   List<UploadedFile> findByUser(User user);
	   UploadedFile findById(Integer id);
	}
