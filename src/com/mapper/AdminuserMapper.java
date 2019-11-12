package com.mapper;

import com.pojo.Adminuser;
import com.pojo.AdminuserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AdminuserMapper {
    int countByExample(AdminuserExample example);

    int deleteByExample(AdminuserExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Adminuser record);

    int deleteByusername(@Param("username")String username);
    
    List<Adminuser> selectByAll();
    
    int insertSelective(Adminuser record);

    List<Adminuser> selectByExample(AdminuserExample example);

    Adminuser selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Adminuser record, @Param("example") AdminuserExample example);

    int updateByExample(@Param("record") Adminuser record, @Param("example") AdminuserExample example);

    int updateByPrimaryKeySelective(Adminuser record);

    int updateByPrimaryKey(Adminuser record);
    
    //µÇÂ¼²éÑ¯
    Adminuser selectBylogin(@Param("loginname")String username,@Param("password")String password);
}