package com.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.Newsinfo;
import com.pojo.Userinfo;

public interface newsService {
	
	//查询
	public List<Newsinfo> showlistNews(@Param("startIndex")int startIndex,@Param("endIndex")int endIndex);
	
	//查询全部
	public List<Newsinfo> showAll();
	
	//添加
	public int addNews(Newsinfo newsInfo);
	
	//删除
	public int deleteNews(int id);
	
	//更新
	public int updateNews(Newsinfo newsInfo);
	
	
	//查询记录总数
	public int countPage();
	
	//模糊搜索
	public List<Newsinfo> selectSearch(@Param("likeUsername")String likeUsername,@Param("startIndex")int startIndex,@Param("endIndex")int endIndex);
		
	//模糊查询的记录数
	public int selectByLikeCount(@Param("likeUsername")String likeUsername);
}
