package com.example.demo.domain;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class User {
	private int usernum;
	private String userid;
	private String password;
	private String role;
}
