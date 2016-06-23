package com.admin.tool.controller;

import java.security.Principal;
import java.util.Base64;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.admin.tool.entity.UploadedFile;
import com.admin.tool.entity.User;
import com.admin.tool.service.FileUploadService;


@Controller
public class EditMemberController {
	
	  @Autowired
	  private FileUploadService uploadService;
	  
	  
 
	 // @RequestMa+pping(value = "/displayProfileImage", method = RequestMethod.GET)
	  @RequestMapping(value = "/edit-member", method = RequestMethod.GET)
	  @ResponseStatus(value = HttpStatus.OK)
	  public String ListImages(UploadedFile uploadedFile, BindingResult result, ModelMap model, Principal principal) throws Exception {
		  UploadedFile dataFile = uploadService.getFile(1);
		  byte[] encodeBase64 = Base64.getEncoder().encode(dataFile.getImg_data());
		  String base64Encoded = new String(encodeBase64, "UTF-8");
		  model.put("image", base64Encoded);
		  
		  return "edit-member";
		  //return "UserManagement";
	  }
	  


	  
	 /* 
	  @RequestMapping(value = "/getTags", method = RequestMethod.POST) 
	  @ResponseBody  public  User getTags(@RequestParam("tagName") String
	  tagName) 
	  {
	          User user=new User();
	          //Write a method to access the data from DB
	          user.setName("test");
	          return user;  
	   }
	  */
	  
}
