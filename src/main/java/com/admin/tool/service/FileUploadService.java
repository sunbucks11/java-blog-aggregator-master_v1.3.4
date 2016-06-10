
package com.admin.tool.service;

import java.util.List;

import com.admin.tool.repository.FileUploadRepository;
import com.admin.tool.entity.UploadedFile;
//import com.admin.tool.repository.FileUploadService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class FileUploadService{

  @Autowired
  private FileUploadRepository fileUploadRepository;

  //@Override
  @Transactional(readOnly = true)
  public List<UploadedFile> getImages() {

	  return fileUploadRepository.findAll();
  }


  //@Override
  @Transactional(readOnly = true)
  public UploadedFile getFile(Integer id) {
    return fileUploadRepository.findOne(id); 
  }

  //@Override
  @Transactional
  public UploadedFile saveFile(UploadedFile uploadedFile) {
    return fileUploadRepository.save(uploadedFile); 

  }

}
