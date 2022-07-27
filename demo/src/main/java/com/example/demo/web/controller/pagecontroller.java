package com.example.demo.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class pagecontroller {
	@GetMapping("/signin")
    public String signinPage() {
        return "/signin";
    }
	@GetMapping("/index")
    public String indexPage() {
        return "/index";
    }
	@GetMapping("/signup")
    public String signupPage() {
        return "/signup";
    }
	@PostMapping("/signup")
    public String signup() {
        return "/signin";
    }
	@GetMapping("/game")
    public String gamePage() {
        return "/game";
    }
	@GetMapping("/lobby")
    public String lobbyPage() {
        return "/lobby";
    }
}

