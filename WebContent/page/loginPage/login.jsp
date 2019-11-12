<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
session.removeAttribute("loginName");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>admin_login</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" href="static/css/admin/login_inf.css">

	<!-- 新 Bootstrap 核心 CSS 文件 -->
	<link href="static/css/Bootstrap/bootstrap.min.css" rel="stylesheet">

	<!-- 可选的Bootstrap主题文件（一般不使用） -->
	<script src="static/css/Bootstrap/bootstrap-theme.min.css"></script>

	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="static/jQuery/jquery-3.3.1.min.js"></script>

	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="static/js/Bootstrap/bootstrap.min.js"></script>
	
  </head>
  
  <body>	
  
  	
	<div class="container-fluid">
	<div class="row">
		<div class="col-md-3 center" id="content">
			<form  class="form-horizontal" id="login_content" action="admin/login.do" method="post">
				<div class="form-group has-feedback">
                        <i class="glyphicon glyphicon-user" id="glyphicon"></i>
                        <input class="form-control required" type="text" placeholder="Username" id="username" name="username" autofocus="autofocus" maxlength="20"/>
                    	<div id="tip_username" class="tip"></div>
                    </div>
                    <div class="form-group has-feedback">
                        <i class="glyphicon glyphicon-lock" id="glyphicon"></i>
                        <input class="form-control required" type="password" placeholder="Password" id="password" name="password" maxlength="8"/>
                   	    <div id="tip_password" class="tip">
<%--                    	    <c:choose> --%>
<%--                    	    	<c:when test="${msg != null}" > --%>
<%--                    	    		${msg}	    --%>
<%--                    	    	</c:when> --%>
<%--                    	    	<c:otherwise> --%>
<!--                    	    		&nbsp; -->
<%--                    	    	</c:otherwise> --%>
<%--                    	    </c:choose> --%>
							 &nbsp;${msg}
                   	    </div>
                    </div>
                    
                    <div class="form-group" id="butt">
				 		<button type="submit" class="btn btn-default btn-block" id="button">登录</button>
					</div>
					
			</form>
			
			<div class="">
			<p class="advise">
				<strong>企业网站管理系统:</strong><br>
				&nbsp;&nbsp;1.请使用管理员账号登录<br>
				&nbsp;&nbsp;2.账号密码不对，请联系数据库管理员<br>
				
			</p>
		</div>
		</div>
	</div>
</div>
</body>
</html>
