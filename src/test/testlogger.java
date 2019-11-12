package test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.util.LoggingBean;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath*:spring/applicationContext*.xml","classpath*:spring/springMvc.xml"})
public class testlogger {
	
	@Autowired
	LoggingBean loggin;
	
	@Test
	public void testAopLogger() {
		loggin.invokeBefore();
	}
}
