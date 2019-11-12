package com.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.Product;
import com.pojo.Userinfo;

public interface productService {
	
	//��ѯȫ��
	public List<Product> showAllProduct();
	
	//��ҳ��ѯ
	public List<Product> showListProduct(@Param("startIndex")int startIndex,@Param("endIndex")int endIndex);
	
	//ɾ��
	public int deleteProduct(int id);
	
	//����
	public int updateProduct(Product product);
	
	//����
	public int insertProduct(Product product);
	
	//��ѯ�ܼ�¼��
	public int countPage();
	
	//�����ѯ
	public List<Product> showProductByCategory(@Param("categoryValue")String categoryValue);
	
	//ģ������
	public List<Product> selectSearch(@Param("likeUsername")String likeUsername,@Param("startIndex")int startIndex,@Param("endIndex")int endIndex);
		
	//ģ����ѯ�ļ�¼��
	public int selectByLikeCount(@Param("likeUsername")String likeUsername);
}
