package com.service;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mapper.AdminuserMapper;
import com.pojo.Adminuser;

@Service("adminServiceImpl")
@Transactional(rollbackFor=Exception.class)
public class AdminServiceImpl implements adminService {

	@Resource
	private AdminuserMapper dao;
	
	@Override
	public Adminuser login(String username, String password) {
		// TODO Auto-generated method stub
		return (Adminuser)(dao.selectBylogin(username, password));
	}
	
	@Override
	public int deleteByUsername(String username){
		return dao.deleteByusername(username);
	}
	
	@Override
	public int insertAdmin(Adminuser record) {
		// TODO Auto-generated method stub
		return dao.insert(record);
	}

	@Override
	public List<Adminuser> selectByAll() {
		// TODO Auto-generated method stub
		return dao.selectByAll();
	}

}
