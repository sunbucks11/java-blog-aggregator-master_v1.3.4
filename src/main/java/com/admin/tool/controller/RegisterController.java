package com.admin.tool.controller;

import java.util.Date;

import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.admin.tool.entity.User;
import com.admin.tool.security.SecurityUserDetailsService;
import com.admin.tool.service.AuditService;
import com.admin.tool.service.FieldService;
import com.admin.tool.service.UserService;

@Controller
@RequestMapping("/register")
public class RegisterController {

	@Autowired
	private UserService userService;

	@Autowired
	private FieldService fieldService;
	
	@Autowired
	private AuditService auditService;
	
	private static final Logger LOGGER = Logger.getLogger(RegisterController.class);

	String message = "";
	
	@ModelAttribute("user")
	public User constructUser() {
		return new User();
	}

	@RequestMapping
	public String showRegister(Model model) {
		model.addAttribute("fields", fieldService.findAll());
		return "user-register";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String doRegister(@Valid @ModelAttribute("user") User user, BindingResult result) {
		
		if(user.getName() == null || 
		   user.getEmail() == null ||
		   user.getPassword() == null ||
		   
		   user.getName().isEmpty() ||
		   user.getEmail().isEmpty() ||
		   user.getPassword().isEmpty()){
			
			message = "Error creating user : mandatory fields are missing";
			auditService.update(new Date(), "App", "localhost", "", message, "exclamation-red");
			LOGGER.info(message);
			return "redirect:/register.html?success=false";
		}
		
		
		if (result.hasErrors()) {
			message = "Error creating user";
			auditService.update(new Date(), "App", "localhost", "", message, "exclamation-red");
			return "user-register";
		}
		userService.save(user);
		message = "User " +  "has been created: " + user.getName() ;
		auditService.update(new Date(), "App", "localhost", user.getEmail(), message, "tick-circle");
		return "redirect:/register.html?success=true";
	}
	
	@RequestMapping("/available")
	@ResponseBody
	public String available(@RequestParam String username) {
		Boolean available = userService.findOne(username) == null;
		return available.toString();
	}

}
