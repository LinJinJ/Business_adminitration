package test;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.controller.UserController;
import com.mapper.UserinfoMapper;
import com.pojo.Userinfo;
import com.service.UserServiceImpl;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath*:spring/applicationContext*.xml","classpath*:spring/springMvc.xml"})
public class testMapper {

	@Autowired
	UserinfoMapper userinfoMapper;
	
	@Autowired
	UserController userController;
	
	@Autowired
	UserServiceImpl userServiceImpl; 
	
	/*@Test
	public void testQ(){
		
		System.out.println(">>>>>>>>>>>>"+userController);
		System.out.println(userController.userServiceImpl);
		List<Userinfo> list = new ArrayList<Userinfo>();
		list = userController.query();
		for(Userinfo u : list){
			System.out.println(u.getUsername());
		}
		System.out.println("≤‚ ‘Ω· ¯");
	}
	*/
	
	@Autowired
	Userinfo userinfo;
	
	@Test
	public void testBean(){
		System.out.println(userinfo);
	}
	
}
