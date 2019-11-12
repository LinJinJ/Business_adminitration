package com.util;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.pojo.Doresponse;

@Component
public class doresponseMsg {

	@Autowired
	Doresponse doresponse;
	
	
	
	public doresponseMsg() {

	}
	
	//��װ����dorespnse�����ظ���
	public Doresponse doForRsp(String functionMsg,String msg,String status,String adminname){
		Date date = new Date();
		//SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		System.out.println(date);
		doresponse.setTime(date);
		doresponse.setFunction(functionMsg);
		doresponse.setMsg(msg);
		doresponse.setStatus(status);
		doresponse.setAdmintor(adminname);
		return doresponse;
	}
	
	
}
