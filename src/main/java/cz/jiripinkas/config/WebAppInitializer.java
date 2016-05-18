package cz.jiripinkas.config;

import javax.servlet.Filter;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import cz.jiripinkas.config.root.AppSecurityConfig;
import cz.jiripinkas.config.root.DevelopmentConfiguration;
import cz.jiripinkas.config.root.RootContextConfig;
import cz.jiripinkas.config.root.TestConfiguration;
import cz.jiripinkas.config.servlet.ServletContextConfig;

public class WebAppInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		return new Class<?>[] { RootContextConfig.class, DevelopmentConfiguration.class, TestConfiguration.class,
				AppSecurityConfig.class };
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class<?>[] { ServletContextConfig.class };
	}

	@Override
	protected String[] getServletMappings() {
		return new String[] { "/" };
	}

	@Override
	protected Filter[] getServletFilters() {
		Filter[] singleton = { new CORSFilter() };
		return singleton;
	}
}
