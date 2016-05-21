package com.admin.tool.controller;

import java.security.Principal;
import java.text.SimpleDateFormat;
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

import com.admin.tool.entity.Field;
import com.admin.tool.service.FieldService;

@RestController
public class FieldRestController {

	@Autowired
	private FieldService fieldService;

	
	
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
	
	
	
	
}
