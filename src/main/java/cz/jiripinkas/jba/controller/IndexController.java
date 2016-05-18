package cz.jiripinkas.jba.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cz.jiripinkas.jba.service.ItemService;

@Controller
public class IndexController {
	
	@Autowired
	private ItemService itemService;

	@RequestMapping("/index")
	public String index(Model model) {
		model.addAttribute("items", itemService.getItems());
		return "index";
		//return "UserManagement";
	}
	
	
	@RequestMapping("/UserManagement")
	public String userManagementIndex(Model model) {
		//return "/UserManagement";
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
}
