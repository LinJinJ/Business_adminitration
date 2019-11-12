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
		
		//System.out.println("开始前标"+request.getParameter("startIndex"));
		//System.out.println("结束标值"+request.getParameter("endIndex"));
		startIndex = Integer.parseInt(request.getParameter("startIndex")); //开始查询点
		endIndex = Integer.parseInt(request.getParameter("endIndex"));  //结束查询点
		List<Doresponse> list = msgServiceImpl.showlist(startIndex,endIndex); //分页查询
		map.put("responseMsg", list); //分页查询结果返回JSON
		return map;
	}
	
	
	
	//分页
	@RequestMapping("/getPage.do")
	@ResponseBody
	public Map<String,Object> getPage(){
		/*Map<String, Object> map = new HashMap<String, Object>();
		List<Object> page = new ArrayList<Object>();
		int CountIndex = msgServiceImpl.findByCont(); //总记录数
		int j = CountIndex%5;
		int CountPage = CountIndex/5; //总页数  还有一条思路： coutPage = (CountIndex+5+1)/5; 这个就不用if判断 
		if(j > 0){
			CountPage += 1;
		}
		int nowIndex = startIndex/5;
		System.out.println("当前页数为："+nowIndex);
		
		page.add(CountIndex);
		page.add(CountPage);
		page.add(nowIndex);
		map.put("page", page);
		return map;
		*/
		int CountIndex = msgServiceImpl.findByCont(); //总记录数
		return page.getPage(CountIndex, endIndex, startIndex);
	}
	
}
