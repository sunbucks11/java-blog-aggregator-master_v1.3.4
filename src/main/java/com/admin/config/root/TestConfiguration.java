package com.admin.config.root;

import java.util.HashMap;
import java.util.Map;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;
import org.springframework.instrument.classloading.InstrumentationLoadTimeWeaver;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.admin.tool.init.TestDataInitializer;


@Configuration
//@Profile("test")
@Profile("dev")
@EnableTransactionManagement
public class TestConfiguration {


    @Bean(initMethod = "init")
    public TestDataInitializer initTestData() {
        return new TestDataInitializer();
    }


    @Bean(name = "datasource")
    public DriverManagerDataSource dataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName(org.hsqldb.jdbcDriver.class.getName());
        dataSource.setUrl("jdbc:hsqldb:mem:mydb");
        dataSource.setUsername("sa");
        dataSource.setPassword("jdbc:hsqldb:mem:mydb");
        return dataSource;
    }

    @Bean(name = "entityManagerFactory")
    public LocalContainerEntityManagerFactoryBean entityManagerFactory(DriverManagerDataSource dataSource) {

        LocalContainerEntityManagerFactoryBean entityManagerFactoryBean = new LocalContainerEntityManagerFactoryBean();
        entityManagerFactoryBean.setDataSource(dataSource);
        entityManagerFactoryBean.setPackagesToScan(new String[]{"com.admin.tool.entity"});
        entityManagerFactoryBean.setLoadTimeWeaver(new InstrumentationLoadTimeWeaver());
        entityManagerFactoryBean.setJpaVendorAdapter(new HibernateJpaVendorAdapter());

        Map<String, Object> jpaProperties = new HashMap<String, Object>();
        jpaProperties.put("hibernate.hbm2ddl.auto", "create");
        jpaProperties.put("hibernate.show_sql", "true");
        jpaProperties.put("hibernate.format_sql", "true");
        jpaProperties.put("hibernate.use_sql_comments", "true");
        entityManagerFactoryBean.setJpaPropertyMap(jpaProperties);

        return entityManagerFactoryBean;
    }
}
    
    
    
    
    /*
	@Bean
	public FileUploadDao fileUploadDao() {
		return new FileUploadDaoImpl();
	}
    */
    
    
    
    /* 
    @Bean
    public AnnotationSessionFactoryBean sessionFactory() {
       AnnotationSessionFactoryBean sessionFactory = new AnnotationSessionFactoryBean();
       sessionFactory.setDataSource(dataSource());
       sessionFactory.setPackagesToScan(new String[] { "com.admin.tool.entity" });
       sessionFactory.setHibernateProperties(hibernateProperties());
  
       return sessionFactory;
    }
    
    @Bean
    public DataSource restDataSource() {
       BasicDataSource dataSource = new BasicDataSource();
       dataSource.setDriverClassName(env.getProperty("jdbc.driverClassName"));
       dataSource.setUrl(env.getProperty("jdbc.url"));
       dataSource.setUsername(env.getProperty("jdbc.user"));
       dataSource.setPassword(env.getProperty("jdbc.pass"));
  
       return dataSource;
    }
  
    @Bean
    public PersistenceExceptionTranslationPostProcessor exceptionTranslation() {
       return new PersistenceExceptionTranslationPostProcessor();
    }
  
    Properties hibernateProperties() {
       return new Properties() {
		private static final long serialVersionUID = 1L;

		{
             setProperty("hibernate.hbm2ddl.auto", env.getProperty("hibernate.hbm2ddl.auto"));
             setProperty("hibernate.dialect", env.getProperty("hibernate.dialect"));
          }
       };
    }
    */
    
    