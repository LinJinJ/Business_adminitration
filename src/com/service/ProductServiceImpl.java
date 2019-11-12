package com.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mapper.ProductMapper;
import com.pojo.Product;

@Service
public class ProductServiceImpl implements productService {
	
	@Autowired
	ProductMapper productDao;
	
	@Override
	public List<Product> showAllProduct() {
		// TODO Auto-generated method stub
		return productDao.showProduct();
	}

	@Override
	public List<Product> showListProduct(int startIndex, int endIndex) {
		// TODO Auto-generated method stub
		return productDao.showlistProduct(startIndex, endIndex);
	}

	@Override
	public int deleteProduct(int id) {
		// TODO Auto-generated method stub
		return productDao.deleteByPrimaryKey(id);
	}

	@Override
	public int updateProduct(Product product) {
		// TODO Auto-generated method stub
		return productDao.updateByPrimaryKey(product);
	}

	@Override
	public int insertProduct(Product product) {
		// TODO Auto-generated method stub
		return productDao.insert(product);
	}
	
	@Override
	public int countPage() {
		// TODO Auto-generated method stub
		return productDao.countByExample(null);
	}
	
	@Override
	public List<Product> showProductByCategory(@Param("categoryValue")String categoryValue) {
		// TODO Auto-generated method stub
		System.out.println(categoryValue);
		return productDao.selectByCategory(categoryValue);
	}
	
	@Override
	public int selectByLikeCount(String likeUsername) {
		// TODO Auto-generated method stub
		return productDao.selectByLikeCount(likeUsername);
	}
	
	@Override
	public List<Product> selectSearch(String likeUsername, int startIndex, int endIndex) {
		// TODO Auto-generated method stub
		return productDao.selcectSearch(likeUsername, startIndex, endIndex);
	}
}
