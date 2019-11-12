package com.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.Adminuser;

public interface adminService {

	//管理员用户登录
	public Adminuser login(String username,String password);
	
	//添加管理员
	public int insertAdmin(Adminuser record);
	
	//删除管理员
	public int deleteByUsername(@Param("username")String usename);
	
	//查询所有管理员账号
	public List<Adminuser> selectByAll();
}
