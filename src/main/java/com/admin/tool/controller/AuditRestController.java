package com.admin.tool.controller;

import java.security.Principal;
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

import com.admin.tool.entity.Audit;
import com.admin.tool.entity.Field;
import com.admin.tool.service.AuditService;

@RestController
public class AuditRestController {

	@Autowired
	private AuditService auditService;
	
	
	
    //-------------------Retrieve All Audits--------------------------------------------------------
	   
	@RequestMapping(value = "/audit", method = RequestMethod.GET)
    public ResponseEntity<String> listAllAduits(Principal principal) {
    	
    	// Find all Audits
    	List<Audit> audits = auditService.findAll();

    	JSONArray resultJson = new JSONArray();

    	
    	for(Audit audit :audits){
    		JSONObject roleJSON = new JSONObject();   	
	
        	try {
        		roleJSON.put("id",audit.getId());
        		roleJSON.put("created",audit.getCreatedDate());
        		roleJSON.put("source",audit.getSource());
        		roleJSON.put("ipAddress", audit.getIpAddress());
        		roleJSON.put("email",audit.getEmail());
        		roleJSON.put("description",audit.getDescription());
        		roleJSON.put("imageType",audit.getImageType());
        		
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
