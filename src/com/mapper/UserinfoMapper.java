package com.mapper;

import com.pojo.Doresponse;
import com.pojo.Userinfo;
import com.pojo.UserinfoExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UserinfoMapper {
    int countByExample(UserinfoExample example);

    int deleteByExample(UserinfoExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Userinfo record);

    int insertSelective(Userinfo record);
    
    List<Userinfo> selectByusername(@Param("username")String username);
    
    List<Userinfo> selectByCheck();
    
    //ģ����ѯ
    List<Userinfo> selcectSearch(@Param("likeUsername")String likeUsername,@Param("startIndex")int startIndex,@Param("endIndex")int endIndex);
    
    //ģ����ѯ�ļ�¼��
    int selectByLikeCount(@Param("likeUsername")String likeUsername);
    
    
    Userinfo selectByLogin(@Param("username")String username,@Param("password")String password);
    
    List<Userinfo> selectByExample(UserinfoExample example);
    
    List<Userinfo> selectAll();
    
    //��ҳ��ʾ
    List<Userinfo> showlist(@Param("startIndex")int startIndex,@Param("endIndex")int endIndex);
    
    int findByCont();

    Userinfo selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Userinfo record, @Param("example") UserinfoExample example);

    int updateByExample(@Param("record") Userinfo record, @Param("example") UserinfoExample example);

    int updateByPrimaryKeySelective(Userinfo record);

    int updateByPrimaryKey(Userinfo record);
}