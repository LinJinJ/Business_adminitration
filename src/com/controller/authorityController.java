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
			map.put("msg", "���ݻ�ȡ����");
		}
		
		return map;
	}
	
//	//ģ����ѯ
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
//			CountIndex = newsServiceImpl.selectByLikeCount(likeUsername); //�����ļ�¼���ܼ�¼��
//			if(list != null){
//				map.put("list",list);
//			}
//				
//			return map;
//		}
	
	//����authorityȨ�޵�״̬,�����˹���ԱȨ�޾Ͱ��û���ӵ�admin����
	@RequestMapping("/updateAuthority.do")
	@ResponseBody
	public Map<String,Object> updateAuthority(HttpServletRequest request,HttpSession session){
		Map<String,Object> map = new HashMap<String,Object>();
		String username = request.getParameter("username");
		String Colname = request.getParameter("colName");
		String ischeck = request.getParameter("ischecked");
		int result = authorityServiceImpl.updateAuthority(Colname, ischeck, username);
		String adminName = getHttpInfo.getAdminName(session);
		//�ж��Ƿ��޸ĳɹ�
		if(result > 0){
			if("true".equals(ischeck)){
				//��userinfo�л�ȡ���ֺ�����
				List<Userinfo> list = userServiceImpl.selcetByusername(username);
				if(list != null){
					for(Userinfo u:list){
						adminuser.setLoginname(u.getUsername());
						adminuser.setPassword(u.getPassword());
						System.out.println(u.getUsername());
					}
				}
				
				//���admin��
				int adminResult = adminServiceImpl.insertAdmin(adminuser);
				if(adminResult>0){
					map.put("msg",true);
					doresponse = msg.doForRsp("�޸��û�", "�޸��û�Ȩ��"+username,"�ɹ�", adminName);
				}else{
					doresponse = msg.doForRsp("�޸��û�", "�޸��û�Ȩ��"+username,"ʧ��", adminName);
				}
			}else if("false".equals(ischeck)){
				//��admin����ɾ��
				int adminResult = adminServiceImpl.deleteByUsername(username);
				if(adminResult>0){
					map.put("msg",true);
					doresponse = msg.doForRsp("�޸��û�", "�޸��û�Ȩ��"+username,"�ɹ�", adminName);
				}else{
					doresponse = msg.doForRsp("�޸��û�", "�޸��û�Ȩ��"+username,"ʧ��", adminName);
				}
			}
		}else{
			doresponse = msg.doForRsp("�޸��û�", "�޸��û�Ȩ��"+username,"ʧ��", adminName);
		}
		msgServiceImpl.insertMsg(doresponse);
		return map;
	}
	
}
