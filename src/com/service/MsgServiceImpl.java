package com.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mapper.DoresponseMapper;
import com.pojo.Doresponse;

@Service("msgServiceImpl")
public class MsgServiceImpl implements msgService {

	@Autowired
	DoresponseMapper responseDao;
	
	@Override
	public List<Doresponse> getResponseMsg() {
		// TODO Auto-generated method stub
		return responseDao.selectAllResponseMsg();
	}

	@Override
	public List<Doresponse> showlist(@Param("startIndex")int startIndex,@Param("endIndex")int endIndex) {
		// TODO Auto-generated method stub
		return responseDao.showlist(startIndex,endIndex);
	}
	
	@Override
	public int findByCont() {
		// TODO Auto-generated method stub
		return responseDao.findByCont();
	}

	@Override
	public int insertMsg(Doresponse doresponse) {
		// TODO Auto-generated method stub
		return responseDao.insert(doresponse);
	}
	
	
}
