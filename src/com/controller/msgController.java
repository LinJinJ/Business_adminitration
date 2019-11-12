package com.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pojo.Doresponse;
import com.service.MsgServiceImpl;
import com.util.PageBean;


@Controller
@RequestMapping("/msg")
public class msgController {

	@Autowired
	MsgServiceImpl msgServiceImpl;
	
	@Autowired
	PageBean page;
	
	int startIndex,endIndex;
	
	@RequestMapping("/responseMsg.do")
	@ResponseBody
	public Map<String, Object> getResponseMsg(HttpServletRequest request,HttpServletResponse response,HttpSession session){
		Map<String, Object> map = new HashMap<String, Object>();
		
		//System.out.println("��ʼǰ��"+request.getParameter("startIndex"));
		//System.out.println("������ֵ"+request.getParameter("endIndex"));
		startIndex = Integer.parseInt(request.getParameter("startIndex")); //��ʼ��ѯ��
		endIndex = Integer.parseInt(request.getParameter("endIndex"));  //������ѯ��
		List<Doresponse> list = msgServiceImpl.showlist(startIndex,endIndex); //��ҳ��ѯ
		map.put("responseMsg", list); //��ҳ��ѯ�������JSON
		return map;
	}
	
	
	
	//��ҳ
	@RequestMapping("/getPage.do")
	@ResponseBody
	public Map<String,Object> getPage(){
		/*Map<String, Object> map = new HashMap<String, Object>();
		List<Object> page = new ArrayList<Object>();
		int CountIndex = msgServiceImpl.findByCont(); //�ܼ�¼��
		int j = CountIndex%5;
		int CountPage = CountIndex/5; //��ҳ��  ����һ��˼·�� coutPage = (CountIndex+5+1)/5; ����Ͳ���if�ж� 
		if(j > 0){
			CountPage += 1;
		}
		int nowIndex = startIndex/5;
		System.out.println("��ǰҳ��Ϊ��"+nowIndex);
		
		page.add(CountIndex);
		page.add(CountPage);
		page.add(nowIndex);
		map.put("page", page);
		return map;
		*/
		int CountIndex = msgServiceImpl.findByCont(); //�ܼ�¼��
		return page.getPage(CountIndex, endIndex, startIndex);
	}
	
}
