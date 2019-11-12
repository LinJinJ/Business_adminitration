<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>关于华为</title>
	<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
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

	<!-- 頂部 -->
	<jsp:include page="header.jsp"></jsp:include>

	<!-- 内容 -->
	<div class="content">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 column">
					<ol class="breadcrumb">
						<li><a href="page/userIndex/huaweiEnterprise.jsp">首页</a></li>
						<li class="active">关于华为</li>
						<!-- <li><a href="#" >人事管理</a></li>
												<li class="active">任正非简介</li> -->
					</ol>
				</div>

				<div class="col-md-12 col-sm-12 column">
					<h3>
						<a href="page/userIndex/HistoryOfHuawei.jsp">企业历程</a>
					</h3>
					<p>
					<h4>&nbsp;&nbsp;&nbsp;&nbsp;企业历程，是企业管理团队与管理理念逐步摸索与完善的过程，包括企业创立、企业扩张、
						企业成熟、企业整合和企业蜕变等阶段的历程。</h4>
					</p>
				</div>


				<div class="col-md-12 col-sm-12 column">
					<h3>
						<a href="page/userIndex/enterprise_culture.jsp">企业文化</a>
					</h3>
					<p>
					<h4>&nbsp;&nbsp;&nbsp;&nbsp;企业文化，或称组织文化（Corporate
						Culture或Organizational Culture），是一个
						组织由其价值观、信念、仪式、符号、处事方式等组成的其特有的文化形象，简单而言，就是企业在日常运行中所表现出的 各方各面。</h4>
					</p>
				</div>


				<div class="col-md-12 col-sm-12 column">
					<h3>
						<a href="page/userIndex/business_admin.jsp">企业管理</a>
					</h3>
					<p>
					<h4>&nbsp;&nbsp;&nbsp;&nbsp;企业管理是对企业生产经营活动进行计划、组织、指挥、协调和控制等一系列活动的总称，
						是社会化大生产的客观要求。企业管理是尽可能利用企业的人力、物力、财力、信息等资源，实现多、快、好、省的目标，
						取得最大的投入产出效率。</h4>
					</p>
				</div>


				<div class="col-md-12 col-sm-12 column">
					<h3>
						<a>企业合作</a>
					</h3>
					<p>
					<h4>&nbsp;&nbsp;&nbsp;&nbsp;企业合作 (BusinessCooperation)
						是指不同的企业之间通过协议或其他联合方式共同开 发产品或市场，共享利益，以获取整体优势的经营活动。</h4>
					</p>
				</div>


			</div>
		</div>
	</div>

	<!-- 根部 -->
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
