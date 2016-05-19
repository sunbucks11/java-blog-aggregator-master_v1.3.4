package cz.jiripinkas.jba.init;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import cz.jiripinkas.jba.entity.Blog;
import cz.jiripinkas.jba.entity.Field;
import cz.jiripinkas.jba.entity.Role;
import cz.jiripinkas.jba.entity.User;
import cz.jiripinkas.jba.repository.BlogRepository;
import cz.jiripinkas.jba.repository.FieldRepository;
import cz.jiripinkas.jba.repository.ItemRepository;
import cz.jiripinkas.jba.repository.RoleRepository;
import cz.jiripinkas.jba.repository.UserRepository;
import cz.jiripinkas.jba.service.BlogService;

@Component
public class InitDbService {

	@Autowired
	private RoleRepository roleRepository;

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private BlogRepository blogRepository;

	@Autowired
	private ItemRepository itemRepository;

	@Autowired
	private BlogService blogService;
	
	@Autowired
	private FieldRepository fieldRepository;

	public void init() {
		if (roleRepository.findByName("ROLE_ADMIN") == null) {
			Role roleUser = new Role();
			roleUser.setName("ROLE_USER");
			roleRepository.save(roleUser);

			Role roleAdmin = new Role();
			roleAdmin.setName("ROLE_ADMIN");
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
			fieldRepository.save(field1);
		
			Field field2 = new Field();
			field2.setName("email");
			field2.setComment("This field is for email address");
			fieldRepository.save(field2);
		
			Field field3 = new Field();
			field3.setName("password");
			field3.setComment("This field is for password");
			fieldRepository.save(field3);
			
			Field field4 = new Field();
			field4.setName("confirmPassword");
			field4.setComment("This field is for confirm password");
			fieldRepository.save(field4);
			
		}
	}
}
