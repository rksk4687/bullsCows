package com.example.demo.web.dto.auth;

import javax.validation.constraints.NotBlank;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.example.demo.domain.User;

import lombok.Data;

@Data
public class SignupReqDto {
	@NotBlank
	private String userid;
	@NotBlank
	private String password;
	
	public User toUserEntity() {
		return User.builder()
				.userid(userid)
				.password(new BCryptPasswordEncoder().encode(password))
				.build();
	}
}
