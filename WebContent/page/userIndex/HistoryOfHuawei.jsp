<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>企业历程</title>

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

<link rel="stylesheet" type="text/css" href="static/css/user/header-footer.css">

<style>
	.content_txt {
		font-size:18px !important;
	}
</style>

</head>

<body>
	<!-- 頂部 -->
	<jsp:include page="header.jsp"></jsp:include>

	<!-- 内容 -->
	<div class="content">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 column">
					<ol class="breadcrumb">
						<li><a href="page/userIndex/huaweiEnterprise.jsp">首页</a></li>
						<li><a href="page/userIndex/about-huawei.jsp">关于华为</a></li>
						<li class="active">企业历程</li>
						<!-- <li><a href="#" >人事管理</a></li>
							 <li class="active">任正非简介</li> -->
					</ol>
				</div>

				<div class="col-md-12 col-sm-12 column content_txt">
					<%@include file="huaweiHistory.txt"%>
				</div>

			</div>
		</div>
	</div>

	<!-- 根部 -->
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
