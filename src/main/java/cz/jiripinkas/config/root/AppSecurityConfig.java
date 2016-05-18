package cz.jiripinkas.config.root;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;

import cz.jiripinkas.jba.security.AjaxAuthenticationSuccessHandler;
import cz.jiripinkas.jba.security.SecurityUserDetailsService;

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
       // .antMatchers(HttpMethod.POST, "/UserManagement/**").permitAll()
        .antMatchers("/index**","/login**", "/loginError**","/register**").permitAll()
        .antMatchers("/register/**").hasAnyRole("ADMIN","ANONYMOUS")
        //.antMatchers("/register").hasAnyRole("ADMIN","ANONYMOUS")
        
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
        //.loginPage("/resources/public/login.html")
        //.loginProcessingUrl("/authenticate")
        .loginPage("/login")
        .failureUrl("/loginError")
        .loginProcessingUrl("/j_spring_security_check")
        //.defaultSuccessUrl("/resources/pages/calories-tracker.html")
         .defaultSuccessUrl("/index")
        //.defaultSuccessUrl("/resources/public/login.html")
        .usernameParameter("username")
        .passwordParameter("password")
        .successHandler(new AjaxAuthenticationSuccessHandler(new SavedRequestAwareAuthenticationSuccessHandler()))
        .and()
        .httpBasic()
        
      /*  
         // Spring
        .loginPage("/login.html")
        .loginProcessingUrl("/j_spring_security_check")
        .usernameParameter("j_username")
        .passwordParameter("j_password")
        .defaultSuccessUrl("/index")
        .permitAll()
      */
        .and()
        .logout()
        .logoutSuccessUrl("/index");
       // .logoutSuccessUrl("/resources/public/login.html");
  }
}