package com.mapper;

import com.pojo.Doresponse;
import com.pojo.DoresponseExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DoresponseMapper {
    int countByExample(DoresponseExample example);

    int deleteByExample(DoresponseExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Doresponse record);

    int insertSelective(Doresponse record);

    List<Doresponse> selectByExample(DoresponseExample example);
    
    //显示总数
    List<Doresponse> selectAllResponseMsg();
    
    //分页显示
    List<Doresponse> showlist(@Param("startIndex")int startIndex,@Param("endIndex")int endIndex);
    

    
    int findByCont();
    
    Doresponse selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Doresponse record, @Param("example") DoresponseExample example);

    int updateByExample(@Param("record") Doresponse record, @Param("example") DoresponseExample example);

    int updateByPrimaryKeySelective(Doresponse record);

    int updateByPrimaryKey(Doresponse record);
}