package com.ssm.handler;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ssm.pojo.Book;
import com.ssm.pojo.Search;
import com.ssm.service.BookService;

@Controller
@RequestMapping("/")
public class BookHandler {

	@Autowired
	private BookService bookServiceImpl;
	
	@RequestMapping("getAllBook")
	public ModelAndView getAllBook(Search sea){
		int curpage = 1;
		if(sea.getCpage()!=null && sea.getCpage()!=""){
			curpage=Integer.valueOf(sea.getCpage());
		}
		PageHelper.startPage(curpage, 4);
		List<Book> list =bookServiceImpl.getAllBook(sea);
		PageInfo<Book> pageInfo = new PageInfo<Book>(list);
		ModelAndView mv = new ModelAndView("searchList");
		mv.addObject("pageInfo",pageInfo);
		if(sea!=null){
			mv.addObject("sea", sea);
		}
		return mv;
	}
	//管理
	@RequestMapping("mngrAllBook")
	public ModelAndView mngrAllBook(Search sea){
		int curpage = 1;
		if(sea.getCpage()!=null && sea.getCpage()!=""){
			curpage=Integer.valueOf(sea.getCpage());
		}
		PageHelper.startPage(curpage, 4);
		List<Book> list =bookServiceImpl.getAllBook(sea);
		PageInfo<Book> pageInfo = new PageInfo<Book>(list);
		ModelAndView mv = new ModelAndView("searchList2");
		mv.addObject("pageInfo",pageInfo);
		if(sea!=null){
			mv.addObject("sea", sea);
		}
		return mv;
	}
	
	@RequestMapping("getHostBook")
	public ModelAndView getHostBook(Search sea){
		int curpage = 1;
		if(sea.getCpage()!=null && sea.getCpage()!=""){
			curpage=Integer.valueOf(sea.getCpage());
		}
		PageHelper.startPage(curpage, 4);
		List<Book> list =bookServiceImpl.getHostBook(sea);
		PageInfo<Book> pageInfo = new PageInfo<Book>(list);
		ModelAndView mv = new ModelAndView("hostList");
		mv.addObject("pageInfo",pageInfo);
		if(sea!=null){
			mv.addObject("sea", sea);
		}
		return mv;
	}
	
	@RequestMapping("addbook")
	public String addbook(Book book){
		bookServiceImpl.addbook(book);
		return "redirect:mngrAllBook";
	}
	
	@RequestMapping("updatebook")
	public ModelAndView updatebook(String bookid){
		ModelAndView mv = new ModelAndView("updatebook");
		Book bk = bookServiceImpl.getBookInfo(bookid);
		mv.addObject("bkinfo", bk);
		return mv;
	}
	
	@RequestMapping("updatebook2")
	public String updatebook2(Book book){
//		System.out.println(book.toString());
		bookServiceImpl.updatebook(book);
		return "redirect:mngrAllBook";
	}
	
}
