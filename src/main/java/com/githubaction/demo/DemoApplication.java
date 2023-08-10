package com.githubaction.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.info.BuildProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.vault.core.VaultOperations;
import org.springframework.vault.core.VaultTemplate;
import org.springframework.vault.support.VaultResponse;

import java.util.Optional;

@SpringBootApplication
public class DemoApplication {

	private final VaultTemplate vaultTemplate;


	public DemoApplication(VaultTemplate vaultTemplate) {
		this.vaultTemplate = vaultTemplate;
	}


	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);
//		System.out.println();
	}

//	@Autowired
//	Optional<BuildProperties> buildProperties;

//	@Bean
//	public String getSecret() {
//		VaultResponse response = vaultTemplate.read("secret/application");
//		response.getData().forEach((key, value) -> {
//			System.out.println("Key: " + key + ", Value: " + value);
//			System.out.println("buildProperties: " + buildProperties.get().getName());
//		});
//		return response.toString();
//	}

}
