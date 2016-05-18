package cz.jiripinkas.jba.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cz.jiripinkas.jba.entity.Role;
import cz.jiripinkas.jba.entity.User;
import cz.jiripinkas.jba.repository.RoleRepository;

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
	
	
	public List<Role> getRoles(){	
		return roleRepository.findAll();
	}
}
