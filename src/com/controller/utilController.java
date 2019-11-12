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

	//新闻service
	@Autowired
	NewsServiceImpl newsServiceImpl;
	
	//产品service
	@Autowired
	ProductServiceImpl productServiceImpl;
	
	
	
	//这是加入分页的实现方法--参照的是新闻页面的显示JS,如果不需要分页的可以参照产品显示的JS
	//模拟搜索框，这个方法实现的是从数据库中一个表接的一个表进行查询的
	@RequestMapping("/searchResult.do")
	@ResponseBody
	public Map<String,Object> searchResult(@RequestParam("searchText")String searchText,
			@RequestParam("startIndex")int startIndex,@RequestParam("endIndex")int endIndex){
		Map<String,Object> map = new HashMap<String,Object>();
		//创建一个List保存两个搜索返回的数据
		List<Object> allList = new ArrayList<Object>();
		//修饰套查询的内容
		String likeText = "%"+searchText+"%";
		List<Newsinfo> list_news = newsServiceImpl.selectSearch(likeText, startIndex, endIndex);
		int news_count = newsServiceImpl.selectByLikeCount(likeText);
		//根据第一组返回的个数，设置第二组查询的个数以及开始查询的坐标
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
		
		//开始第二组的查询
		List<Product> list_product = productServiceImpl.selectSearch(likeText, index, limitCol);
		int product_count = productServiceImpl.selectByLikeCount(likeText);
		int count = news_count+product_count;
		//计算总的页数
		int page = (int)(Math.ceil((double)count/(double)endIndex));
		//因为List集合是有序可重复的，所以可以在每个List集合前面添加标志位
		allList.addAll(list_news); //添加新闻
		allList.add("flag"); //添加标记位
		allList.addAll(list_product);//添加产品
		if(page == 0){
			map.put("noData", "没有相关数据");
		}else{
			map.put("page", page);
			map.put("list",allList);
			
		}
		
		return map;
	}
	
	
}
