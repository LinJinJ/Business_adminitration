package com.mapper;

import com.pojo.Product;
import com.pojo.ProductExample;
import com.pojo.Userinfo;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ProductMapper {
    int countByExample(ProductExample example);

    int deleteByExample(ProductExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Product record);

    int insertSelective(Product record);

    List<Product> showProduct();
    
    List<Product> selectByCategory(@Param("categoryValue")String categoryValue);
    
    List<Product> showlistProduct(@Param("startIndex")int startIndex,@Param("endIndex")int endIndex);
    
    //模糊查询
    List<Product> selcectSearch(@Param("likeUsername")String likeUsername,@Param("startIndex")int startIndex,@Param("endIndex")int endIndex);
    
    //模糊查询的记录数
    int selectByLikeCount(@Param("likeUsername")String likeUsername);
    
    List<Product> selectByExample(ProductExample example);

    Product selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Product record, @Param("example") ProductExample example);

    int updateByExample(@Param("record") Product record, @Param("example") ProductExample example);

    int updateByPrimaryKeySelective(Product record);

    int updateByPrimaryKey(Product record);
}