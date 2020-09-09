package com.roytuts.spring.boot.hello.world.rest.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldRestController {

	@GetMapping("/")
	public ResponseEntity<String> greet() {
		return new ResponseEntity<String>("Hello, World!", HttpStatus.OK);
	}

}
