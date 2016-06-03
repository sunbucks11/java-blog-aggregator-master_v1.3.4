package com.admin.config.root;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextImpl;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

import com.admin.tool.controller.TwoFactorAuthController;
import com.admin.tool.entity.Role;
import com.admin.tool.entity.User;
import com.admin.tool.repository.UserRepository;
import com.admin.tool.service.UserService;


@Component
public class AdminFilter implements Filter {

	@Autowired(required = true)
	private UserService userService;
	
	//@Autowired(required = true)
	//private UserRepository userRepository;

	private static Logger log = LoggerFactory.getLogger(AdminFilter.class);

	private boolean twoFactorAuthenticationEnabled = true; // XXX will this be
															// configurable?

	public void init(FilterConfig filterConfig) throws ServletException {

	}

	@Transactional
//	@Override
	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {
		
		// http://stackoverflow.com/questions/32494398/unable-to-autowire-the-service-inside-my-authentication-filter-in-spring
		 SpringBeanAutowiringSupport.processInjectionBasedOnCurrentContext(this);
		
		log.info("adminFilter.doFilter executed");

		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) res;
		String requestedUri = request.getRequestURL().toString();

		System.out.println("REQUESTED URL: " + requestedUri);

		// allow all resources to tget passed this filter
		log.info("requestedUri is:" + requestedUri);
		if (requestedUri.matches(".*[css|jpg|png|gif|js]")
				|| requestedUri.contains("admin/auth")) {
			chain.doFilter(request, response);
			return;
		}

		HttpSession session = request.getSession(true);

		if (requestedUri.contains("/ErrorController/Reset")) {
			request.getRequestDispatcher("/ResetController").forward(request,
					response);
			return;
		}

		/*
		if (requestedUri.contains("/ResetController/backToLogin")) {
			request.getRequestDispatcher("/LoginController").forward(request,
					response);
			return;
		}
		*/
	
		
		if (requestedUri.contains("/403.html")) {
			chain.doFilter(request, response);
			return;
		}
		
		if (requestedUri.contains("/logout")) {
			//TwoFactorAuthController.isVerificationRequired = true;
			chain.doFilter(request, response);
			return;
		}

		if (requestedUri.contains("/register.html")) {
			chain.doFilter(request, response);
			return;
		}

		if (requestedUri.contains("/j_spring_security_check")) {
			chain.doFilter(request, response);
			return;
		}

		if (requestedUri.contains("/login.html")) {
			chain.doFilter(request, response);
			return;
		}

		if (requestedUri.contains("/error.html")) {
			chain.doFilter(request, response);
			return;
		}
		
		if (requestedUri.contains("/reset.html")) {
			chain.doFilter(request, response);
			return;
		}

		SecurityContextImpl sci = (SecurityContextImpl) session
				.getAttribute("SPRING_SECURITY_CONTEXT");
		String username = null;

		if (sci != null) {
			UserDetails cud = (UserDetails) sci.getAuthentication()
					.getPrincipal();
			username = cud.getUsername();
			User user = userService.findOne(username);

		if(user.isEnabled())
		{
			if (request.getSession().getAttribute("isVerifiedError") != null
					&& (boolean) request.getSession().getAttribute(
							"isVerifiedError") == true) {

				if (TwoFactorAuthController.isResetTwoFactorAuth) {
					twoFactorAuthenticationEnabled = true;
					//TwoFactorAuthController.TWO_FACTOR_AUTHENTICATION_INT = false;
					
					user.setResetTwoFactorAuth(true);
					user.setTwoFactorAuthInitialised(false);
					
					//session.invalidate();
					chain.doFilter(request, response);
					return;
				}
			}

			//boolean loggedinUserHasAdminRole = isLoggedinUserHasAdminRole(username, cud.getAuthorities() );

/*
			if (loggedinUserHasAdminRole && twoFactorAuthenticationEnabled
					&& someoneIsLoggedIn(session)
					&& !isUserAlreadyAuthenticatedWithTwoFactorAuth(session)
					&& !TwoFactorAuthController.TWO_FACTOR_AUTHENTICATION_INT) {
				request.getRequestDispatcher("/TwoFactorAuthController")
						.forward(request, response);
				return;
			}
*/
			
			if (twoFactorAuthenticationEnabled
					&& !user.getTwoFactorAuthInitialised()
					&& someoneIsLoggedIn(session)
					//&& !isUserAlreadyAuthenticatedWithTwoFactorAuth(session)
					/*&& !TwoFactorAuthController.TWO_FACTOR_AUTHENTICATION_INT*/
					) {
				request.getRequestDispatcher("/TwoFactorAuthController")
						.forward(request, response);
				return;
			}
			
			
			
			System.out.println("isVerificationRequired: "
					+ request.getSession().getAttribute(
							"isVerificationRequired"));
/*
			if (loggedinUserHasAdminRole
					&& TwoFactorAuthController.TWO_FACTOR_AUTHENTICATION_INT
					&& TwoFactorAuthController.isVerificationRequired) {
				request.getRequestDispatcher("/verification.html").forward(
						request, response);
				request.getSession().setAttribute("isVerificationRequired",
						false);
				return;
			}
*/			
			
			if (user.getTwoFactorAuthInitialised() && !user.isVerified()) {
				request.getRequestDispatcher("/verification.html").forward(
						request, response);
				request.getSession().setAttribute("isVerificationRequired",false);
				return;
			}
			
			
			
		}

		log.info("adminFilter.doFilter skipping to next filter");
		chain.doFilter(req, res);
		return;
	 }
	}

	
	
	
	
	private boolean someoneIsLoggedIn(HttpSession session) {
		try {
			SecurityContextImpl sci = (SecurityContextImpl) session
					.getAttribute("SPRING_SECURITY_CONTEXT");
			String username = null;
			if (sci != null) {
				UserDetails cud = (UserDetails) sci.getAuthentication()
						.getPrincipal();
				username = cud.getUsername();
			}
			log.info("LoggedInUser is " + username);

			if (username != null && !username.isEmpty()) {
				return true;
			}
		} catch (Exception e) {
			log.info(e.getMessage());
		}
		return false;
	}

	public void destroy() {

	}

	// Helper Methods
	private boolean isUserAlreadyAuthenticatedWithTwoFactorAuth(
			HttpSession session) throws IOException, ServletException {
		Object twoFactorSuccess = session
				.getAttribute(TwoFactorAuthController.TWO_FACTOR_AUTHENTICATION_SUCCESS);

		if (twoFactorSuccess != null && twoFactorSuccess instanceof Boolean
				&& (Boolean) twoFactorSuccess) {
			return true;
		}
		return false;
	}

/*
	private boolean isLoggedinUserHasAdminRole(String username, Collection<? extends GrantedAuthority> authorities) {
		for (GrantedAuthority grantedAuthority : authorities) {
			if(grantedAuthority.toString().equals("ROLE_ADMIN")){
				return true;
			}
		}
		return false;
	}
	*/

}