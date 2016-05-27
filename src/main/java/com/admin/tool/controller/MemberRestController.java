package com.admin.tool.controller;
 
import java.io.IOException;
import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;

import org.apache.taglibs.standard.tag.common.core.ForEachSupport;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
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
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

 
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
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);
        
        return new ResponseEntity<String>(getAllUsers().toString(), headers, HttpStatus.OK);
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
		
		// JUST FOR TEST INTIAL ASSIGN A NEW CREATED USER 
		// THE ROLE "ROLE_USER"
		Role addRole = new Role();
		addRole = roleService.findOne("ROLE_USER");
		roles.add(addRole);
		user.setRoles(roles);
		user.setEnabled(true);
		user.setCreatedDate(new Date());
		userService.save(user);
		///////////////////////////////
		        
        HttpHeaders headers = new HttpHeaders();
        headers.setLocation(ucBuilder.path("/user/{id}").buildAndExpand(user.getId()).toUri());
        return new ResponseEntity<Void>(headers, HttpStatus.CREATED);
    }
 

	
	   
    //------------------- Delete a User Role --------------------------------------------------------
    @RequestMapping(value = "/delete-role/{id}", method = RequestMethod.PUT)
    // public ResponseEntity<String> deleteUserRole(@PathVariable("id") int id, @RequestBody User user) {
    public ResponseEntity<String> deleteUserRole(@PathVariable("id") int roleId, @RequestBody String emailAddress) {
        System.out.println("Fetching & Deleting Role with id " + roleId);
 
        // Find a the role to be deleted
        Role role = roleService.findOne(roleId);
        if (role == null) {
            System.out.println("Unable to delete. Role with id " + roleId + " not found");
            return new ResponseEntity<String>(HttpStatus.NOT_FOUND);
        }
        
        
        // Find a user with the above role
          User user = userService.findOne("admin");
        

        // Remove the role from the user
        List<Role> userRoles = user.getRoles();
        
        for (Role userRole : userRoles) {
			if(userRole.getId() == role.getId()){
				
				// Remove the role
				//userRoles.remove(userRole);
			}
		}

        user.setRoles(userRoles);
		userService.save(user);
        
        //userService.delete(id);;
        return new ResponseEntity<String>(HttpStatus.NO_CONTENT);
    }
	
	
     //------------------- Update User Role --------------------------------------------------------
	@RequestMapping(value = "/add-role/{id}", method = RequestMethod.PUT)
	public ResponseEntity<String> updateUserRole(@PathVariable("id") int id, @RequestBody String newRole) {
		
		System.out.println("Updating User Role" + id);
        
        User currentUser = userService.findOne(id); 
        if (currentUser==null) {
            System.out.println("User with id " + id + " not found");
            return new ResponseEntity<String>(HttpStatus.NOT_FOUND);
        }
        
        ObjectMapper mapper = new ObjectMapper();
        mapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss");
        mapper.setDateFormat(dateFormat);       
        Role roleJson = null; 
        
         try {
			roleJson = mapper.readValue(newRole, Role.class);
		} catch (JsonParseException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (JsonMappingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
         

      List<Role> userRoles = currentUser.getRoles();
      List<Role> newUserRoles = new ArrayList<Role>();
      
/*      @SuppressWarnings("unchecked")
	  Collection<SimpleGrantedAuthority> authorities = (Collection<SimpleGrantedAuthority>)    
        		 SecurityContextHolder.getContext().getAuthentication().getAuthorities();*/
      
      
     boolean roleDoesNotExist = true;
      
   
      for (Role role : userRoles) {
    
		if(role.getName().equals(roleJson.getName())){
			roleDoesNotExist = false; 
		}
 
    	  newUserRoles.add(role);
	  } 
  

      if(roleDoesNotExist){
			// Add the New role
			Role addRole = new Role();
			addRole = roleService.findOne(roleJson.getName());

			newUserRoles.add(addRole);
			currentUser.setRoles(newUserRoles);
			userService.save(currentUser);
      }

        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);
    	//return new ResponseEntity<String>(resultJson.toString(), headers, HttpStatus.OK);
        //return new ResponseEntity<String>(getAllUsers().toString(), headers, HttpStatus.OK);
        return new ResponseEntity<String>(headers, HttpStatus.OK);

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
    
    
    
    
    
    
    
    
    
	// getAllUsers
	private JSONArray getAllUsers(){	
    	// Find all users
    	List<User> users = userService.findAll();
    	//List<String> roles = new ArrayList<String>();
    	SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
    	
    	
    	JSONArray resultJson = new JSONArray();
    	

    	for(User user :users){

    		JSONArray roleResultJson = new JSONArray();
    		
    		User currentUser = userService.findOne(user.getId()); 
    		
    		  List<Role> userRoles = currentUser.getRoles();
    	      //List<Role>  allUserRoles = new ArrayList<Role>();
    	      
    	      JSONObject userJSON = new JSONObject();
    	      JSONObject roleJSON = new JSONObject(); 

    	      /*
    	      for (Role role : userRoles) {
    	    	  allUserRoles.add(role);
    		  } 
    	      */
    	      
    	     /* 
    	      for (Role roleInUser: allUserRoles){
    	    	  roleJSON = new JSONObject(); 
    	    	  try {
    	    	     roleJSON.put("roleId",roleInUser.getId());
    	    	     roleJSON.put("roleName",roleInUser.getName());
    	    	     roleJSON.put("roleBackColor",roleInUser.getBackColor());
    	    	     
    	    	     //userJSON.put("roles",roleJSON); 
    	    	     
    	    	  } catch (JSONException e) {
    	                e.printStackTrace();
    	            }
    	    	  
    	    	  roleResultJson.put(roleJSON);
    	      }
    	      */
    	      
    	      
    	      
    		//roles = roleService.findRolesById(user.getId());
    		 userJSON = new JSONObject();   	
        	try {
        		userJSON.put("id",user.getId());
        		userJSON.put("name",user.getName());
        		userJSON.put("email",user.getEmail());

        		Date date = user.getCreatedDate();
        		
        		if (date != null){
        		  userJSON.put("createdDate",dateFormat.format(date)); 
        		}
             
        		date = user.getLastLoginDate();
        		
        		if(date != null ){
        			date = user.getLastLoginDate();
        			userJSON.put("lastLoginDate",dateFormat.format(date)); 
        		}
        		
        		
        		/////////// Add Roles to Json ///////
	      	      for (Role roleInUser: userRoles){
	      	    	 // roleResultJson = new JSONArray();
	    	    	  roleJSON = new JSONObject(); 
	    	    	     roleJSON.put("roleId",roleInUser.getId());
	    	    	     roleJSON.put("roleName",roleInUser.getName());
	    	    	     roleJSON.put("roleBackColor",roleInUser.getBackColor());
	
	    	    	     roleResultJson.put(roleJSON);
	    	      }
	      	      /////////////////////////////////////////
	      	      
        		  userJSON.put("roles",roleResultJson); 
        		
        		
        		
        		
        		
        		
   
            } catch (JSONException e) {
                e.printStackTrace();
            }
        	resultJson.put(userJSON);
        	
        	
        	
        	
        	
        	
        	
    	}
    	
    	return resultJson;
	}
    
    
    
    
 
}