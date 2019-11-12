package com.util;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;

import com.pojo.Userinfo;

@Component
public class GetHttpInfo {
	
	private String adminName = "";
	
	public String getAdminName(HttpSession session){
		if(session.getAttribute("loginName") == null){
			adminName = "用户注册";
		}else{
			adminName = session.getAttribute("loginName").toString();
		}
		return adminName;
	}
	
//	public Map<String,Object> search(HttpServletRequest request){
//		Map<String,Object> map = new HashMap<String,Object>();
//		String Username = request.getParameter("likeUsername");
//		String likeUsername = "%"+Username+"%";
//		System.out.println(likeUsername);
//		startIndex = Integer.parseInt(request.getParameter("startIndex"));
//		endIndex = Integer.parseInt(request.getParameter("endIndex"));
//		List<Userinfo> list = userServiceImpl.selectSearch(likeUsername, startIndex, endIndex);
//		CountIndex = userServiceImpl.selectByLikeCount(likeUsername); //搜索的记录的总记录数
//		if(list != null){
//			map.put("list",list);
//		}
//		
//		return map;
//	}
	
}
