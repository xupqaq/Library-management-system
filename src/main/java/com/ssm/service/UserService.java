package com.ssm.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ssm.pojo.User;

@Repository
public interface UserService {
	
	User loginSys(User u);
	
	void updateform(User u);
	
	void updatePwd(User u);
	
	List<User> getuser();
	
	User getuser1(String userid);
}
