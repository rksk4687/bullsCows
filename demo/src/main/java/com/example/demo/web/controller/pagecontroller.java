package com.example.demo.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class pagecontroller {
	@GetMapping("/log")
    public String signinPage() {
        return "/login";
    }
}
