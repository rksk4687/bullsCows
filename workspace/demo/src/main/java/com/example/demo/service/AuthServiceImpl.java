package com.example.demo.service;

import org.springframework.stereotype.Service;

import com.example.demo.domain.User;
import com.example.demo.domain.UserRepository;
import com.example.demo.web.dto.auth.SignupReqDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class AuthServiceImpl implements AuthService {
	
	private final UserRepository userRepository;
	
	@Override
	public boolean insertAfterValidCheck(SignupReqDto signupReqDto) {
		int checkUsernameResult = userRepository.checkUseridByUserid(signupReqDto.getUserid());
		if(checkUsernameResult == 0) {
			User user = signupReqDto.toUserEntity();
			user.setRole("ROLE_USER");
			userRepository.insertUser(user);
			return true;
		}
		return false;
	}
}
