package com.util;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class LoggingBean {
	private final Logger logger = LoggerFactory.getLogger("CONSOLE");
	
	@Before("execution(* com.controller.*.*(..))")
	public void invokeBefore(){
		System.out.println("46545");
		logger.info("111");
	}
}
