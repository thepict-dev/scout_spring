package pict.controller;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@SpringBootApplication
@ComponentScan("pict.controller")
@ComponentScan("pict.service")
@MapperScan("pict.mapper")
 
public class PictDemo2Application extends SpringBootServletInitializer{

	public static void main(String[] args) {
		SpringApplication.run(PictDemo2Application.class, args);
	}
	@Bean
	public InternalResourceViewResolver viewResolver() {
	    InternalResourceViewResolver resolver = new InternalResourceViewResolver();
	    resolver.setPrefix("/WEB-INF/jsp/");
	    resolver.setSuffix(".jsp");
	    return resolver;
	}
	
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
		return builder.sources(PictDemo2Application.class);
	}
	

}
