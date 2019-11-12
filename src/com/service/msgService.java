package com.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.Doresponse;

public interface msgService {
	
		//获取操作信息
	public List<Doresponse> getResponseMsg();
		//分页查询
	public List<Doresponse> showlist(@Param("startIndex")int startIndex,@Param("endIndex")int endIndex);
		//查询总记录数
	public int findByCont();
		//添加
	public int insertMsg(Doresponse doresponse);
}
