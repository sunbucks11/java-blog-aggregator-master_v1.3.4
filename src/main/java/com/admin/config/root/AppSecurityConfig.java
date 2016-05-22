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
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

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
        .antMatchers("/home**","/login**", "/logout**", "/loginError**","/register**").permitAll()
        .antMatchers("/register/**").hasAnyRole("ADMIN","ANONYMOUS")
        
        
        .antMatchers("/index**").hasRole("ADMIN")
        .antMatchers("/index/**").hasRole("ADMIN") 
                
        .antMatchers("/UserManagement**").hasRole("ADMIN")
        .antMatchers("/UserManagement/**").hasRole("ADMIN")

        .antMatchers("/RolesManagement**").hasRole("ADMIN")
        .antMatchers("/RolesManagement/**").hasRole("ADMIN")
        
        .antMatchers("/FieldsManagement**").hasRole("ADMIN")
        .antMatchers("/FieldsManagement/**").hasRole("ADMIN") 
        
        .antMatchers("/DomainsManagement**").hasRole("ADMIN")
        .antMatchers("/DomainsManagement/**").hasRole("ADMIN") 
        
        .antMatchers("/AuditManagement**").hasRole("ADMIN")
        .antMatchers("/AuditManagement/**").hasRole("ADMIN") 
        
        .antMatchers("/ToolsManagement**").hasRole("ADMIN")
        .antMatchers("/ToolsManagement/**").hasRole("ADMIN") 
        
        .antMatchers("/SettingsManagement**").hasRole("ADMIN")
        .antMatchers("/SettingsManagement/**").hasRole("ADMIN")
        
        .antMatchers("/ApiManagement**").hasRole("ADMIN")
        .antMatchers("/ApisManagement/**").hasRole("ADMIN") 
        
        .antMatchers("/HelpManagement**").hasRole("ADMIN")
        .antMatchers("/HelpManagement/**").hasRole("ADMIN") 
        
        .antMatchers("/FaqManagement**").hasRole("ADMIN")
        .antMatchers("/FaqManagement/**").hasRole("ADMIN") 

        .antMatchers("/users**").hasRole("ADMIN")
        .antMatchers("/users/**").hasRole("ADMIN")
        .antMatchers("/account**").hasRole("USER")
        .anyRequest()
        .authenticated()
        .and()  
      .formLogin()
        
        .loginPage("/login")
        .failureUrl("/loginError")
        .loginProcessingUrl("/j_spring_security_check")
        .defaultSuccessUrl("/login")
        .usernameParameter("username")
        .passwordParameter("password")
        .successHandler(new AjaxAuthenticationSuccessHandler(new SavedRequestAwareAuthenticationSuccessHandler()))
        .and()
        .httpBasic()       
        .and()
        .logout()
        .deleteCookies("remove")
        .invalidateHttpSession(true)
        .logoutUrl("/logout")
        .logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
        .logoutSuccessUrl("/logout")
        .permitAll();
  }
}