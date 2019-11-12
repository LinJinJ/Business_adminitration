package com.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.pojo.Adminuser;
import com.service.AdminServiceImpl;

@Controller
@RequestMapping("/admin")
public class adminLogin {

//	public adminLogin(){
//		
//		System.out.println("≥ı ºªØ°£°£°£");
//	}
	
	@Resource
	private AdminServiceImpl adminServiceImpl;
	
	//µ«¬º≤Ÿ◊˜
	
	@RequestMapping("/login.do")
	@ResponseBody
	public ModelAndView login(HttpServletRequest request,HttpSession session){
		ModelAndView mv = new ModelAndView();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		System.out.println("username:"+username);
		try {
			Adminuser adminuser = adminServiceImpl.login(username, password);
			if(adminuser != null){
				session.setAttribute("loginName", username);
				mv.addObject("adminuser",adminuser);
				mv.addObject("adminuser_name", adminuser.getLoginname());
				mv.setViewName("main/Main");
				request.removeAttribute("msg");
			}else{
//				mv.addObject("msg", "√‹¬ÎªÚ’À∫≈¥ÌŒÛ£°");
				request.setAttribute("msg","√‹¬ÎªÚ’À∫≈¥ÌŒÛ£°" );
//				mv.setViewName("loginPage/login");
				return new ModelAndView("forward:/page/loginPage/login.jsp");
				
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return mv;
	}
	
}
