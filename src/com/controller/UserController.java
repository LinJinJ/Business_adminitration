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
	
	//��¼����
	@RequestMapping("/login.do")
	@ResponseBody
	public Map<String,Object> login(HttpServletRequest request,HttpSession session){
		Map<String,Object> map = new HashMap<String,Object>();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		userinfo = userServiceImpl.login(username, password);
		if(userinfo != null){
			//�ж��û����Ƿ�Ϊ����Ա
			List<Adminuser> list = adminServiceImpl.selectByAll();
			for(Adminuser adminUser:list){
				if(username.equals(adminUser.getLoginname())){
					map.put("admin", true);
				}
			}
			map.put("msg", "��¼�ɹ���");
			map.put("username",username);
			map.put("displayPageToOther", "page/userIndex/huaweiEnterprise.jsp");
			map.put("displayPageToIE", "huaweiEnterprise.jsp");
		}else{
			map.put("msg","�û������������");
			map.put("displayPageToOther", "page/userIndex/userlogin.jsp");
			map.put("displayPageToIE", "userlogin.jsp");
		}
		return map;
	}
	
	
	//ģ������
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
		CountIndex = userServiceImpl.selectByLikeCount(likeUsername); //�����ļ�¼���ܼ�¼��
		if(list != null){
			map.put("list",list);
		}
		return map;
	}
	
	
	//����û����Ƿ����
	@RequestMapping("/checkuser.do")
	@ResponseBody
	public Map<String,Object> check(HttpServletRequest request,HttpSession session){
		Map<String,Object> map = new HashMap<String,Object>();
		boolean result = true;
		String username = request.getParameter("username");
		
		List<Userinfo>  userlist = userServiceImpl.checkByUserName();
		//�ж�username�Ƿ���������ݿ���
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
//		//����Ƿ�Ϊ����Ա�˺�
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
	
	//��ѯ��ʾ
	@RequestMapping("/listuser.do")
	@ResponseBody
	public Map<String, Object> query(HttpServletRequest request){
//		System.out.println("���˲�ѯ���û���");
		List<Userinfo> list = new ArrayList<Userinfo>();
//		System.out.println("��ʼǰ��"+request.getParameter("startIndex"));
//		System.out.println("������ֵ"+request.getParameter("endIndex"));
		//list = userServiceImpl.selectAllUser();//��ѯȫ��
		startIndex = Integer.parseInt(request.getParameter("startIndex")); //��ʼ��ѯ��
		endIndex = Integer.parseInt(request.getParameter("endIndex"));  //������ѯ��
		Map<String, Object> map = new HashMap<String, Object>();
		list = userServiceImpl.showlist(startIndex, endIndex); //��ҳ��ѯ
		CountIndex = userServiceImpl.findByCont(); //�ܼ�¼��
		map.put("list", list);
		return map;
	}
	
	//ɾ��
	@RequestMapping("/deleteUser.do")
	@ResponseBody
	public Map<String, Object> deleteUser(HttpServletRequest request,HttpSession session){
		Map<String, Object> map = new HashMap<String, Object>();
		int id = Integer.parseInt(request.getParameter("id"));
		String username = request.getParameter("username");
		int result = userServiceImpl.deldeteUser(id);
		
		String adminName = getHttpInfo.getAdminName(session);
		
		if(result > 0){
			doresponse = msg.doForRsp("ɾ���û�", "ɾ���û�"+username,"�ɹ�", adminName);
			msgServiceImpl.insertMsg(doresponse);
			map.put("startIndex", startIndex);
			map.put("success", "ɾ���ɹ���");
		}else{
			doresponse = msg.doForRsp("ɾ���û�", "ɾ���û�"+username,"ʧ��", adminName);
			msgServiceImpl.insertMsg(doresponse);
		}
		return map;
		
	}
	
	//�����û�
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
			doresponse = msg.doForRsp("�����û�", "�޸��û�"+username,"�ɹ�",""+adminName);
			msgServiceImpl.insertMsg(doresponse);
		}else{
			doresponse = msg.doForRsp("�����û�", "�޸��û�"+username,"ʧ��", adminName);
			mv.setViewName("main/user_admin");
			msgServiceImpl.insertMsg(doresponse);
		}
		return mv;
	}
	
	
	//����û�
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
			doresponse = msg.doForRsp("����û�", "����û�"+username,"�ɹ�",""+adminName);
			msgServiceImpl.insertMsg(doresponse);
		}else{
			doresponse = msg.doForRsp("����û�", "����û�"+username,"ʧ��", adminName);
			msgServiceImpl.insertMsg(doresponse);
		}
		map.put("username",username);
		map.put("displayUrl","page/main/user_admin.jsp");
		return map;
	}
	
	
	//��ҳ
	@RequestMapping("/getPage.do")
	@ResponseBody
	public Map<String, Object> getPage(){
		/*Map<String, Object> map = new HashMap<String, Object>();
		List<Object> page = new ArrayList<Object>();
		int CountIndex = userServiceImpl.findByCont(); //�ܼ�¼��
		int j = CountIndex%5;
		int CountPage = CountIndex/5; //��ҳ��
		if(j > 0){
			CountPage += 1;
		}
		int nowIndex = startIndex/5;
		System.out.println("�û���ǰҳ��Ϊ��"+nowIndex);
		
		page.add(CountIndex);
		page.add(CountPage);
		page.add(nowIndex);
		map.put("page", page);
		return map;*/
		return page.getPage(CountIndex, endIndex, startIndex);
	}
	
	
	
	
}
