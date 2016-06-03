package com.admin.tool.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.admin.tool.entity.User;
import com.admin.tool.service.UserService;



@Controller
@RequestMapping("/ResetController")
public class ResetController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(method = RequestMethod.POST)
	public String indexPost(Model model, HttpServletRequest request, HttpServletResponse response) {
	  TwoFactorAuthController.isResetTwoFactorAuth = true; 
	// TwoFactorAuthController.isVerificationRequired = true; 
	 // TwoFactorAuthController.TWO_FACTOR_AUTHENTICATION_INT = false; 	
	  
	  Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	  String userName = auth.getName();
	  
	  User user = userService.findOne(userName);
	  
	  user.setResetTwoFactorAuth(true);
	  user.setVerified(false);
	  user.setTwoFactorAuthInitialised(false);
	  userService.save(user);
	  
	  String backToLogin = request.getParameter("back-login");
	  ModelAndView modelAndView = new ModelAndView("reset");
	  modelAndView.getModelMap().put("isVerifiedError", true);
	  
		if (backToLogin != null)
		{
			return "redirect:/login.html";
		}
	  
		return "reset";
	}	
}
