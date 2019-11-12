<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
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

	<script type="text/javascript" src="static/js/user/datavalidator.js" ></script>
	<script type="text/javascript" src="static/js/user/userLogin.js" ></script>
	
	
	
	<style>
			body{
			}
			
			#login_div{
				float: none;
				margin-left: auto;
				margin-right: auto;
				margin-top: 180px;
			}
			form{
				width: 250px;
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
				top: 23px;
				left: 8px;
			}
			.form-control{
				padding-left: 25px;
			}
			#reg{
				margin-top: 15px;
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
				<div class="col-md-12 col-sm-12 column">
					<!-- 登录界面 -->
					<div class="col-sm-6 col-md-6 col-md-push-2 col-sm-push-2 column" id="login_div">
						
						<form  id="login_form" method="post" class="form-horizontal">
							<span class="huawei_logo">
								<a href="page/userIndex/huaweiEnterprise.jsp"><img class="center-block" src="static/images/enterprise/huawei_logo.png" /></a> 
							</span>
							
							<div class="form-group has-feedback">
									<i class="fa glyphicon glyphicon-user"></i>
									<input type="text" class="form-control required" id="username"  name="username" autofocus="autofocus" placeholder="username" >
									<div id="tip_username" class="tip"></div>
							</div>
							<div class="form-group has-feedback">
									<i class="fa glyphicon glyphicon-lock"></i>
									<input type="password" class="form-control required" id="password" name="password" placeholder="Password">
									<div id="tip_password" class="tip"></div>
							</div>
							<div class="form-group" id="reg">
									<div class="pull-left">
										<a >忘记密码</a>
									</div>
									<div class="pull-right">
										<a >立即注册</a>
									</div>
							</div>
							<div class="form-group">
									<button id="userlogin" type="button" onclick="login()" class="btn btn-success btn-block">登录</button>
							</div>
						</form>
					</div>
				</div>
			</div>

		</div>
    
  </body>
</html>
