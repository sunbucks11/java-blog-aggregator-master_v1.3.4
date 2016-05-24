package com.admin.tool.init;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import com.admin.tool.entity.Blog;
import com.admin.tool.entity.Field;
import com.admin.tool.entity.Role;
import com.admin.tool.entity.User;
import com.admin.tool.repository.BlogRepository;
import com.admin.tool.repository.FieldRepository;
import com.admin.tool.repository.RoleRepository;
import com.admin.tool.repository.UserRepository;
import com.admin.tool.service.BlogService;

@Component
public class InitDbService {

	@Autowired
	private RoleRepository roleRepository;

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private BlogRepository blogRepository;

	@Autowired
	private BlogService blogService;

	@Autowired
	private FieldRepository fieldRepository;

	public void init() {
		if (roleRepository.findByName("ROLE_ADMIN") == null) {
			Role roleUser = new Role();
			roleUser.setName("ROLE_USER");
			roleUser.setSettings("Ordinary users with limited privilages");
			roleUser.setCreatedDate(new Date());
			roleUser.setBackColor("#FFAB23");
			roleRepository.save(roleUser);

			Role roleAdmin = new Role();
			roleAdmin.setName("ROLE_ADMIN");
			roleAdmin.setSettings("People who care about role and member management");
			roleAdmin.setCreatedDate(new Date());
			roleAdmin.setBackColor("#D00200");
			roleRepository.save(roleAdmin);

			User userAdmin = new User();
			userAdmin.setEnabled(true);
			userAdmin.setName("admin");
			userAdmin.setCreatedDate(new Date());
			BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
			userAdmin.setPassword(encoder.encode("admin"));
			userAdmin.setEmail("admin@test.com");
			List<Role> roles = new ArrayList<Role>();
			roles.add(roleAdmin);
			roles.add(roleUser);
			userAdmin.setRoles(roles);
			userRepository.save(userAdmin);

			Blog blogJavavids = new Blog();
			blogJavavids.setName("JavaVids");
			blogJavavids.setUrl("http://feeds.feedburner.com/javavids?format=xml");
			blogJavavids.setUser(userAdmin);
			blogRepository.save(blogJavavids);
			blogService.saveItems(blogJavavids);

			Field field1 = new Field();
			field1.setName("name");
			field1.setComment("This field is for first name");
			field1.setEnabled("true");
			field1.setCreatedDate(new Date());
			fieldRepository.save(field1);

		
			Field field2 = new Field();
			field2.setName("email");
			field2.setComment("This field is for email address");
			field2.setEnabled("true");
			field2.setCreatedDate(new Date());
			fieldRepository.save(field2);
			

			Field field3 = new Field();
			field3.setName("password");
			field3.setComment("This field is for password");
			field3.setEnabled("true");
			field3.setCreatedDate(new Date());
			fieldRepository.save(field3);
			

			Field field4 = new Field();
			field4.setName("confirmPassword");
			field4.setComment("This field is for confirm password");
			field4.setEnabled("true");
			field4.setCreatedDate(new Date());
			fieldRepository.save(field4);

		}
	}
}
