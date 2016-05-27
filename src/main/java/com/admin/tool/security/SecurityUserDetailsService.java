package com.admin.tool.security;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.admin.tool.entity.Role;
import com.admin.tool.entity.User;
import com.admin.tool.repository.UserRepository;
import com.admin.tool.service.AuditService;

@Service
public class SecurityUserDetailsService implements UserDetailsService {

	private static final Logger LOGGER = Logger.getLogger(SecurityUserDetailsService.class);

	@Autowired(required = true)
	private UserRepository userRepository;
	
	@Autowired
	private AuditService auditService;

	@Override
	public UserDetails loadUserByUsername(String username)  {
		User user = userRepository.findByName(username);
		/*
		Context initialContext = new InitialContext();
		String myApplicationName = (String) initialContext.lookup("java:app/AppName"); 
		String ipAddress = getClientIpAddress(request);
		*/
		String message = "";

		if (user == null) {
			message = "Username not found" + username;
			auditService.update(new Date(), "App", "localhost", "", message, "exclamation-red");
			LOGGER.info(message);
			throw new UsernameNotFoundException(message);
			
		}
		List<GrantedAuthority> authorities = new ArrayList<>();
		authorities.add(new SimpleGrantedAuthority("ROLE_USER"));
		
		
		  List<Role> userRoles = user.getRoles();
	      for (Role role : userRoles) {
	    	    
	  		if(role.getName().equals("ROLE_ADMIN")){
	  			authorities.add(new SimpleGrantedAuthority("ROLE_ADMIN"));
	  		}
	  	  } 

	      /*
		if (user.getName().equals("admin"))
			authorities.add(new SimpleGrantedAuthority("ROLE_ADMIN"));
        */

		
		message = "Found user in database: " + user.getName();
		LOGGER.info(message);
		user.setLastLoginDate(new Date());
		userRepository.save(user);

		auditService.update(new Date(), "App", "localhost", user.getEmail(), message, "tick-circle");
		
		return new org.springframework.security.core.userdetails.User(username, user.getPassword(), authorities);
	}


	
	
	
	private static final String[] HEADERS_TO_TRY = { 
		    "X-Forwarded-For",
		    "Proxy-Client-IP",
		    "WL-Proxy-Client-IP",
		    "HTTP_X_FORWARDED_FOR",
		    "HTTP_X_FORWARDED",
		    "HTTP_X_CLUSTER_CLIENT_IP",
		    "HTTP_CLIENT_IP",
		    "HTTP_FORWARDED_FOR",
		    "HTTP_FORWARDED",
		    "HTTP_VIA",
		    "REMOTE_ADDR" };
	
	public static String getClientIpAddress(HttpServletRequest request) {
	    for (String header : HEADERS_TO_TRY) {
	        String ip = request.getHeader(header);
	        if (ip != null && ip.length() != 0 && !"unknown".equalsIgnoreCase(ip)) {
	            return ip;
	        }
	    }
	    return request.getRemoteAddr();
	}
}
