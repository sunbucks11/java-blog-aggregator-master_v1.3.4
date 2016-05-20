package com.admin.tool.controller;
 
import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.taglibs.standard.tag.common.core.ForEachSupport;
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

import com.admin.tool.entity.Role;
import com.admin.tool.entity.User;
import com.admin.tool.repository.UserRepository;
import com.admin.tool.service.RoleService;
import com.admin.tool.service.UserService;

 
@RestController
public class MemberRestController {
 
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private RoleService roleService;
	
	
    //-------------------Retrieve All Users--------------------------------------------------------
   
	@RequestMapping(value = "/user", method = RequestMethod.GET)
    public ResponseEntity<String> listAllUsers(Principal principal) {
    	
    	// Find all users
    	List<User> users = userService.findAll();
    	List<String> roles = new ArrayList<String>();
    	SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
    	
    	
    	JSONArray resultJson = new JSONArray();

    	for(User user :users){
    		roles = roleService.findRolesById(user.getId());
    		JSONObject userJSON = new JSONObject();   	
        	try {
        		userJSON.put("id",user.getId());
        		userJSON.put("name",user.getName());
        		userJSON.put("email",user.getEmail());
        		userJSON.put("roles",roles); 
 
        		
        		Date date = user.getCreatedDate();
        		
        		if (date != null){
        		  userJSON.put("createdDate",dateFormat.format(date)); 
        		}
             
        		date = user.getLastLoginDate();
        		
        		if(date != null ){
        			date = user.getLastLoginDate();
        			userJSON.put("lastLoginDate",dateFormat.format(date)); 
        		}
        		
   
            } catch (JSONException e) {
                e.printStackTrace();
            }
        	resultJson.put(userJSON);
    	}
    	
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);
        return new ResponseEntity<String>(resultJson.toString(), headers, HttpStatus.OK);
    }
 
 
/*    
    //-------------------Retrieve Single User--------------------------------------------------------
     
    @RequestMapping(value = "/user/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<User> getUser(@PathVariable("id") long id) {
        System.out.println("Fetching User with id " + id);
        User user = userService.findById(id);
        if (user == null) {
            System.out.println("User with id " + id + " not found");
            return new ResponseEntity<User>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<User>(user, HttpStatus.OK);
    }
 */
     
     
    //-------------------Create a User--------------------------------------------------------
     
	@RequestMapping(value = "/user/", method = RequestMethod.POST)
    public ResponseEntity<Void> createUser(@RequestBody User user,    UriComponentsBuilder ucBuilder) {
        System.out.println("Creating User " + user.getName());
 
        //if (userService.isUserExist(user) || userRepository.findOne(user.getId()) != null) {
        if (userService.isUserExist(user) || userRepository.findByEmail(user.getEmail()) != null) {
            System.out.println("A User with name " + user.getName() + " already exist");
            return new ResponseEntity<Void>(HttpStatus.CONFLICT);
        }
        
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		user.setPassword(encoder.encode(user.getPassword())); 
		//user.setPassword(encoder.encode("admin")); 
				
		System.out.println(roleService.findAll().get(0).getName() + "\n" + roleService.findAll().get(1).getName());
		
		List<Role> roles = new ArrayList<Role>();
		roles.add(roleService.findAll().get(0));
		user.setRoles(roles);
		//user.setRoles(roleService.getRoles());
		user.setEnabled(true);
		user.setCreatedDate(new Date());
		//user.setBlogs(null);

		userRepository.save(user);
       // userService.save(user);
        HttpHeaders headers = new HttpHeaders();
        headers.setLocation(ucBuilder.path("/user/{id}").buildAndExpand(user.getId()).toUri());
        return new ResponseEntity<Void>(headers, HttpStatus.CREATED);
    }
 
    
   
    //------------------- Update a User --------------------------------------------------------
     
	@RequestMapping(value = "/user/{id}", method = RequestMethod.PUT)
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
 
    
    
    //------------------- Delete a User --------------------------------------------------------
     
    @RequestMapping(value = "/user/{id}", method = RequestMethod.DELETE)
    public ResponseEntity<User> deleteUser(@PathVariable("id") int id) {
        System.out.println("Fetching & Deleting User with id " + id);
 
        User user = userService.findOne(id);
        if (user == null) {
            System.out.println("Unable to delete. User with id " + id + " not found");
            return new ResponseEntity<User>(HttpStatus.NOT_FOUND);
        }
 
        userService.delete(id);;
        return new ResponseEntity<User>(HttpStatus.NO_CONTENT);
    }
 
    /*    
    
    //------------------- Delete All Users --------------------------------------------------------
     
    @RequestMapping(value = "/user", method = RequestMethod.DELETE)
    public ResponseEntity<User> deleteAllUsers() {
        System.out.println("Deleting All Users");
 
        userService.deleteAllUsers();
        return new ResponseEntity<User>(HttpStatus.NO_CONTENT);
    }
 
 */
 
}