package com.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.Doresponse;

public interface msgService {
	
		//��ȡ������Ϣ
	public List<Doresponse> getResponseMsg();
		//��ҳ��ѯ
	public List<Doresponse> showlist(@Param("startIndex")int startIndex,@Param("endIndex")int endIndex);
		//��ѯ�ܼ�¼��
	public int findByCont();
		//���
	public int insertMsg(Doresponse doresponse);
}
