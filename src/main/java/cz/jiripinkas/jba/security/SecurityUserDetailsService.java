package cz.jiripinkas.jba.security;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import cz.jiripinkas.jba.entity.User;
import cz.jiripinkas.jba.repository.UserRepository;


@Service
public class SecurityUserDetailsService implements UserDetailsService {

    private static final Logger LOGGER = Logger.getLogger(SecurityUserDetailsService.class);

    @Autowired(required=true)
    private UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String membername) throws UsernameNotFoundException {
        User user = userRepository.findByName(membername); 
 
        if (user == null) {
            String message = "Username not found" + membername;
            LOGGER.info(message);
            throw new UsernameNotFoundException(message);
        }
        List<GrantedAuthority> authorities = new ArrayList<>();
        authorities.add(new SimpleGrantedAuthority("ROLE_USER"));
        if(user.getName().equals("admin"))
        	authorities.add(new SimpleGrantedAuthority("ROLE_ADMIN"));	
        
        LOGGER.info("Found user in database: " + user);
        user.setLastLoginDate(new Date());
        userRepository.save(user);
        
		return new org.springframework.security.core.userdetails.User(membername, user.getPassword(), authorities);
	}
}
