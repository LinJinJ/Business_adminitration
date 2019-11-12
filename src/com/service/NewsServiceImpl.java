package com.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mapper.NewsinfoMapper;
import com.pojo.Newsinfo;

@Service
public class NewsServiceImpl implements newsService {

	@Autowired
	NewsinfoMapper newsDao;
	
	@Override
	public List<Newsinfo> showAll() {
		// TODO Auto-generated method stub
		return newsDao.selectAll();
	}
	
	@Override
	public List<Newsinfo> showlistNews(@Param("startIndex")int startIndex,@Param("endIndex")int endIndex) {
		// TODO Auto-generated method stub
		return newsDao.showlistNews(startIndex,endIndex);
	}

	@Override
	public int addNews(Newsinfo newsInfo) {
		// TODO Auto-generated method stub
		return newsDao.insert(newsInfo);
	}

	@Override
	public int deleteNews(int id) {
		// TODO Auto-generated method stub
		return newsDao.deleteByPrimaryKey(id);
	}

	@Override
	public int updateNews(Newsinfo newsInfo) {
		// TODO Auto-generated method stub
		return newsDao.updateByPrimaryKey(newsInfo);
	}
	
	@Override
	public int countPage() {
		// TODO Auto-generated method stub
		return newsDao.countByExample(null);
	}
	
	@Override
	public int selectByLikeCount(String likeUsername) {
		// TODO Auto-generated method stub
		return newsDao.selectByLikeCount(likeUsername);
	}
	@Override
	public List<Newsinfo> selectSearch(String likeUsername, int startIndex, int endIndex) {
		// TODO Auto-generated method stub
		return newsDao.selcectSearch(likeUsername, startIndex, endIndex);
	}

}
