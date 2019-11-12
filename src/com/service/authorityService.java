package com.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.Authority;
import com.pojo.Userinfo;

public interface authorityService {
	
	//��ȡȨ��״̬
	public List<Authority> getAllAuthoritybyLimit(@Param("indexPage") int indexPage,@Param("limitCol") int limitCol);
	
	//����Ȩ��
	public int updateAuthority(@Param("ColName")String ColName,@Param("ischeck")String ischeck,@Param("username")String username);
	
	//��ȡ������
	public int getCount();

	//ģ������
	public List<Authority> selectSearch(@Param("likeUsername")String likeUsername,@Param("startIndex")int startIndex,@Param("endIndex")int endIndex);
		
	//ģ����ѯ�ļ�¼��
	public int selectByLikeCount(@Param("likeUsername")String likeUsername);
}
