package com.roytuts.db.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
@EnableJpaRepositories
@SpringBootApplication
public class DbServiceApp {

	@Autowired
	private FlagRepository repository;

	public static void main(String[] args) {
		SpringApplication.run(DbServiceApp.class, args);
	}

	@GetMapping("/flag/{id}")
	public ResponseEntity<String> getFlagValue(@PathVariable int id) {
		return new ResponseEntity<String>(repository.findById(id).get().getValue(), HttpStatus.OK);
	}

}

