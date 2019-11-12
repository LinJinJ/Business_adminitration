package com.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.Authority;
import com.pojo.Userinfo;

public interface authorityService {
	
	//获取权限状态
	public List<Authority> getAllAuthoritybyLimit(@Param("indexPage") int indexPage,@Param("limitCol") int limitCol);
	
	//更新权限
	public int updateAuthority(@Param("ColName")String ColName,@Param("ischeck")String ischeck,@Param("username")String username);
	
	//获取总数量
	public int getCount();

	//模糊搜索
	public List<Authority> selectSearch(@Param("likeUsername")String likeUsername,@Param("startIndex")int startIndex,@Param("endIndex")int endIndex);
		
	//模糊查询的记录数
	public int selectByLikeCount(@Param("likeUsername")String likeUsername);
}
