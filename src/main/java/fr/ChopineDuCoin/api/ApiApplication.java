package fr.ChopineDuCoin.api;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.ConfigurableApplicationContext;

@SpringBootApplication
@EnableAutoConfiguration
@EntityScan(basePackages = {"fr.ChopineDuCoin.api.model"})  // scan JPA entities manually
public class ApiApplication {
	
	private static ConfigurableApplicationContext applicationContext;

	public static void main(String[] args) {
		SpringApplication.run(ApiApplication.class, args);
	}

}
