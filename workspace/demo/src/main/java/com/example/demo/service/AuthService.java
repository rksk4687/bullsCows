package com.example.demo.service;

import com.example.demo.web.dto.auth.SignupReqDto;

public interface AuthService {
	
	public boolean insertAfterValidCheck(SignupReqDto signupReqDto);
	
}
