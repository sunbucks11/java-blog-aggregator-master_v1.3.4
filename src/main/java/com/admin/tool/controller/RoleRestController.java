package com.admin.tool.controller;

import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.admin.tool.entity.Role;
import com.admin.tool.service.RoleService;

@RestController
public class RoleRestController {

	
	@Autowired
	private RoleService roleService;
	
    //-------------------Retrieve All Roles--------------------------------------------------------
	   
	@RequestMapping(value = "/role", method = RequestMethod.GET)
    public ResponseEntity<String> listAllRoles(Principal principal) {
    	
    	// Find all users
    	List<Role> roles = roleService.findAll();
    	//List<String> rolesString = new ArrayList<String>();
    	SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
    	
    	
    	JSONArray resultJson = new JSONArray();

    	for(Role role :roles){
    		//roles = roleService.findRolesById(role.getId());
    		JSONObject roleJSON = new JSONObject();   	
        	try {
        		roleJSON.put("id",role.getId());
        		roleJSON.put("name",role.getName());
        		//roleJSON.put("settings",role.getSettings());
        		//userJSON.put("roles",roles); 
 
        		
        		Date date = role.getCreatedDate();
        		
        		if (date != null){
        		//	roleJSON.put("createdDate",dateFormat.format(date)); 
        		}
             
        		date = role.getModifiedDate();
        		
        		if(date != null ){
        			date = role.getModifiedDate();
        			//roleJSON.put("lastLoginDate",dateFormat.format(date)); 
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
	
}
