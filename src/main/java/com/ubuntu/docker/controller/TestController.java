package com.ubuntu.docker.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {

	@GetMapping("/get")
	public String hello() {
		
		return "Hello Docker";
	}
	
	
}
