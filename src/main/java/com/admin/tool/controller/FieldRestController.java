package com.admin.tool.controller;

import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;
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

import com.admin.tool.entity.Field;
import com.admin.tool.entity.Role;
import com.admin.tool.entity.User;
import com.admin.tool.repository.FieldRepository;
import com.admin.tool.security.SecurityUserDetailsService;
import com.admin.tool.service.AuditService;
import com.admin.tool.service.FieldService;

@RestController
public class FieldRestController {

	@Autowired
	private FieldService fieldService;
	
	//@Autowired
	//private FieldRepository fieldRepository;
	
	@Autowired
	private AuditService auditService;

	private String message = "";
	
	private static final Logger LOGGER = Logger.getLogger(SecurityUserDetailsService.class);
	
    //-------------------Retrieve All Fields--------------------------------------------------------
	   
	@RequestMapping(value = "/field", method = RequestMethod.GET)
    public ResponseEntity<String> listAllFields(Principal principal) {
    	
    	// Find all Fields
    	List<Field> fields = fieldService.findAll();

    	JSONArray resultJson = new JSONArray();

    	
    	for(Field field :fields){
    		JSONObject roleJSON = new JSONObject();   	
	
        	try {
        		roleJSON.put("id",field.getId());
        		roleJSON.put("name",field.getName());
        		roleJSON.put("comment", field.getComment());
        		roleJSON.put("enabled",field.isEnabled());
        		roleJSON.put("createdDate",field.getCreatedDate());
        		roleJSON.put("modifiedDate",field.getModifiedDate());
        		
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
    
	@RequestMapping(value = "/field/", method = RequestMethod.POST)
    public ResponseEntity<Void> createUser(@RequestBody Field field,    UriComponentsBuilder ucBuilder) {
        System.out.println("Creating User " + field.getName());
 
       /*
        if (fieldService.isFieldExist(field) || fieldRepository.findByEmail(user.getEmail()) != null) {
            System.out.println("A User with name " + user.getName() + " already exist");
            return new ResponseEntity<Void>(HttpStatus.CONFLICT);
        }
        */
        

		/*		
		System.out.println(roleService.findAll().get(0).getName() + "\n" + roleService.findAll().get(1).getName());
		
		List<Role> roles = new ArrayList<Role>();
		roles.add(roleService.findAll().get(0));
		user.setRoles(roles);
		user.setEnabled(true);
		user.setCreatedDate(new Date());
		userRepository.save(user);
        */
		
        HttpHeaders headers = new HttpHeaders();
        headers.setLocation(ucBuilder.path("/user/{id}").buildAndExpand(field.getId()).toUri());
        return new ResponseEntity<Void>(headers, HttpStatus.CREATED);
    }
	
	
	

	//-------------------Update a Field--------------------------------------------------------
	@RequestMapping(value = "/field/{id}", method = RequestMethod.PUT)
	public ResponseEntity<String> updateUser(@PathVariable("id") int id, @RequestBody Field field) {

		// Find field by Id
		Field updateField = fieldService.findOne(field.getName());
		
        if (updateField==null) {
        	
			message = "Field with id " + id + " and field name " + field.getName() + " not found";
			auditService.update(new Date(), "App", "localhost", "", message, "exclamation-red");
			LOGGER.info(message);
            System.out.println(message);
            return new ResponseEntity<String>(HttpStatus.NOT_FOUND);
        }
		

        updateField.setEnabled(field.isEnabled());
        updateField.setModifiedDate(new Date());
        
        message = "Successfully update field : " + field.getName();
		LOGGER.info(message);
		auditService.update(new Date(), "App", "localhost", "", message, "tick-circle");
        
        fieldService.save(updateField);

        JSONArray resultJson = new JSONArray();
        JSONObject userJSON = new JSONObject(); 

        try {
    		userJSON.put("id",updateField.getId());
    		userJSON.put("name",updateField.getName());
    		userJSON.put("email",updateField.getComment());
    		userJSON.put("enabled",updateField.isEnabled());    
        } catch (JSONException e) {
            e.printStackTrace();
        }
        
    	resultJson.put(userJSON);

        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);
    	return new ResponseEntity<String>(resultJson.toString(), headers, HttpStatus.OK);
    }
	
	
	
	
}
