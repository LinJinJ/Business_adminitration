<%@ page language="java" import="java.util.*,com.pojo.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

//获取session的值
if(session.getAttribute("loginName") == null){
	response.sendRedirect("../loginPage/login.jsp");
}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理后台</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
		
	<link rel="stylesheet" href="static/css/admin/main.css">

	<!-- 新 Bootstrap 核心 CSS 文件 -->
	<link href="static/css/Bootstrap/bootstrap.min.css" rel="stylesheet">

	<!-- 可选的Bootstrap主题文件（一般不使用） -->
	<script src="static/css/Bootstrap/bootstrap-theme.min.css"></script>

	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="static/jQuery/jquery-3.3.1.min.js"></script>

	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="static/js/Bootstrap/bootstrap.min.js"></script>
	
	<script src="static/js/admin/util.js"></script>
	
	<script type="text/javascript">
		function changeView(){
			if($("#left_menu").hasClass("show")){
				$("#left_menu").addClass("hide");
				$("#left_menu").removeClass("show");
				$("#right_Content").removeClass();
				$("#right_Content").addClass("col-md-12 col-sm-12 column");
			}else if($("#left_menu").hasClass("hide")){
				$("#left_menu").addClass("show");
				$("#left_menu").removeClass("hide");
				$("#right_Content").removeClass();
				$("#right_Content").addClass("col-md-8 col-sm-8 col-md-offset-1 col-sm-offset-1 column");	
			}
			
		}
		
		//注销事件
		function loginout() {
			
			window.location.href = "page/loginPage/login.jsp";
		}
		
	</script>
	<style>
		.show{
			display:block;
		}
		.hide{
			display:none;
		}
		body{	//overflow-y: hidden 纵向滚动隐藏 overflow-x: hidden 水平滚动隐藏

			overflow-y: hidden !important;
		}
	</style>	
  </head>
  
  <body style="overflow:hidden">
   <!-- 头部 -->
   <div class="top">
   		<div class="container">
			<div class="row clearfix">
				<div class="col-md-12 column">
			<nav class="navbar navbar-default navbar-inverse navbar-fixed-top" role="navigation">
				
				<div class="navbar-header">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="page/userIndex/huaweiEnterprise.jsp">HUAWEI</a>
				
				</div>
				
				<!-- 侧边导航的隐藏按钮 -->
				<div class="ButtonForNAV nav navbar-left">
					<a href="javascript:void(0);" onclick="changeView()"><i class="glyphicon glyphicon-list"></i></a>
				</div>
				
				<div class="PersonInfo" >
					<ul class="nav navbar-nav navbar-right">
						<li>
							 <a href="javascript:viod(0);"><i class="glyphicon glyphicon-envelope"></i></a>
							 
						</li>
						<li>
							 <a href="javascript:viod(0);"><i class="glyphicon glyphicon-bell"></i></a>
						</li>
						<li class="dropdown">
							 <a id="loginName" href="#" class="dropdown-toggle" data-toggle="dropdown">${loginName}<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									 <a href="JavaScript:void(0);">个人中心</a>
								</li>
								<li>
									 <a href="JavaScript:void(0);">用户反馈</a>
								</li>
								<li>
									 <a href="JavaScript:void(0);">公司公告</a>
								</li>
								<li class="divider">
								</li>
								<li>
									 <a href="javascript:void(0);" onclick="loginout()">注销</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
				
			</nav>
				</div>
			</div>
		</div>
   </div>
   
   <!-- Content内容 -->
   <div class="Main_content">
   		
<!--    		<div class="container-fluid" id="content"> -->
		<div class="row clearfix" id="content">
		<%-- 主页左边 --%>
		<div >
		<div class="col-md-2 col-sm-2 column show" id="left_menu">
			<ul class="nav  nav-stacked" id="list_style">
				<li class="active">
					 <a href="page/main/Main.jsp"><i class="glyphicon glyphicon-home"></i>首页</a>
				</li>
				<li class="">
					 <a href="#collapse_user"  data-toggle="collapse"><i class="glyphicon glyphicon-user"></i>用户管理</a>
					<div class="collapse" id="collapse_user">
						<ul class="nav nav-stacked ">
							<li><a href="page/main/user_admin.jsp" target="main" >用户管理</a></li>
							<li><a href="page/main/authority_admin.jsp" target="main">权限管理</a></li>
						</ul>
					</div>
				</li>
				<li>
					 <a href="#collapse_msg"  data-toggle="collapse"><i class="glyphicon glyphicon-user"></i>信息管理</a>
					<div class="collapse" id="collapse_msg">
						<ul class="nav nav-stacked ">
							<li><a href="page/main/news_admin.jsp" target="main">新闻管理</a></li>
							<li><a href="page/main/activity_admin.jsp" target="main">活动管理</a></li>
							<li><a href="page/main/notice_admin.jsp" target="main">公告管理</a></li>
						</ul>
					</div>
				</li>
				<li >
					 <a href="page/main/product_admin.jsp" target="main"><i class="glyphicon glyphicon-shopping-cart"></i>产品管理</a>
				</li>
				<li >
					 <a href="page/main/Setting.jsp" target="main"><i class="glyphicon glyphicon-wrench"></i>设置</a>
				</li>
			</ul>
		</div>
		</div>
		
		<%-- 主页右边 --%>
		<div>
			<div class="col-md-8 col-sm-8 col-md-offset-1 col-sm-offset-1 column" id="right_Content" >
			
				<iframe class="embed-responsive-item" src="page/main/main_content.jsp" name="main" frameborder="0" scrolling="no" width="100%" height="100%" onload="this.height=this.contentWindow.document.body.scrollHeight"></iframe>
			
			</div>
		</div>
		
	</div>
		
<!-- 	</div> -->

</div>   
   
   
   
  </body>
</html>
