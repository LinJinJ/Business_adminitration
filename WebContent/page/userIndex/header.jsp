<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
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
	
	<link rel="stylesheet" type="text/css" href="static/css/user/header-footer.css">
	
	<style type="text/css">
		img{  
     	 	cursor: pointer;  
      		transition: all 0.6s;  
		}  
 		img:hover{ 
 			
       		transform: scale(1.1);  
  		} 
	</style>
	
	
	
  </head>
  
  <body>
    <div class="header-topNav ">
			<div class="container-fluid">
				<div class="row">
					<div class="col-sm-3 col-md-3 column">
						<span id="mainORadmin"><a href="#">主页详情</a></span>
						<span>&nbsp;</span>
						<span><a id="mobDown" data-toggle="tooltip" data-placement="bottom" href="javascript:void(0);">移动端</a></span>
						<script type="text/javascript">
							$('#mobDown').tooltip({
								html: true,
								title: "<img class=\"img-responsive\" src=\"static/images/mob.png\" alt=\"Responsive image\" >" ,
								});
						</script>
					</div>
					<div class="col-sm-3 col-md-3 col-sm-push-5 col-md-push-5 col-md-offset-1 col-sm-offset-1  column">
						<span id="usernameORlogin"><a href="page/userIndex/userlogin.jsp">会员登录</a></span>
						<span id="registerORloginOut"><a href="page/userIndex/register.jsp">注册</a></span>
					</div>
				</div>
			</div>
		</div>
	
	<!-- 页面导航 主页、公司信息、产品信息、新闻公告、人才招揽-->
			<div class="nav">
				<div class="container">
					<div class="row">
						<div class="col-md-12 column">
							<!-- 导航栏 -->
							<nav class="navbar navbar-default" role="navigation">
								<!-- 标志logo -->
								<div class="navbar-header">
									<button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
									 aria-expanded="false">
										<span class="sr-only">Toggle navigation</span>
										<span class="icon-bar"></span>
										<span class="icon-bar"></span>
										<span class="icon-bar"></span>
									</button>
									<a class="navbar-brand" href="page/userIndex/huaweiEnterprise.jsp">HUAWEI</a>
								</div>
								<!-- 导航选项 -->
								<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
									<ul class="nav navbar-nav">
										<li id="nav_main" class="nav_li"><a href="page/userIndex/huaweiEnterprise.jsp" onclick="nav_active('nav_main')">主页<span class="sr-only">(current)</span></a></li>
										<li id="nav_enterprise" class="nav_li"><a href="javascript:void(0);" onclick="nav_active('nav_enterprise')">公司简介</a> </li>
										<li id="nav_product" class="nav_li"><a href="javascript:void(0);" onclick="nav_active('nav_product')">产品信息</a> </li>
										<li id="nav_news" class="nav_li"><a href="javascript:void(0);" onclick="nav_active('nav_news')">新闻公告</a> </li>
										<li id="nav_huawei" class="nav_li"><a href="javascript:void(0);" onclick="nav_active('nav_huawei')">关于华为</a> </li>
									</ul>

									<form class="navbar-form navbar-right">
										<div class="form-group">
											<input id="searchText"  type="text" class="form-control" placeholder="Search">
										</div>
										<button type="button" onclick="dosearch()" class="btn btn-default">搜索</button>
									</form>
								</div>
							</nav>
						</div>
					</div>
				</div>
			</div>
	
    
  </body>
</html>
