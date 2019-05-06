package com.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.dao.EmpDao;
import com.ssm.pojo.Emp;
import com.ssm.service.EmpService;

@Service
public class EmpServiceImpl implements EmpService {
	@Autowired
	private EmpDao empDao;

	public List<Emp> getEmpList() {
		return empDao.getEmpList();
	}

	

}
