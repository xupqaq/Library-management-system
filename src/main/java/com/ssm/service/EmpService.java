package com.ssm.service;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ssm.pojo.Emp;

@Repository
public interface EmpService {

	List<Emp> getEmpList();
}
