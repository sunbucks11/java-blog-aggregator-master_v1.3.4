package cz.jiripinkas.config.root;

import javax.persistence.EntityManagerFactory;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.FilterType;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;

@Configuration

@EnableJpaRepositories("cz.jiripinkas.jba.repository")
@ComponentScan(basePackages = { "cz.jiripinkas.jba"}, excludeFilters = @ComponentScan.Filter(type = FilterType.REGEX, pattern = { "cz.jiripinkas.jba.controller.*" }))
public class RootContextConfig {

	@Bean(name = "transactionManager")
	public PlatformTransactionManager transactionManager(EntityManagerFactory entityManagerFactory,
			DriverManagerDataSource dataSource) {
		JpaTransactionManager transactionManager = new JpaTransactionManager();
		transactionManager.setEntityManagerFactory(entityManagerFactory);
		transactionManager.setDataSource(dataSource);
		return transactionManager;
	}
}
