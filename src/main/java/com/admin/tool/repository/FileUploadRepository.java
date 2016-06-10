package com.admin.tool.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.admin.tool.entity.Blog;
import com.admin.tool.entity.UploadedFile;
import com.admin.tool.entity.User;


public interface FileUploadRepository extends JpaRepository<UploadedFile, Integer> {
  
	  // List<UploadedFile> findById(Integer id);
	   List<UploadedFile> findByUser(User user);
	   UploadedFile findById(Integer id);
	    
	  //List<UploadedFile> listFiles();
	  //UploadedFile getFile(Long id);
	  //UploadedFile saveFile(UploadedFile uploadedFile);
	}





/*
public interface FileUploadDao {

	  List<UploadedFile> listFiles();

	  UploadedFile getFile(Long id);

	  UploadedFile saveFile(UploadedFile uploadedFile);

	}
*/
