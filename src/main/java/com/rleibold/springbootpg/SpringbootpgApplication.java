package com.rleibold.springbootpg;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class SpringbootpgApplication {

	private static final Logger logger = LoggerFactory.getLogger(SpringbootpgApplication.class);
	
	public static void main(String[] args) {
		SpringApplication.run(SpringbootpgApplication.class, args);
	}
	
	
	@Bean
    public CommandLineRunner commandLineRunner(ApplicationContext ctx) {
        return args -> {

        	logger.info("Starting up Redis Spring Boot");
        	
        };
	}	
	
}
