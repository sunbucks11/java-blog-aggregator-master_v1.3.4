package com.admin.tool.controller;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.admin.tool.service.ItemService;

@Controller
public class IndexController {

	@Autowired
	private ItemService itemService;

	@RequestMapping("/")
	public String home() {
		return "home";
	}

	@RequestMapping("/home")
	public String homePage() {

		if (hasRole("ROLE_ADMIN")) {
			return "index";
		}

		return "home";
	}

	@RequestMapping("/index")
	public String index(Model model) {
		model.addAttribute("items", itemService.getItems());
		return "index";
	}

	@RequestMapping("/UserManagement")
	public String userManagementIndex(Model model) {
		return "UserManagement";
	}

	@RequestMapping("/RolesManagement")
	public String rolesManagement(Model model) {
		return "RolesManagement";
	}

	@RequestMapping("/FieldsManagement")
	public String fieldsManagement(Model model) {
		return "FieldsManagement";
	}

	@RequestMapping("/DomainsManagement")
	public String domainsManagement(Model model) {
		return "DomainsManagement";
	}

	// More
	@RequestMapping("/api")
	public String api(Model model) {
		return "api";
	}

	@RequestMapping("/audit")
	public String audit(Model model) {
		return "audit";
	}

	@RequestMapping("/faq")
	public String faq(Model model) {
		return "faq";
	}

	@RequestMapping("/help")
	public String help(Model model) {
		return "help";
	}

	@RequestMapping("/settings")
	public String settings(Model model) {
		return "settings";
	}

	@RequestMapping("/tools")
	public String tools(Model model) {
		return "tools";
	}

	@RequestMapping("/profile")
	public String profile(Model model) {
		return "profile";
	}

	// Helper Methods
	private boolean hasRole(String role) {
		@SuppressWarnings("unchecked")
		Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext()
				.getAuthentication().getAuthorities();
		boolean hasRole = false;
		for (GrantedAuthority authority : authorities) {
			hasRole = authority.getAuthority().equals(role);
			if (hasRole) {
				break;
			}
		}
		return hasRole;
	}

}
