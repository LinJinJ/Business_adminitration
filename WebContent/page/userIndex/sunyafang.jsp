<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>孙亚芳女士</title>
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

  </head>
  
  <body>
  	<!-- 头部 -->
    <div>
    	<jsp:include page="header.jsp" ></jsp:include>
    </div>
    
    <!-- 内容 -->
		<div class="content">
			<div class="container">
				<div class="row">
					<div class="col-md-12 col-sm-12 column">
						<ol class="breadcrumb">
							<li><a href="page/userIndex/huaweiEnterprise.jsp">首页</a></li>
							<li><a href="page/userIndex/business_admin.jsp">企业管理</a></li>
							<li class="active">孙亚芳</li>
							<!-- <li><a href="#" >人事管理</a></li>
								<li class="active">任正非简介</li> -->
						</ol>
					</div>
<!-- style="padding-bottom: 130px;" -->
					<div class="col-md-12 col-sm-12 column" style="padding-bottom: 40px;" >
						<h2>孙亚芳女士(华为前董事长)</h2>
						<span class="text-center text-justify">
							<p>
								<img class="img-responsive center-block pull-right" style=" width: 270px;padding-left: 45px;height: 250px;padding-top: 0px;margin-top: 15px;padding-right: 0px;margin-right: 25px;"
								 src="static/images/enterprise/hw_sunyafang.jpg" />
							</p>
							<p class="lead">
								&nbsp;&nbsp;&nbsp;&nbsp;孙亚芳，1955年出生，1982年毕业于电子科技大学，获学士学位。曾任华为技术有限公司董事长。
								2015年亚洲商界权势女性的50位榜单孙亚芳排名第9位。2016年9月，孙亚芳在《财富》全球50大最具影响力女性中排38名。2017中国最杰出商界女性排行榜中，孙亚芳排名第二位。

							</p>
							

						</span>
					</div>

				</div>
			</div>
		</div>
    
    
    
    <!-- 根部 -->
    <div >
    	<jsp:include page="footer.jsp"></jsp:include>
    </div>
    
  </body>
</html>
