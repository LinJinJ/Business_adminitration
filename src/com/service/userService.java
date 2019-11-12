package com.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.Doresponse;
import com.pojo.Userinfo;

public interface userService {
	
	public Userinfo login(@Param("username")String username,@Param("password")String password);  //���
	public void loginout(); //�˳�
	public List<Userinfo> selectAllUser(); //���������Ñ�
	
	//��ѯ�û�(�ж��û��Ƿ����)
	public List<Userinfo> checkByUserName();
	
	//��ҳ��ѯ
	public List<Userinfo> showlist(@Param("startIndex")int startIndex,@Param("endIndex")int endIndex);
	
	//��ѯ�ܼ�¼��
	public int findByCont();
	
	//ɾ���û�
	public int deldeteUser(int id);
	
	//�����û�
	public int updateUser(Userinfo userinfo);
	
	//����û�
	public int insertUser(Userinfo userinfo);
	
	//��ѯ������û�
	public List<Userinfo> selcetByusername(@Param("username") String username);

	//ģ������
	public List<Userinfo> selectSearch(@Param("likeUsername")String likeUsername,@Param("startIndex")int startIndex,@Param("endIndex")int endIndex);
	
	//ģ����ѯ�ļ�¼��
	public int selectByLikeCount(@Param("likeUsername")String likeUsername);
}
