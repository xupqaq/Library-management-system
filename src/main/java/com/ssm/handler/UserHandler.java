package com.ssm.handler;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ssm.pojo.Book;
import com.ssm.pojo.BookSort;
import com.ssm.pojo.User;
import com.ssm.service.BookSortService;
import com.ssm.service.UserService;
import com.ssm.util.Md5;

@Controller
@RequestMapping("/")
public class UserHandler {

	@Autowired
	private UserService userServiceImpl;
	
	@Autowired
	private BookSortService bookSortServiceImpl;
	
	@ResponseBody
	@RequestMapping("checkuser")
	public void checkuser(String uname,String upwd,HttpServletResponse res) throws IOException{
		User u = new User();
		u.setUserid(uname);
		u.setUpwd(Md5.md5(upwd));
		if(null != userServiceImpl.loginSys(u)){
			res.getWriter().println("true");
		}else{
			res.getWriter().println("false");
		}
		
	}
	
	@RequestMapping("loginSys")
	public ModelAndView loginSys(User u,HttpSession session,HttpServletRequest req){
		if(null!=session.getAttribute("sysuser")){
			ModelAndView mv = new ModelAndView("main");
			List<BookSort> bsort = bookSortServiceImpl.getsort();
			session.setAttribute("bsort", bsort);
			return mv;
		}
		if(null!=u.getUpwd() && null!=u.getUserid()){
			String md5Pwd = Md5.md5(u.getUpwd());
			u.setUpwd(md5Pwd);
			User su = userServiceImpl.loginSys(u);
			if(null!=su){
				ModelAndView mv = new ModelAndView("main");
				List<BookSort> bsort = bookSortServiceImpl.getsort();
				session.setAttribute("bsort", bsort);
				session.setAttribute("sysuser", su);
				return mv;
			}
//			req.setAttribute("logerror", "用户名或密码错误");
			return new ModelAndView("redirect:login.jsp");
		
		}else{
//			req.setAttribute("logerror", "用户名或密码错误");
			return new ModelAndView("redirect:login.jsp");
		}
	}
	
	@RequestMapping("exitSys")
	public String exitSys(HttpSession session){
		session.removeAttribute("sysuser");
		return "redirect:login.jsp";
	}
	
	@RequestMapping("updatePwd")
	public String updatePwd(User u,HttpSession session,HttpServletRequest req){
		String old =Md5.md5(u.getUserid());
		User suser = (User)session.getAttribute("sysuser");
		if(!old.equals(suser.getUpwd())){
			req.setAttribute("isupdate", "修改失败，旧密码错误");
			return "updatePwd";
		}
		String newpwd = Md5.md5(u.getUpwd());
		suser.setUpwd(newpwd);
		userServiceImpl.updatePwd(suser);
		session.setAttribute("sysuser", suser);
		req.setAttribute("isupdate", "修改成功");
		return "updatePwd";
	}
	
	@RequestMapping("updateform")
	public String updateform(User u,HttpSession session){
		User suser = (User)session.getAttribute("sysuser");
		u.setUserid(suser.getUserid());
		userServiceImpl.updateform(u);
		//刷新top.jsp右上角用户名
//		if(!u.getUname().equals(suser.getUname())){
//			
//		session.setAttribute("updateuname", u.getUname());
//		System.out.println("-------------------------------------------"+u.getUname());
//		}
		suser.setUname(u.getUname());
		suser.setClassno(u.getClassno());
		suser.setUsex(u.getUsex());
		suser.setPhone(u.getPhone());
		suser.setUage(u.getUage());
		session.setAttribute("sysuser", suser);
		return "myform";
	}
	
	@RequestMapping("getuser")
	public ModelAndView getuser(Integer cpage){
		int curpage = 1;
		if(cpage!=null){
			curpage=cpage;
		}
		PageHelper.startPage(curpage, 5);
		List<User> list =userServiceImpl.getuser();
		PageInfo<User> pageInfo = new PageInfo<User>(list);
		ModelAndView mv = new ModelAndView("userlist");
		mv.addObject("pageInfo",pageInfo);
		return mv;
	}
	
	@RequestMapping("updateuser")
	public ModelAndView updateuser(String userid){
		User u = userServiceImpl.getuser1(userid);
		ModelAndView mv = new ModelAndView("updateuser");
		mv.addObject("uuser", u);
		return mv;
	}
	
	@RequestMapping("updateuser1")
	public ModelAndView updateuser1(User u){
		userServiceImpl.updateform(u);
		ModelAndView mv = new ModelAndView("redirect:getuser");
		mv.addObject("uuser", u);
		return mv;
	}
	
}
