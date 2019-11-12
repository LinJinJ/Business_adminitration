package com.mapper;

import com.pojo.Authority;
import com.pojo.AuthorityExample;
import com.pojo.Userinfo;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AuthorityMapper {
    int countByExample(AuthorityExample example);

    int deleteByExample(AuthorityExample example);

    int deleteByPrimaryKey(String username);

    int insert(Authority record);

    int insertSelective(Authority record);

    List<Authority> selectByExample(AuthorityExample example);

    List<Authority> selectByAll(@Param("indexPage") int indexPage,@Param("limitCol") int limitCol);
    
    //模糊查询
    List<Authority> selcectSearch(@Param("likeUsername")String likeUsername,@Param("startIndex")int startIndex,@Param("endIndex")int endIndex);
    
    //模糊查询的记录数
    int selectByLikeCount(@Param("likeUsername")String likeUsername);
    
    //权限人数
    int selcetCount();
    
    int updateByColName(@Param("ColName")String ColName,@Param("ischeck")String ischeck,@Param("username")String username);
    
    Authority selectByPrimaryKey(String username);

    int updateByExampleSelective(@Param("record") Authority record, @Param("example") AuthorityExample example);

    int updateByExample(@Param("record") Authority record, @Param("example") AuthorityExample example);

    int updateByPrimaryKeySelective(Authority record);

    int updateByPrimaryKey(Authority record);
}