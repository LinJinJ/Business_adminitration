package com.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;

@Component
public class PageBean {
	
	//�ܼ�¼��
	private int CountIndex;
	//ҳ��¼��
	private int PageSize;
	//��ҳ��
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
		this.CountIndex = CountIndex; //�ܼ�¼��
		this.PageSize = PageSize; //ҳ��¼��
		
		int CountPage = (int)Math.ceil((double)CountIndex/(double)PageSize); //��ҳ��
		
		//this.CountPage = (CountIndex+PageSize+1)/PageSize;
		
//		int j = CountIndex%PageSize;
//		int CountPage = CountIndex/PageSize; //��ҳ��
//		if(j > 0){
//			CountPage += 1;
//		}else{
//			
//		}
		
		int nowIndex = startIndex/PageSize; //�����ǰҳ��������� ��12/5=2 �����˾�����һҳ����
		System.out.println("�û���ǰҳ��Ϊ��"+nowIndex);
		
		page.add(CountIndex);
		page.add(CountPage);
		page.add(nowIndex);
		map.put("page", page);
		return map;
	}
	
}
