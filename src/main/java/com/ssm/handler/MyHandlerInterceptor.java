package com.ssm.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class MyHandlerInterceptor implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		
	}

	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse res, Object arg2) throws Exception {
		if(req.getSession().getAttribute("sysuser")!=null){
			String path =req.getRequestURI();
			/*System.out.println("RequestedSessionId:" + req.getRequestedSessionId());
			System.out.println("RequestURI:" + req.getRequestURI());
			System.out.println("RequestURL:" + req.getRequestURL());*/
			return true;
		}else{
			res.getWriter().println("<script>alert('请登录');window.parent.location.href='login.jsp'</script>");
			return false;
		}
	}

}
