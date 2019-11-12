package com.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mapper.AuthorityMapper;
import com.pojo.Authority;

@Service("authorityServiceImpl")
@Transactional(rollbackFor=Exception.class)
public class AuthorityServiceImpl implements authorityService {

	@Autowired
	AuthorityMapper authorityDao;
	
	@Override
	public List<Authority> getAllAuthoritybyLimit(@Param("indexPage") int indexPage,@Param("limitCol") int limitCol) {
		// TODO Auto-generated method stub
		return authorityDao.selectByAll(indexPage,limitCol);
	}

	@Override
	public int updateAuthority(@Param("ColName")String ColName,@Param("ischeck")String ischeck,@Param("username")String username) {
		// TODO Auto-generated method stub
		return authorityDao.updateByColName(ColName, ischeck, username);
	}

	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		return authorityDao.selcetCount();
	}
	
	@Override
	public List<Authority> selectSearch(String likeUsername, int startIndex, int endIndex) {
		// TODO Auto-generated method stub
		return authorityDao.selcectSearch(likeUsername, startIndex, endIndex);
	}
	
	@Override
	public int selectByLikeCount(String likeUsername) {
		// TODO Auto-generated method stub
		return authorityDao.selectByLikeCount(likeUsername);
	}
	
}
