package com.example.demo.web.controller;

import org.springframework.security.core.session.SessionRegistry;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.demo.config.auth.PrincipalDetails;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class pagecontroller {
	
	private final SessionRegistry sessionRegistry;
	
	@GetMapping("/signin")
    public String signinPage() {
        return "/signin";
    }
	@GetMapping({"/index", "/"})
    public String indexPage() {
        return "/index";
    }
	@GetMapping("/signup")
    public String signupPage() {
        return "/signup";
    }
	@GetMapping("/game")
    public String gamePage() {
        return "/game";
    } 
	@GetMapping("/lobby")
    public String lobbyPage(Model model) {
		model.addAttribute("currSession", sessionRegistry.getAllPrincipals().stream().map(o->((PrincipalDetails)o).getUsername()).toList());
        return "/lobby";
    }
}

