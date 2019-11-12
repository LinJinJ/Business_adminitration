package com.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
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

import com.pojo.Doresponse;
import com.pojo.Newsinfo;
import com.pojo.Product;
import com.service.MsgServiceImpl;
import com.service.NewsServiceImpl;
import com.util.GetHttpInfo;
import com.util.PageBean;
import com.util.doresponseMsg;

@Controller
@RequestMapping("/News")
public class newsController {

	//����service
	@Autowired
	NewsServiceImpl newsServiceImpl;
	
	//������
	@Autowired
	Newsinfo newsinfo;
	
	//������
	@Autowired
	Doresponse doresponse;
	
	//��Ϣservice
	@Autowired
	MsgServiceImpl msgServiceImpl;
	
	//������Ϣ
	@Autowired
	doresponseMsg msg;
	
	//��ҳ
	@Autowired
	PageBean page;
	
	@Autowired
	GetHttpInfo getHttpInfo;
	
	int CountIndex ;
	
	private int startIndex,endIndex;
	
	//��ѯ��ʾ������JSON���ݸ������̨�б�
	@RequestMapping("/getNews.do")
	@ResponseBody
	public Map<String, Object> getNews(HttpServletRequest request){
		System.out.println("���˲�ѯ�������б�");
		List<Newsinfo> list = new ArrayList<Newsinfo>();
		startIndex = Integer.parseInt(request.getParameter("startIndex"));
		endIndex = Integer.parseInt(request.getParameter("endIndex"));
		Map<String, Object> map = new HashMap<String, Object>();
		list = newsServiceImpl.showlistNews(startIndex, endIndex);
//		int pageCount= newsServiceImpl.countPage();
		
		CountIndex = newsServiceImpl.countPage(); //�ܼ�¼��
		int page = (int) Math.ceil(((double)CountIndex/(double)endIndex));
		map.put("page", page);
		map.put("list", list);
		return map;
	}
	
	
	//ģ����ѯ
	@RequestMapping("/search.do")
	@ResponseBody
	public Map<String,Object> search(HttpServletRequest request){
		Map<String,Object> map = new HashMap<String,Object>();
		String Username = request.getParameter("likeUsername");
		String likeUsername = "%"+Username+"%";
		System.out.println(likeUsername);
		startIndex = Integer.parseInt(request.getParameter("startIndex"));
		endIndex = Integer.parseInt(request.getParameter("endIndex"));
		List<Newsinfo> list = newsServiceImpl.selectSearch(likeUsername, startIndex, endIndex);
		CountIndex = newsServiceImpl.selectByLikeCount(likeUsername); //�����ļ�¼���ܼ�¼��
		if(list != null){
			map.put("list",list);
		}
			
		return map;
	}
	
	@RequestMapping("/getNewsData.do")
	@ResponseBody
	public Map<String, Object> listNews(HttpServletRequest request){
		Map<String, Object> map = new HashMap<String, Object>();
		List<Newsinfo> newsList = new ArrayList<Newsinfo>();
		newsList = newsServiceImpl.showAll();
		map.put("newsList", newsList);
		return map;
	}
	
	@RequestMapping("/updateNews.do")
	public ModelAndView updateNews(HttpServletRequest request,HttpSession session) throws ParseException{
		ModelAndView mv = new ModelAndView();
		int id = Integer.parseInt(request.getParameter("newsId"));
		String title = request.getParameter("newsTitle");
		String newsintime = request.getParameter("newsInTime");
		String content = request.getParameter("newsContent");
		
		//��������
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date newsTime  = new Date();
		try {
			newsTime = sdf.parse(newsintime);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		newsinfo.setId(id);
		newsinfo.setTitle(title);
		newsinfo.setInputtime(newsTime);
		newsinfo.setContent(content);
		
		
		int result = newsServiceImpl.updateNews(newsinfo);
		String adminName = getHttpInfo.getAdminName(session);
		
		//System.out.println("adminName:"+adminName);
		if(result > 0){
			mv.setViewName("main/news_admin");
			doresponse = msg.doForRsp("��������", "�޸�����"+id,"�ɹ�",""+adminName);
			msgServiceImpl.insertMsg(doresponse);
			//System.out.println("msgServiceImpl������ݳɹ�");
		}else{
			doresponse = msg.doForRsp("��������", "�޸�����"+id,"ʧ��", adminName);
			mv.setViewName("main/news_admin");
			msgServiceImpl.insertMsg(doresponse);
		}
		return mv;
	}
	
	
	//ɾ��
	@RequestMapping("/deleteNews.do")
	@ResponseBody
	public Map<String, Object> deleteNews(HttpSession session,HttpServletRequest request){
		Map<String, Object> map = new HashMap<String, Object>();
		int id = Integer.parseInt(request.getParameter("id"));
		int result = newsServiceImpl.deleteNews(id);
		
		String adminName = getHttpInfo.getAdminName(session);
		
		if(result > 0){
			doresponse = msg.doForRsp("ɾ������", "ɾ������"+id,"�ɹ�",""+adminName);
			msgServiceImpl.insertMsg(doresponse);
			map.put("startIndex", startIndex);
			map.put("success", "ɾ���ɹ���");
		}else{
			doresponse = msg.doForRsp("ɾ������", "ɾ������"+id,"ʧ��",""+adminName);
			msgServiceImpl.insertMsg(doresponse);
			map.put("success", "ɾ��ʧ�ܣ�");
		}
		
		return map;
	}
	
	@RequestMapping("/insertNews.do")
	public ModelAndView insertNews(HttpSession session,HttpServletRequest request) throws ParseException{
		ModelAndView mv = new ModelAndView();
		String title = request.getParameter("newsTitle");
		String newsintime = request.getParameter("newsInTime");
		String content = request.getParameter("newsContent");
		
		
		//��������  �˴���ֵ����
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date newsTime  = new Date();
		try {
			newsTime = sdf.parse(newsintime);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		newsinfo.setTitle(title);
		newsinfo.setInputtime(newsTime);
		newsinfo.setContent(content);
		
		
		int result = newsServiceImpl.addNews(newsinfo);
		
		String adminName = getHttpInfo.getAdminName(session);
			
		//System.out.println("adminName:"+adminName);
		if(result > 0){
			mv.setViewName("main/news_admin");
			doresponse = msg.doForRsp("�������", "���һ������","�ɹ�",""+adminName);
			msgServiceImpl.insertMsg(doresponse);
			//System.out.println("msgServiceImpl������ݳɹ�");
		}else{
			doresponse = msg.doForRsp("�������", "���һ������","ʧ��", adminName);
			mv.setViewName("main/news_admin");
			msgServiceImpl.insertMsg(doresponse);
		}
		
		
		return mv;
	}
	
	//��ҳ
		@RequestMapping("/getPage")
		@ResponseBody
		public Map<String, Object> getPage(){
			
			return page.getPage(CountIndex, endIndex, startIndex);
		}
	
		
	//��ȡ	
}
