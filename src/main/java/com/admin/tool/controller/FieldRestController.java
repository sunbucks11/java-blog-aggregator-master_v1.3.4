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
	
	private static final Logger LOGGER = Logger.getLogger(FieldRestController.class);
	
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
        		roleJSON.put("enabled",field.getEnabled());
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
        System.out.println("Creating Field " + field.getName());
 
        if (fieldService.isRoleExist(field)) {
            System.out.println("A Field with name " + field.getName() + " already exist");
            return new ResponseEntity<Void>(HttpStatus.CONFLICT);
        }
        
        

		/*		
		System.out.println(roleService.findAll().get(0).getName() + "\n" + roleService.findAll().get(1).getName());
		
		List<Role> roles = new ArrayList<Role>();
		roles.add(roleService.findAll().get(0));
		user.setRoles(roles);
		user.setEnabled(true);
		user.setCreatedDate(new Date());
		userRepository.save(user);
        */
        
        Field newField = new Field();
        newField.setName(field.getName());
       // newField.setEnabled("true");
        newField.setEnabled(true);
        newField.setComment(field.getComment());
        newField.setCreatedDate(new Date());
        fieldService.save(newField);
		
        HttpHeaders headers = new HttpHeaders();
        headers.setLocation(ucBuilder.path("/field/{id}").buildAndExpand(field.getId()).toUri());
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
        
        

        /*
        if(!field.getEnabled().isEmpty() || field.getEnabled()!= null ){
        	updateField.setEnabled(field.getEnabled());
        }
        */
        
        try{
        	updateField.setEnabled(field.getEnabled());
        }
        catch(Exception ex){
        	System.out.println("Exception is: " + ex.getMessage());
        	System.out.println("Current Field Value is: " + updateField.getEnabled());
        }
        
        
        
        
        
        
        
        
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
    		userJSON.put("enabled",updateField.getEnabled());    
        } catch (JSONException e) {
            e.printStackTrace();
        }
        
    	resultJson.put(userJSON);

        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);
    	return new ResponseEntity<String>(resultJson.toString(), headers, HttpStatus.OK);
    }
	
	
	
	
	
    //------------------- Delete a User --------------------------------------------------------
    
    @RequestMapping(value = "/field/{id}", method = RequestMethod.DELETE)
    public ResponseEntity<Role> deleteRole(@PathVariable("id") int id) {
        System.out.println("Fetching & Deleting Field with id " + id);
 
        Field field = fieldService.findOne(id);
        if (field == null) {
            System.out.println("Unable to delete. Field with id " + id + " not found");
            return new ResponseEntity<Role>(HttpStatus.NOT_FOUND);
        }
 
        fieldService.delete(id);;
        return new ResponseEntity<Role>(HttpStatus.NO_CONTENT);
    }
	
	
	
}
