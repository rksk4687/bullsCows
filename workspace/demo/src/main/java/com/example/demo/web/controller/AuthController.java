package com.example.demo.web.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.service.AuthService;
import com.example.demo.web.dto.auth.SignupReqDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
public class AuthController {
	
	private final AuthService authService;

	@PostMapping("/signup")
	public boolean signup(SignupReqDto signupReqDto, HttpServletRequest request) throws ServletException {
		return authService.insertAfterValidCheck(signupReqDto);
	}
	
}
