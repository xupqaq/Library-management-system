package com.ssm.handler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ssm.pojo.Emp;
import com.ssm.service.EmpService;

@Controller
@RequestMapping("/")
public class EmpHandler {

	@Autowired
	private EmpService empServiceImpl; 
	
	@RequestMapping("empSys")
	public ModelAndView getEmp(){
		List<Emp> list = empServiceImpl.getEmpList();
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", list);
		return mv;
	}
}
