package com.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.Product;
import com.pojo.Userinfo;

public interface productService {
	
	//查询全部
	public List<Product> showAllProduct();
	
	//分页查询
	public List<Product> showListProduct(@Param("startIndex")int startIndex,@Param("endIndex")int endIndex);
	
	//删除
	public int deleteProduct(int id);
	
	//更新
	public int updateProduct(Product product);
	
	//插入
	public int insertProduct(Product product);
	
	//查询总记录数
	public int countPage();
	
	//分类查询
	public List<Product> showProductByCategory(@Param("categoryValue")String categoryValue);
	
	//模糊搜索
	public List<Product> selectSearch(@Param("likeUsername")String likeUsername,@Param("startIndex")int startIndex,@Param("endIndex")int endIndex);
		
	//模糊查询的记录数
	public int selectByLikeCount(@Param("likeUsername")String likeUsername);
}
