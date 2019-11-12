<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户注册</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<!-- 新 Bootstrap 核心 CSS 文件 -->
	<link href="static/css/Bootstrap/bootstrap.min.css" rel="stylesheet">

	<!-- 可选的Bootstrap主题文件（一般不使用） -->
	<script src="static/css/Bootstrap/bootstrap-theme.min.css"></script>

	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="static/jQuery/jquery-3.3.1.min.js"></script>

	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="static/js/Bootstrap/bootstrap.min.js"></script>
	
	<!-- BootstrapValidator验证插件的样式表 -->
	<link href="static/css/Bootstrap/bootstrapValidator.min.css" rel="stylesheet">
	
	<!-- 引入BootstrapValidator验证插件JS -->
	<script type="text/javascript" src="static/js/Bootstrap/bootstrapValidator.js" ></script>

	<script type="text/javascript" src="static/js/user/datavalidatorForRegister.js" ></script>

	<script type="text/javascript" src="static/js/user/register.js" ></script>

	<style>
			.register_content{
				margin-top: 100px;;
			}
			#img_content{
				padding-top:80px;
			}
			
			form{
				width: 250px;
				margin-left: auto;
				margin-right: auto;
			}
			#login_div form h3{
				text-align: center;
				margin: 15px;
			}
			.huawei_logo{
				padding-bottom: 25px;
				padding-right: 30px;
			}
			
			.fa{
				top: 25px;
				left: 8px;
			}
			.form-control{
				padding-left: 25px;
			}
			#btn{
				margin-top: 25px;
			}
			.form-group{
				margin-bottom: 5px !important;
			}
			
			.form-horizontal .has-feedback .form-control-feedback {
   				top: 16px;
    			right: 0px;
			}
			.tip{
				height: 4px;
    			margin-left: 8px;
			}
		</style>
	
  </head>
  
  <body>
	<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 column register_content">
					<div class="col-md-6 col-sm-4 column" id="img_content">
						<span>
							<img class="img-responsive center-block" src="static/images/enterprise/loginBg1.jpg" />
						</span>
					</div>
					<div class="col-md-4 col-sm-4 col-md-pull-2 col-sm-push-2 column">
						<form id="register_form" class="form-horizontal ">
							<div>
								<h3>注册</h3>
							</div>
							<div class="form-group has-feedback">
								<i class="fa glyphicon glyphicon-user"></i>
								<input type="text" class="form-control" id="username" name="username" placeholder="username(用户名)">
								<div id="tip_username" class="tip"></div>
							</div>
							<div class="form-group has-feedback">
								<i class="fa glyphicon glyphicon-lock"></i>
								<input type="password" class="form-control" id="password" name="password" placeholder="Password(用户密码)">
								<div id="tip_password" class="tip"></div>
							</div>
							<div class="form-group has-feedback">
								<i class="fa glyphicon glyphicon-lock"></i>
								<input type="password" class="form-control" id="retry_password" name="retry_password" placeholder="RetryPassword(确认密码)">
								<div id="tip_retry_password" class="tip"></div>
							</div>
							<div class="form-group has-feedback">
								<i class="fa glyphicon glyphicon-map-marker"></i>
								<input type="text" class="form-control" id="useraddress" name="useraddress" placeholder="address(地址)">
								<div id="tip_address" class="tip"></div>
							</div>
							<div class="form-group has-feedback">
								<i class="fa glyphicon glyphicon-phone"></i>
								<input type="text" class="form-control" id="userphone" name="userphone" placeholder="phone(手机号码)">
								<div id="tip_phone" class="tip"></div>
							</div>
							<div class="form-group has-feedback">
								<i class="fa glyphicon glyphicon-envelope"></i>
								<input type="text" class="form-control" id="useremail" name="useremail" placeholder="email(邮箱)">
								<div id="tip_email" class="tip"></div>
							</div>
							<div class="form-group" id="btn">
								<button type="button" onclick="register()" class="btn btn-success btn-block">注册</button>
							</div>
							<span class="pull-right">
								<a href="page/userIndex/userlogin.jsp">已经注册,直接登录</a>
							</span>
						</form>
					</div>
				</div>
			</div>
		</div>	
  </body>
</html>
