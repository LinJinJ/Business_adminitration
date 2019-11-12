package com.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.Newsinfo;
import com.pojo.Userinfo;

public interface newsService {
	
	//��ѯ
	public List<Newsinfo> showlistNews(@Param("startIndex")int startIndex,@Param("endIndex")int endIndex);
	
	//��ѯȫ��
	public List<Newsinfo> showAll();
	
	//���
	public int addNews(Newsinfo newsInfo);
	
	//ɾ��
	public int deleteNews(int id);
	
	//����
	public int updateNews(Newsinfo newsInfo);
	
	
	//��ѯ��¼����
	public int countPage();
	
	//ģ������
	public List<Newsinfo> selectSearch(@Param("likeUsername")String likeUsername,@Param("startIndex")int startIndex,@Param("endIndex")int endIndex);
		
	//ģ����ѯ�ļ�¼��
	public int selectByLikeCount(@Param("likeUsername")String likeUsername);
}
