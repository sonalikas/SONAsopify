package com.SONAsopifyBackend.Config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.SONAsopifyBackend.Model.Category;
import com.SONAsopifyBackend.Model.Product;
import com.SONAsopifyBackend.Model.Supplier;
import com.SONAsopifyBackend.Model.UserDetails;


@Configuration
@ComponentScan("com")
@EnableTransactionManagement
public class DBConfig{
	
	@Bean(name="dataSource")
	public DataSource getDataSource(){
		DriverManagerDataSource datasource=new DriverManagerDataSource();
		datasource.setDriverClassName("org.h2.Driver");
		datasource.setUrl("jdbc:h2:~/SONAsopify");
		datasource.setUsername("root");
		datasource.setPassword("root");
		return datasource;
	}
	@Autowired
	@Bean(name="sessionfact")
	public SessionFactory getSessionFactory(){
		Properties prop=new Properties();
		prop.put("hibernate.hbm2ddl.auto", "update");
		prop.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		prop.put("hibernate.show_sql", "true");
		LocalSessionFactoryBuilder sessionFactBuilder = new LocalSessionFactoryBuilder(getDataSource());
		sessionFactBuilder.addProperties(prop);
		sessionFactBuilder.addAnnotatedClass(UserDetails.class);
		sessionFactBuilder.addAnnotatedClass(Category.class);
		sessionFactBuilder.addAnnotatedClass(Product.class);
		sessionFactBuilder.addAnnotatedClass(Supplier.class);
		
		return sessionFactBuilder.buildSessionFactory();
		
	}
	@Autowired
	@Bean(name="txManager")
	public HibernateTransactionManager getTransectionManager(){
		HibernateTransactionManager txm = new HibernateTransactionManager(getSessionFactory());
		return txm;
	}
}



