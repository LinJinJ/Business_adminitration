package com.service;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mapper.UserinfoMapper;
import com.pojo.Userinfo;

@Service("userServiceImpl")
@Transactional
public class UserServiceImpl implements userService {
	
	@Autowired
	private UserinfoMapper userDao;
	
	@Override
	public Userinfo login(@Param("username")String username,@Param("password")String password) {
		// TODO Auto-generated method stub
		 return (Userinfo)(userDao.selectByLogin(username,password));
	}

	@Override
	public List<Userinfo> selectSearch(String likeUsername, int startIndex, int endIndex) {
		// TODO Auto-generated method stub
		return userDao.selcectSearch(likeUsername, startIndex, endIndex);
	}
	
	@Override
	public int selectByLikeCount(@Param("likeUsername")String likeUsername) {
		// TODO Auto-generated method stub
		return userDao.selectByLikeCount(likeUsername);
	}
	
	@Override
	public List<Userinfo> checkByUserName(){
		return userDao.selectByCheck();
	}
	
	@Override
	public void loginout() {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Userinfo> selcetByusername(String username) {
		// TODO Auto-generated method stub
		return userDao.selectByusername(username);
	}
	
	@Override
	public List<Userinfo> selectAllUser() {
		// TODO Auto-generated method stub
		return userDao.selectAll();
	}

	@Override
	public int findByCont() {
		// TODO Auto-generated method stub
		return userDao.findByCont();
	}
	
	@Override
	public List<Userinfo> showlist(@Param("startIndex")int startIndex,@Param("endIndex")int endIndex) {
		// TODO Auto-generated method stub
		return userDao.showlist(startIndex, endIndex);
	}
	
	@Override
	public int deldeteUser(int id) {
		// TODO Auto-generated method stub
		return userDao.deleteByPrimaryKey(id);
	}
	
	@Override
	public int updateUser(Userinfo userinfo) {
		// TODO Auto-generated method stub
		return userDao.updateByPrimaryKey(userinfo);
	}
	
	@Override
	public int insertUser(Userinfo userinfo) {
		// TODO Auto-generated method stub
		return userDao.insert(userinfo);
	}
	
}
