package com.ssm.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ssm.pojo.User;

@Repository
public interface UserDao {

	User loginSys(User u);
	
	void updateform(User u);
	
	void updatePwd(User u);
	
	List<User> getuser();
	
	User getuser1(@Param(value="userid")String userid);
}
