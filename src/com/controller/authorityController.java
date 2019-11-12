package com.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pojo.Adminuser;
import com.pojo.Authority;
import com.pojo.Doresponse;
import com.pojo.Newsinfo;
import com.pojo.Userinfo;
import com.service.AdminServiceImpl;
import com.service.AuthorityServiceImpl;
import com.service.MsgServiceImpl;
import com.service.UserServiceImpl;
import com.util.GetHttpInfo;
import com.util.doresponseMsg;

@Controller
@RequestMapping("/authority")
public class authorityController {

	@Autowired
	AuthorityServiceImpl authorityServiceImpl;
	
	@Autowired
	UserServiceImpl userServiceImpl;
	
	@Autowired
	AdminServiceImpl adminServiceImpl;
	
	@Autowired
	Authority authority;
	
	@Autowired
	Adminuser adminuser;
	
	@Autowired
	GetHttpInfo getHttpInfo;
	
	@Autowired
	MsgServiceImpl msgServiceImpl;
	
	@Autowired
	Doresponse doresponse;
	
	@Autowired
	doresponseMsg msg;
	
	@RequestMapping("/getAllToList.do")
	@ResponseBody
	public Map<String,Object> getAllToList(HttpServletRequest request){
		Map<String,Object> map = new HashMap<String,Object>();
		int indexPage = Integer.parseInt(request.getParameter("startIndex"));
		int limitCol = Integer.parseInt(request.getParameter("endIndex"));
		List<Authority> list = authorityServiceImpl.getAllAuthoritybyLimit(indexPage, limitCol);
		int pageCount= authorityServiceImpl.getCount();
		int page = (int) Math.ceil(((double)pageCount/(double)limitCol));
		if(list != null){
			map.put("page", page);
			map.put("list", list);
		}else{
			map.put("msg", "数据获取错误");
		}
		
		return map;
	}
	
//	//模糊查询
//		@RequestMapping("/search.do")
//		@ResponseBody
//		public Map<String,Object> search(HttpServletRequest request){
//			Map<String,Object> map = new HashMap<String,Object>();
//			String Username = request.getParameter("likeUsername");
//			String likeUsername = "%"+Username+"%";
//			System.out.println(likeUsername);
//			startIndex = Integer.parseInt(request.getParameter("startIndex"));
//			endIndex = Integer.parseInt(request.getParameter("endIndex"));
//			List<Newsinfo> list = newsServiceImpl.selectSearch(likeUsername, startIndex, endIndex);
//			CountIndex = newsServiceImpl.selectByLikeCount(likeUsername); //搜索的记录的总记录数
//			if(list != null){
//				map.put("list",list);
//			}
//				
//			return map;
//		}
	
	//更新authority权限的状态,更新了管理员权限就把用户添加到admin表中
	@RequestMapping("/updateAuthority.do")
	@ResponseBody
	public Map<String,Object> updateAuthority(HttpServletRequest request,HttpSession session){
		Map<String,Object> map = new HashMap<String,Object>();
		String username = request.getParameter("username");
		String Colname = request.getParameter("colName");
		String ischeck = request.getParameter("ischecked");
		int result = authorityServiceImpl.updateAuthority(Colname, ischeck, username);
		String adminName = getHttpInfo.getAdminName(session);
		//判断是否修改成功
		if(result > 0){
			if("true".equals(ischeck)){
				//从userinfo中获取名字和密码
				List<Userinfo> list = userServiceImpl.selcetByusername(username);
				if(list != null){
					for(Userinfo u:list){
						adminuser.setLoginname(u.getUsername());
						adminuser.setPassword(u.getPassword());
						System.out.println(u.getUsername());
					}
				}
				
				//添加admin表
				int adminResult = adminServiceImpl.insertAdmin(adminuser);
				if(adminResult>0){
					map.put("msg",true);
					doresponse = msg.doForRsp("修改用户", "修改用户权限"+username,"成功", adminName);
				}else{
					doresponse = msg.doForRsp("修改用户", "修改用户权限"+username,"失败", adminName);
				}
			}else if("false".equals(ischeck)){
				//从admin表中删除
				int adminResult = adminServiceImpl.deleteByUsername(username);
				if(adminResult>0){
					map.put("msg",true);
					doresponse = msg.doForRsp("修改用户", "修改用户权限"+username,"成功", adminName);
				}else{
					doresponse = msg.doForRsp("修改用户", "修改用户权限"+username,"失败", adminName);
				}
			}
		}else{
			doresponse = msg.doForRsp("修改用户", "修改用户权限"+username,"失败", adminName);
		}
		msgServiceImpl.insertMsg(doresponse);
		return map;
	}
	
}
