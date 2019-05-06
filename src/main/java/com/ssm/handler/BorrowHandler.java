package com.ssm.handler;

import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ssm.pojo.Book;
import com.ssm.pojo.Borrow;
import com.ssm.pojo.User;
import com.ssm.service.BookService;
import com.ssm.service.BorrowService;

@Controller
@RequestMapping("/")
public class BorrowHandler {
	@Autowired
	BookService bookServiceImpl;
	@Autowired
	BorrowService borrowServiceImpl;
	
	@RequestMapping("myborrow")
	public ModelAndView getMyBorrow(Integer cpage,HttpSession session){
		int curpage = 1;
		if(cpage!=null){
			curpage=cpage;
		}
		User u = (User)session.getAttribute("sysuser");
		PageHelper.startPage(curpage, 5);
		List<Borrow> list =borrowServiceImpl.getMyBorrow(u);
		PageInfo<Borrow> pageInfo = new PageInfo<Borrow>(list);
		ModelAndView mv = new ModelAndView("myborrow");
		List<Book> list2 = bookServiceImpl.getBookName(u);
		mv.addObject("pageInfo",pageInfo);
		mv.addObject("bkname",list2);
		return mv;
	}
	
	@RequestMapping("borrowlist")
	public ModelAndView getBorrowList(Integer cpage,HttpSession session){
		int curpage = 1;
		if(cpage!=null){
			curpage=cpage;
		}
		User u = (User)session.getAttribute("sysuser");
		PageHelper.startPage(curpage, 5);
		List<Borrow> list =borrowServiceImpl.getBorrowList(u);
		PageInfo<Borrow> pageInfo = new PageInfo<Borrow>(list);
		ModelAndView mv = new ModelAndView("borrowlist");
		List<Book> list2 = bookServiceImpl.getBookName(u);
		mv.addObject("pageInfo",pageInfo);
		mv.addObject("bkname",list2);
		return mv;
	}
	
	@RequestMapping("borrowbook")
	public String borrowbook(String bookid,HttpSession session){
		User u = (User)session.getAttribute("sysuser");
		List<Borrow> exist = borrowServiceImpl.isBorrowed(u.getUserid(),bookid);
		List<Borrow> existnum = borrowServiceImpl.isBorrow(u.getUserid());
		if(exist.size()>0){
			session.setAttribute("borrowerr", "这本书你已经借过，请归还后再借！");
			return "redirect:getHostBook";
		}
		if(existnum.size()>=5){
			session.setAttribute("borrowerr", "1人最多借5本书！");
			return "redirect:getAllBook";
		}
//		System.out.println("-----------------------------------------"+exist.size());
		Calendar cal = Calendar.getInstance(Locale.CHINA);
		cal.add(Calendar.MONTH,1);
		Date returntime = cal.getTime();
		bookServiceImpl.decBookNum(bookid);
		borrowServiceImpl.borrowBook(u.getUserid(), bookid, returntime);
		session.setAttribute("borrowerr", "借书成功！");
		return "redirect:getAllBook";
	}
	
	@RequestMapping("borrowbooks")
	public String borrowbooks(String bookid,HttpSession session){
		User u = (User)session.getAttribute("sysuser");
		List<Borrow> exist = borrowServiceImpl.isBorrowed(u.getUserid(),bookid);
		List<Borrow> existnum = borrowServiceImpl.isBorrow(u.getUserid());
		if(exist.size()>0){
			session.setAttribute("borrowerr", "这本书你已经借过，请归还后再借！");
			return "redirect:getHostBook";
		}
		if(existnum.size()>=5){
			session.setAttribute("borrowerr", "1人最多借5本书！");
			return "redirect:getAllBook";
		}
		Calendar cal = Calendar.getInstance(Locale.CHINA);
		cal.add(Calendar.MONTH,1);
		Date returntime = cal.getTime();
		bookServiceImpl.decBookNum(bookid);
		borrowServiceImpl.borrowBook(u.getUserid(), bookid, returntime);
		session.setAttribute("borrowerr", "借书成功！");
		return "redirect:getHostBook";
	}
	
	@RequestMapping("returnbook")
	public String returnbook(String borrowid,String bookid,HttpSession session){
		bookServiceImpl.addBookNum(bookid);
		borrowServiceImpl.returnBook(borrowid);
		session.setAttribute("returnbk", "还书成功！");
		return "redirect:borrowlist";
	}
	
	@RequestMapping("returnbooks")
	public String returnbooks(String borrowid,String bookid,HttpSession session){
		bookServiceImpl.addBookNum(bookid);
		borrowServiceImpl.returnBook(borrowid);
		session.setAttribute("returnbk", "还书成功！");
		return "redirect:myborrow";
	}

}
