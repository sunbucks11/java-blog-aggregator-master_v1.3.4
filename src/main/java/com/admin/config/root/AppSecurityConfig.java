package com.admin.config.root;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;

import com.admin.tool.security.AjaxAuthenticationSuccessHandler;
import com.admin.tool.security.SecurityUserDetailsService;

@Configuration
@EnableWebSecurity
public class AppSecurityConfig extends WebSecurityConfigurerAdapter {

  @Autowired
  private SecurityUserDetailsService userDetailsService;

  @Autowired
  DataSource dataSource;

  @Override
  protected void configure(AuthenticationManagerBuilder auth) throws Exception {
    auth.userDetailsService(userDetailsService).passwordEncoder(new BCryptPasswordEncoder());
  }

  @Override
  protected void configure(HttpSecurity http) throws Exception {

    http.csrf()
      .disable()
      .authorizeRequests()  
          // SPA
        .antMatchers("/resources/public/**").permitAll()
        .antMatchers("/resources/img/**").permitAll()
        .antMatchers("/resources/bower_components/**").permitAll()

        // Spring
        .antMatchers("/index**","/login**", "/loginError**","/register**").permitAll()
        .antMatchers("/register/**").hasAnyRole("ADMIN","ANONYMOUS")
        .antMatchers("/UserManagement**").hasRole("ADMIN")
        .antMatchers("/UserManagement/**").hasRole("ADMIN")        
        .antMatchers("/users**").hasRole("ADMIN")
        .antMatchers("/users/**").hasRole("ADMIN")
        .antMatchers("/account**").hasRole("USER")
        .anyRequest()
        .authenticated()
        .and()  
      .formLogin()
        
         // SPA
        .loginPage("/login")
        .failureUrl("/loginError")
        .loginProcessingUrl("/j_spring_security_check")
         .defaultSuccessUrl("/index")
        .usernameParameter("username")
        .passwordParameter("password")
        .successHandler(new AjaxAuthenticationSuccessHandler(new SavedRequestAwareAuthenticationSuccessHandler()))
        .and()
        .httpBasic()
        
        .and()
        .logout()
        .logoutSuccessUrl("/index");
  }
}