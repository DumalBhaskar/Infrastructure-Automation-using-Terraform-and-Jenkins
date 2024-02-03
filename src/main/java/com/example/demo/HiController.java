package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HiController {
	
	@GetMapping("/hi")
	public String hi() {
		return "Hi! Welcome to Spring REST";
	}
	
	@GetMapping("/hello")
	public String hello() {
		return "Hello! Welcome to SpringBoot";
	}

}