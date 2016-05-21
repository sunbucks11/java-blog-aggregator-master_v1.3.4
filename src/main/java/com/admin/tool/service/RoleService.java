package com.admin.tool.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.admin.tool.entity.Role;
import com.admin.tool.entity.User;
import com.admin.tool.repository.RoleRepository;

@Service
@Transactional
public class RoleService {

	@Autowired
	private RoleRepository roleRepository;

	@Autowired
	private UserService userService;

	public List<String> findRolesById(int id) {
		User user = userService.findOne(id);
		List<Role> roles = new ArrayList<Role>();
		List<String> roleNames = new ArrayList<String>();
		roles = user.getRoles();

		for (Role role : roles) {
			roleNames.add(role.getName());
		}
		return roleNames;
	}

	
	public void delete(int id) {
		roleRepository.delete(id);
	}
	
	
	public Role findOne(int id) {
		return roleRepository.findOne(id);
	}
	
	
	public Role findOne(String roleName) {
		return roleRepository.findByName(roleName);
	}
	
	public List<Role> findAll() {
		return roleRepository.findAll();
	}

	public boolean isRoleExist(Role role) {
		return findOne(role.getName())!=null;
	}

	public void save(Role newRole) {
		roleRepository.save(newRole);
	}
}
