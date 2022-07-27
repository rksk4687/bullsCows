package com.example.demo;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface UserMapper {

    @Select("SELECT * FROM test")
    List<User> findAll();

    @Select("SELECT * FROM test WHERE usernum = #{usernum}")
    User findByUserNum(@Param("usernum") int usernum);
}