package com.mapper;

import com.pojo.Newsinfo;
import com.pojo.NewsinfoExample;
import com.pojo.Product;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface NewsinfoMapper {
    int countByExample(NewsinfoExample example);

    int deleteByExample(NewsinfoExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Newsinfo record);
    
    List<Newsinfo> selectAll();

    int insertSelective(Newsinfo record);

    List<Newsinfo> selectByExampleWithBLOBs(NewsinfoExample example);

    List<Newsinfo> selectByExample(NewsinfoExample example);

    List<Newsinfo> showlistNews(@Param("startIndex")int startIndex,@Param("endIndex")int endIndex);
    
    //模糊查询
    List<Newsinfo> selcectSearch(@Param("likeUsername")String likeUsername,@Param("startIndex")int startIndex,@Param("endIndex")int endIndex);
    
    //模糊查询的记录数
    int selectByLikeCount(@Param("likeUsername")String likeUsername);
    
    Newsinfo selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Newsinfo record, @Param("example") NewsinfoExample example);

    int updateByExampleWithBLOBs(@Param("record") Newsinfo record, @Param("example") NewsinfoExample example);

    int updateByExample(@Param("record") Newsinfo record, @Param("example") NewsinfoExample example);

    int updateByPrimaryKeySelective(Newsinfo record);

    int updateByPrimaryKeyWithBLOBs(Newsinfo record);

    int updateByPrimaryKey(Newsinfo record);
}