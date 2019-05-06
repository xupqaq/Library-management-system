package com.ssm.handler;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ssm.pojo.BookSort;
import com.ssm.service.BookSortService;

@Controller
@RequestMapping("/")
public class BookSortHandler {

	@Autowired
	BookSortService bookSortServiceImpl;
	
	@RequestMapping("addsort")
	public String addsort(BookSort sort){
		bookSortServiceImpl.add(sort);
		return "redirect:getsort";
	}
	
	@RequestMapping("getsort")
	public ModelAndView getsort(Integer cpage,HttpSession session){
		int curpage=1;
		if(null!=cpage){
			curpage =cpage;
		}
		PageHelper.startPage(curpage, 5);
		List list1=bookSortServiceImpl.getsort();
		PageInfo<BookSort> pageInfo = new PageInfo<BookSort>(list1);
		ModelAndView mv = new ModelAndView("getsort");
		mv.addObject("pageInfo", pageInfo);
		List<BookSort> bsort = bookSortServiceImpl.getsort();
		session.setAttribute("bsort", bsort);
		return mv;
	}
	
	@RequestMapping("updatesort")
	public ModelAndView updatesort(String sortid,String sortname){
		BookSort bs = new BookSort();
		bs.setSortid(sortid);
		bs.setSortname(sortname);
		ModelAndView mv = new ModelAndView("updatesort");
		mv.addObject("bs",bs);
		return mv;
	}
	
	@RequestMapping("updatesort1")
	public String updatesort1(BookSort sort){
		bookSortServiceImpl.updatesort(sort);
		return "redirect:getsort";
	}
	
	@RequestMapping("delsort")
	public String delsort(String sortid){
		bookSortServiceImpl.del(sortid);
		return "redirect:getsort";
	}
	
}
