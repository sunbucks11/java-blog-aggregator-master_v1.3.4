package com.admin.tool.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.admin.tool.entity.Blog;
import com.admin.tool.entity.Item;
import com.admin.tool.entity.Role;
import com.admin.tool.entity.User;
import com.admin.tool.repository.BlogRepository;
import com.admin.tool.repository.ItemRepository;
import com.admin.tool.repository.RoleRepository;
import com.admin.tool.repository.UserRepository;

@Service
@Transactional
public class UserService {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private RoleRepository roleRepository;
	
	@Autowired
	private BlogRepository blogRepository;
	
	@Autowired
	private ItemRepository itemRepository;

	public List<User> findAll() {
		return userRepository.findAll();
	}

	public User findOne(int id) {
		return userRepository.findOne(id);
	}
	
	@Transactional
	public User findOneWithBlogs(int id) {
		User user = findOne(id);
		List<Blog> blogs = blogRepository.findByUser(user);
		for (Blog blog : blogs) {
			List<Item> items = itemRepository.findByBlog(blog, new PageRequest(0, 10, Direction.DESC, "publishedDate"));
			blog.setItems(items);
		}
		user.setBlogs(blogs);
		return user;
	}

	public void save(User user) {
		/*
		user.setEnabled(true);
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		user.setPassword(encoder.encode(user.getPassword()));
		*/
		userRepository.save(user);
	}

	public User findOneWithBlogs(String name) {
		User user = userRepository.findByName(name);
		return findOneWithBlogs(user.getId());
	}

	public void delete(int id) {
		userRepository.delete(id);
	}

	public User findOne(String username) {
		return userRepository.findByName(username);
	}
	
	
	public User findByEmail(String email) {
		return userRepository.findByEmail(email);
	}
	
	
	public boolean isUserExist(User user) {
		return findOne(user.getName())!=null;
	}
	
    // Find number of users with a given role	
	public int findNumOfUsersWithRole(String roleName){
		List<User> users = new ArrayList<User>();
		List<Role> roles = new ArrayList<Role>();
		
		users = findAll();
		int numberOfUsers = 0;
		int i = 0;
		
		for (User user : users) {
			
			roles = user.getRoles();
			
			for (Role role : roles) {
				if (role.getName().equals(roleName)){
					numberOfUsers++;
				}
			}

			i++;
		}
		return numberOfUsers;
	}
	
}
