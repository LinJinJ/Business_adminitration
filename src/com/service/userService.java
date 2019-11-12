package com.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.Doresponse;
import com.pojo.Userinfo;

public interface userService {
	
	public Userinfo login(@Param("username")String username,@Param("password")String password);  //登錄
	public void loginout(); //退出
	public List<Userinfo> selectAllUser(); //查找所有用戶
	
	//查询用户(判断用户是否存在)
	public List<Userinfo> checkByUserName();
	
	//分页查询
	public List<Userinfo> showlist(@Param("startIndex")int startIndex,@Param("endIndex")int endIndex);
	
	//查询总记录数
	public int findByCont();
	
	//删除用户
	public int deldeteUser(int id);
	
	//更新用户
	public int updateUser(Userinfo userinfo);
	
	//添加用户
	public int insertUser(Userinfo userinfo);
	
	//查询密码和用户
	public List<Userinfo> selcetByusername(@Param("username") String username);

	//模糊搜索
	public List<Userinfo> selectSearch(@Param("likeUsername")String likeUsername,@Param("startIndex")int startIndex,@Param("endIndex")int endIndex);
	
	//模糊查询的记录数
	public int selectByLikeCount(@Param("likeUsername")String likeUsername);
}
