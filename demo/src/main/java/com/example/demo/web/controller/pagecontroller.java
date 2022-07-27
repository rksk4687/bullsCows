package com.example.demo.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.demo.User;
import com.example.demo.UserMapper;

@Controller
public class pagecontroller {
	@Autowired
	UserMapper userMapper;
	private static final Logger logger = LoggerFactory.getLogger(pagecontroller.class);
	
	@GetMapping("/signin")
    public String signinPage() {
        return "/signin";
    }
	@GetMapping("/index")
    public String indexPage() {
		for (User user : userMapper.findAll()) {
			logger.info(user.getUserid());
		}
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

