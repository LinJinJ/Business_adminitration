package com.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.Adminuser;

public interface adminService {

	//����Ա�û���¼
	public Adminuser login(String username,String password);
	
	//��ӹ���Ա
	public int insertAdmin(Adminuser record);
	
	//ɾ������Ա
	public int deleteByUsername(@Param("username")String usename);
	
	//��ѯ���й���Ա�˺�
	public List<Adminuser> selectByAll();
}
