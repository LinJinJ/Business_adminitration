package com.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;

@Component
public class PageBean {
	
	//总记录数
	private int CountIndex;
	//页记录数
	private int PageSize;
	//总页数
	private int CountPage;
	
	
	
	public int getCountIndex() {
		return CountIndex;
	}



	public void setCountIndex(int countIndex) {
		CountIndex = countIndex;
	}



	public int getPageSize() {
		return PageSize;
	}



	public void setPageSize(int pageSize) {
		PageSize = pageSize;
	}



	public int getCountPage() {
		return CountPage;
	}



	public void setCountPage(int countPage) {
		CountPage = countPage;
	}



	public Map<String, Object> getPage(int CountIndex,int PageSize,int startIndex){
		Map<String, Object> map = new HashMap<String, Object>();
		List<Object> page = new ArrayList<Object>();
		this.CountIndex = CountIndex; //总记录数
		this.PageSize = PageSize; //页记录数
		
		int CountPage = (int)Math.ceil((double)CountIndex/(double)PageSize); //总页数
		
		//this.CountPage = (CountIndex+PageSize+1)/PageSize;
		
//		int j = CountIndex%PageSize;
//		int CountPage = CountIndex/PageSize; //总页数
//		if(j > 0){
//			CountPage += 1;
//		}else{
//			
//		}
		
		int nowIndex = startIndex/PageSize; //算出当前页面的坐标例 ：12/5=2 超过了就是下一页的了
		System.out.println("用户表当前页数为："+nowIndex);
		
		page.add(CountIndex);
		page.add(CountPage);
		page.add(nowIndex);
		map.put("page", page);
		return map;
	}
	
}
