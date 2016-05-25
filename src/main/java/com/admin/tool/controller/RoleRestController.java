package com.admin.tool.controller;

import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.hibernate.HibernateException;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriComponentsBuilder;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;



import com.admin.tool.entity.Role;
import com.admin.tool.entity.User;
import com.admin.tool.repository.UserRepository;
import com.admin.tool.service.RoleService;
import com.admin.tool.service.UserService;

@RestController
public class RoleRestController {

    @PersistenceContext
    private EntityManager em;
	
	@Autowired
	private RoleService roleService;

	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private UserService userService;
	
	private static SessionFactory factory; 
	
    //-------------------Retrieve All Roles--------------------------------------------------------
	   
	@RequestMapping(value = "/role", method = RequestMethod.GET)
    public ResponseEntity<String> listAllRoles(Principal principal) {
    	
    	// Find all users
    	List<Role> roles = roleService.findAll();
    	//List<String> rolesString = new ArrayList<String>();
    	SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
    	JSONArray resultJson = new JSONArray();
    	int numOfUsersWithRole = 0;

    	for(Role role :roles){
    		//roles = roleService.findRolesById(role.getId());
    		JSONObject roleJSON = new JSONObject();   	

    		numOfUsersWithRole = userService.findNumOfUsersWithRole(role.getName());
	
        	try {
        		roleJSON.put("id",role.getId());
        		roleJSON.put("name",role.getName());
        		roleJSON.put("settings",role.getSettings());
        		roleJSON.put("member", numOfUsersWithRole);
        		roleJSON.put("backcolor", role.getBackColor());
        		//userJSON.put("roles",roles); 
        		Date date = role.getCreatedDate();
        		
        		if (date != null){
        			roleJSON.put("createdDate",dateFormat.format(date)); 
        		}
             
        		date = role.getModifiedDate();
        		
        		if(date != null ){
        			date = role.getModifiedDate();
        			roleJSON.put("lastLoginDate",dateFormat.format(date)); 
        		}
        		
            } catch (JSONException e) {
                e.printStackTrace();
            }
        	resultJson.put(roleJSON);
    	}
    	
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);
        return new ResponseEntity<String>(resultJson.toString(), headers, HttpStatus.OK);
    }
	


	
    //-------------------Create a User--------------------------------------------------------
    
	@RequestMapping(value = "/role/", method = RequestMethod.POST)
    public ResponseEntity<Void> createUser(@RequestBody Role role,    UriComponentsBuilder ucBuilder) {
        System.out.println("Creating Role " + role.getName());
 
        //if (userService.isUserExist(user) || userRepository.findOne(user.getId()) != null) {
        if (roleService.isRoleExist(role)) {
            System.out.println("A Role with name " + role.getName() + " already exist");
            return new ResponseEntity<Void>(HttpStatus.CONFLICT);
        }

		Role newRole = new Role();
		newRole.setName(role.getName());
		newRole.setSettings(role.getSettings());
		newRole.setCreatedDate(new Date());
		newRole.setBackColor(role.getBackColor());
		
		//String backcolor = role.getBackColor();

	   //roleRepository.save(newRole);
		roleService.save(newRole);
		
        HttpHeaders headers = new HttpHeaders();
        headers.setLocation(ucBuilder.path("/user/{id}").buildAndExpand(role.getId()).toUri());
        return new ResponseEntity<Void>(headers, HttpStatus.CREATED);
    }
	
	
	
	
	
    //------------------- Delete a User --------------------------------------------------------
    
    @RequestMapping(value = "/role/{id}", method = RequestMethod.DELETE)
    public ResponseEntity<Role> deleteRole(@PathVariable("id") int id) {
        System.out.println("Fetching & Deleting Role with id " + id);
 
        Role role = roleService.findOne(id);
        if (role == null) {
            System.out.println("Unable to delete. Role with id " + id + " not found");
            return new ResponseEntity<Role>(HttpStatus.NOT_FOUND);
        }
 
        roleService.delete(id);;
        return new ResponseEntity<Role>(HttpStatus.NO_CONTENT);
    }
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
    //------------------- Update a User --------------------------------------------------------
    
	@RequestMapping(value = "/role/{id}", method = RequestMethod.PUT)
	public ResponseEntity<String> updateUser(@PathVariable("id") int id, @RequestBody User user) {
   // public ResponseEntity<User> updateUser(@PathVariable("id") int id, @RequestBody User user) {
        System.out.println("Updating User " + id);
         
        User currentUser = userService.findOne(id); 
  
        if (currentUser==null) {
            System.out.println("User with id " + id + " not found");
            return new ResponseEntity<String>(HttpStatus.NOT_FOUND);
            //return new ResponseEntity<User>(HttpStatus.NOT_FOUND);
        }
       
        List<String> roles = new ArrayList<String>();
        roles = roleService.findRolesById(user.getId());
 
        for(String role : roles) {
			if(role.contains("ROLE_ADMIN")){
				System.out.println("Uer admin cannot be edited ");
				return new ResponseEntity<String>(HttpStatus.NOT_FOUND);
			}
		}
              
        // THIS IS JUST FOR TEST
        if(user.getRoles() == null || user.getRoles().isEmpty())
        {
        	List<Role> useRroles = new ArrayList<Role>();
        	useRroles.add(roleService.findAll().get(0));
    		user.setRoles(useRroles);
        }
        
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		
		user.setPassword(encoder.encode(user.getPassword())); 
		//user.setPassword(encoder.encode("admin")); 	
		//user.setRoles(roleService.getRoles());
		user.setEnabled(true);
        userRepository.save(user);
           
       
        JSONArray resultJson = new JSONArray();
        JSONObject userJSON = new JSONObject(); 
        
        
        
        try {
    		userJSON.put("id",user.getId());
    		userJSON.put("name",user.getName());
    		userJSON.put("email",user.getEmail());
    		userJSON.put("roles",roles);    
        } catch (JSONException e) {
            e.printStackTrace();
        }
    	resultJson.put(userJSON);
        
       // return new ResponseEntity<User>(user, HttpStatus.OK);
    	
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);
    	return new ResponseEntity<String>(resultJson.toString(), headers, HttpStatus.OK);
    }
 
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
