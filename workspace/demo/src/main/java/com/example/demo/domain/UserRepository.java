package com.example.demo.domain;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserRepository {
	
	public User getUserByUsername(String userid);
	public int checkUseridByUserid(String userid);
	public boolean insertUser(User user);

}
