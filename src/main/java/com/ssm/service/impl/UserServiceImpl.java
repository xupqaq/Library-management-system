package com.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.dao.UserDao;
import com.ssm.pojo.User;
import com.ssm.service.UserService;
@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao dao;
	
	public User loginSys(User u) {
		return dao.loginSys(u);
	}

	@Override
	public void updateform(User u) {
		dao.updateform(u);
	}

	@Override
	public void updatePwd(User u) {
		dao.updatePwd(u);
	}

	@Override
	public List<User> getuser() {
		return dao.getuser();
	}

	@Override
	public User getuser1(String userid) {
		return dao.getuser1(userid);
	}

}
