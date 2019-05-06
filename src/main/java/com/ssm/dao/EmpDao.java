package com.ssm.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ssm.pojo.Emp;

@Repository
public interface EmpDao {

	List<Emp> getEmpList();
}
