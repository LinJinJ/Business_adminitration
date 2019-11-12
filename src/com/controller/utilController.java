package com.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pojo.Newsinfo;
import com.pojo.Product;
import com.service.NewsServiceImpl;
import com.service.ProductServiceImpl;

@Controller
@RequestMapping("/util")
public class utilController {

	//����service
	@Autowired
	NewsServiceImpl newsServiceImpl;
	
	//��Ʒservice
	@Autowired
	ProductServiceImpl productServiceImpl;
	
	
	
	//���Ǽ����ҳ��ʵ�ַ���--���յ�������ҳ�����ʾJS,�������Ҫ��ҳ�Ŀ��Բ��ղ�Ʒ��ʾ��JS
	//ģ���������������ʵ�ֵ��Ǵ����ݿ���һ����ӵ�һ������в�ѯ��
	@RequestMapping("/searchResult.do")
	@ResponseBody
	public Map<String,Object> searchResult(@RequestParam("searchText")String searchText,
			@RequestParam("startIndex")int startIndex,@RequestParam("endIndex")int endIndex){
		Map<String,Object> map = new HashMap<String,Object>();
		//����һ��List���������������ص�����
		List<Object> allList = new ArrayList<Object>();
		//�����ײ�ѯ������
		String likeText = "%"+searchText+"%";
		List<Newsinfo> list_news = newsServiceImpl.selectSearch(likeText, startIndex, endIndex);
		int news_count = newsServiceImpl.selectByLikeCount(likeText);
		//���ݵ�һ�鷵�صĸ��������õڶ����ѯ�ĸ����Լ���ʼ��ѯ������
		int limitCol,index = 0;
		if(list_news.size() == 0){
			limitCol = endIndex;
			if(startIndex == 0){
				index = startIndex;
			}else{
				index = startIndex-news_count;
			}
		}else{
			limitCol = endIndex - news_count;
			if(startIndex == 0){
				index = startIndex;
			}
			
		}
		
		//��ʼ�ڶ���Ĳ�ѯ
		List<Product> list_product = productServiceImpl.selectSearch(likeText, index, limitCol);
		int product_count = productServiceImpl.selectByLikeCount(likeText);
		int count = news_count+product_count;
		//�����ܵ�ҳ��
		int page = (int)(Math.ceil((double)count/(double)endIndex));
		//��ΪList������������ظ��ģ����Կ�����ÿ��List����ǰ����ӱ�־λ
		allList.addAll(list_news); //�������
		allList.add("flag"); //��ӱ��λ
		allList.addAll(list_product);//��Ӳ�Ʒ
		if(page == 0){
			map.put("noData", "û���������");
		}else{
			map.put("page", page);
			map.put("list",allList);
			
		}
		
		return map;
	}
	
	
}
