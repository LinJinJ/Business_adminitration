package com.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.pojo.Adminuser;
import com.pojo.Doresponse;
import com.pojo.Userinfo;
import com.service.AdminServiceImpl;
import com.service.MsgServiceImpl;
import com.service.UserServiceImpl;
import com.util.GetHttpInfo;
import com.util.PageBean;
import com.util.doresponseMsg;

@Controller
@RequestMapping("/user")
public class UserController {


	@Autowired
	UserServiceImpl userServiceImpl; 
	
	@Autowired
	MsgServiceImpl msgServiceImpl;
	
	@Autowired
	AdminServiceImpl adminServiceImpl;
	
	@Autowired
	Userinfo userinfo ;
	
	@Autowired
	Doresponse doresponse;
	
	@Autowired
	doresponseMsg msg;
	
	@Autowired
	PageBean page;
	
	@Autowired
	GetHttpInfo getHttpInfo;
	
	private int startIndex,endIndex;
	
	int CountIndex;
	
	//登录操作
	@RequestMapping("/login.do")
	@ResponseBody
	public Map<String,Object> login(HttpServletRequest request,HttpSession session){
		Map<String,Object> map = new HashMap<String,Object>();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		userinfo = userServiceImpl.login(username, password);
		if(userinfo != null){
			//判断用户名是否为管理员
			List<Adminuser> list = adminServiceImpl.selectByAll();
			for(Adminuser adminUser:list){
				if(username.equals(adminUser.getLoginname())){
					map.put("admin", true);
				}
			}
			map.put("msg", "登录成功！");
			map.put("username",username);
			map.put("displayPageToOther", "page/userIndex/huaweiEnterprise.jsp");
			map.put("displayPageToIE", "huaweiEnterprise.jsp");
		}else{
			map.put("msg","用户名或密码错误！");
			map.put("displayPageToOther", "page/userIndex/userlogin.jsp");
			map.put("displayPageToIE", "userlogin.jsp");
		}
		return map;
	}
	
	
	//模糊搜索
	@RequestMapping("/search.do")
	@ResponseBody
	public Map<String,Object> search(HttpServletRequest request){
		Map<String,Object> map = new HashMap<String,Object>();
		String Username = request.getParameter("likeUsername");
		String likeUsername = "%"+Username+"%";
		System.out.println(likeUsername);
		startIndex = Integer.parseInt(request.getParameter("startIndex"));
		endIndex = Integer.parseInt(request.getParameter("endIndex"));
		List<Userinfo> list = userServiceImpl.selectSearch(likeUsername, startIndex, endIndex);
		CountIndex = userServiceImpl.selectByLikeCount(likeUsername); //搜索的记录的总记录数
		if(list != null){
			map.put("list",list);
		}
		return map;
	}
	
	
	//检查用户名是否存在
	@RequestMapping("/checkuser.do")
	@ResponseBody
	public Map<String,Object> check(HttpServletRequest request,HttpSession session){
		Map<String,Object> map = new HashMap<String,Object>();
		boolean result = true;
		String username = request.getParameter("username");
		
		List<Userinfo>  userlist = userServiceImpl.checkByUserName();
		//判断username是否存在在数据库中
		for (Userinfo u : userlist) {
            if (u.getUsername().equals(username)) {
                result = false;
                
                break;
            }
        }
		map.put("valid",result);
		return map;
	}
	
//	@RequestMapping("/isAdmin")
//	@ResponseBody
//	public Map<String,Object> isAdminCheck(HttpServletRequest request){
//		Map<String,Object> map = new HashMap<String,Object>();
//		boolean result = true;
//		String username = request.getParameter("username");
//		//检测是否为管理员账号
//		List<Adminuser> adminlist = adminServiceImpl.selectByAll();
//			for(Adminuser adminUser:adminlist){
//				if(username.equals(adminUser.getLoginname())){
//					result = true;
//					map.put("valid", result);
//					break;
//				}
//			}
//		return map;	
//	}
	
	//查询显示
	@RequestMapping("/listuser.do")
	@ResponseBody
	public Map<String, Object> query(HttpServletRequest request){
//		System.out.println("有人查询了用户表");
		List<Userinfo> list = new ArrayList<Userinfo>();
//		System.out.println("开始前标"+request.getParameter("startIndex"));
//		System.out.println("结束标值"+request.getParameter("endIndex"));
		//list = userServiceImpl.selectAllUser();//查询全部
		startIndex = Integer.parseInt(request.getParameter("startIndex")); //开始查询点
		endIndex = Integer.parseInt(request.getParameter("endIndex"));  //结束查询点
		Map<String, Object> map = new HashMap<String, Object>();
		list = userServiceImpl.showlist(startIndex, endIndex); //分页查询
		CountIndex = userServiceImpl.findByCont(); //总记录数
		map.put("list", list);
		return map;
	}
	
	//删除
	@RequestMapping("/deleteUser.do")
	@ResponseBody
	public Map<String, Object> deleteUser(HttpServletRequest request,HttpSession session){
		Map<String, Object> map = new HashMap<String, Object>();
		int id = Integer.parseInt(request.getParameter("id"));
		String username = request.getParameter("username");
		int result = userServiceImpl.deldeteUser(id);
		
		String adminName = getHttpInfo.getAdminName(session);
		
		if(result > 0){
			doresponse = msg.doForRsp("删除用户", "删除用户"+username,"成功", adminName);
			msgServiceImpl.insertMsg(doresponse);
			map.put("startIndex", startIndex);
			map.put("success", "删除成功！");
		}else{
			doresponse = msg.doForRsp("删除用户", "删除用户"+username,"失败", adminName);
			msgServiceImpl.insertMsg(doresponse);
		}
		return map;
		
	}
	
	//更新用户
	@RequestMapping("/userUpdate.do")
	public ModelAndView updateUser(HttpServletRequest request,HttpSession session){
		ModelAndView mv = new ModelAndView();
		int id = Integer.parseInt(request.getParameter("userid"));
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String address = request.getParameter("useraddress");
		String email = request.getParameter("useremail");
		String phone = request.getParameter("userphone");
		//String rg_time = request.getParameter("rg_time");
		
		userinfo.setId(id);
		userinfo.setUsername(username);
		userinfo.setPassword(password);;
		userinfo.setAddress(address);
		userinfo.setEmail(email);
		userinfo.setPhone(phone);
		//userinfo.setRgTime(rgTime);
		
		int result = userServiceImpl.updateUser(userinfo);
		
		String adminName = getHttpInfo.getAdminName(session);
		
		if(result > 0){
			mv.setViewName("main/user_admin");
			doresponse = msg.doForRsp("更新用户", "修改用户"+username,"成功",""+adminName);
			msgServiceImpl.insertMsg(doresponse);
		}else{
			doresponse = msg.doForRsp("更新用户", "修改用户"+username,"失败", adminName);
			mv.setViewName("main/user_admin");
			msgServiceImpl.insertMsg(doresponse);
		}
		return mv;
	}
	
	
	//添加用户
	@RequestMapping({"/insertUser.do","/register.do"})
	@ResponseBody
	public Map<String,Object> insertUser(HttpServletRequest request,HttpSession session){
		Map<String,Object> map = new HashMap<String,Object>();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String address = request.getParameter("useraddress");
		String email = request.getParameter("useremail");
		String phone = request.getParameter("userphone");
		Date  date = new Date();
		
		userinfo.setUsername(username);
		userinfo.setPassword(password);;
		userinfo.setAddress(address);
		userinfo.setEmail(email);
		userinfo.setPhone(phone);
		userinfo.setRgTime(date);
		
		int result = userServiceImpl.insertUser(userinfo);
		
		String adminName = getHttpInfo.getAdminName(session);
		
		if(result > 0){
			doresponse = msg.doForRsp("添加用户", "添加用户"+username,"成功",""+adminName);
			msgServiceImpl.insertMsg(doresponse);
		}else{
			doresponse = msg.doForRsp("添加用户", "添加用户"+username,"失败", adminName);
			msgServiceImpl.insertMsg(doresponse);
		}
		map.put("username",username);
		map.put("displayUrl","page/main/user_admin.jsp");
		return map;
	}
	
	
	//分页
	@RequestMapping("/getPage.do")
	@ResponseBody
	public Map<String, Object> getPage(){
		/*Map<String, Object> map = new HashMap<String, Object>();
		List<Object> page = new ArrayList<Object>();
		int CountIndex = userServiceImpl.findByCont(); //总记录数
		int j = CountIndex%5;
		int CountPage = CountIndex/5; //总页数
		if(j > 0){
			CountPage += 1;
		}
		int nowIndex = startIndex/5;
		System.out.println("用户表当前页数为："+nowIndex);
		
		page.add(CountIndex);
		page.add(CountPage);
		page.add(nowIndex);
		map.put("page", page);
		return map;*/
		return page.getPage(CountIndex, endIndex, startIndex);
	}
	
	
	
	
}
