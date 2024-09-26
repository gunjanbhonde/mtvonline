package org.techhub.movies_recommendation.config;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan(basePackages = "org.techhub.movies_recommendation")
@EnableWebMvc
public class MvcConfiguration implements WebMvcConfigurer {

	@Bean
	public ViewResolver getViewResolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setPrefix("/WEB-INF/views/");
		resolver.setSuffix(".jsp");
		return resolver;
	}

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
	}

	@Bean
	public JdbcTemplate jdbcTemplate() {

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource());

		return jdbcTemplate;

	}

	@Bean
	public DataSource dataSource() {

		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setUsername("root");
		dataSource.setPassword("Gunjan@123");
		dataSource.setUrl("jdbc:mysql://localhost:3306/mr?useSSL=false&allowPublicKeyRetrieval=true");
		dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");

		return dataSource;

	}

	
	/*
	 * @Bean public CommonsMultipartResolver multipartResolver() {
	 * CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver();
	 * multipartResolver.setDefaultEncoding("utf-8");
	 * multipartResolver.setMaxUploadSize(10485760); // 10MB return
	 * multipartResolver; }
	 */
	 

	
	
	
	
	
	
	
	
	 

}
