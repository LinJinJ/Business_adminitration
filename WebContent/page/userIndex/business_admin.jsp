<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>公司管理信息</title>
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
  	<div >
  		<jsp:include page="header.jsp"></jsp:include>
  	</div>	
  	
  			<!-- 内容 -->
		<div class="content">
			<div class="container">
				<div class="row">
					<div class="col-md-12 col-sm-12 column">
						<ol class="breadcrumb">
							<li><a href="page/userIndex/huaweiEnterprise.jsp">首页</a></li>
							<li class="active">企业管理</li>
							<!-- <li><a href="#" >人事管理</a></li>
												<li class="active">任正非简介</li> -->
						</ol>
					</div>

					<div class="col-md-12 col-sm-12 column">
						<h2>企业管理</h2>
						<span class="text-center text-justify">
							<p>
								<img class="img-responsive center-block pull-right" style=" width: 410px;padding-left: 45px;height: 250px;padding-top: 0px;margin-top: 15px;padding-right: 0px;margin-right: 25px;"
								 src="static/images/enterprise/corporate-governance-structure-cn.jpg" />
							</p>
							<p class="lead">
								<strong>
									&nbsp;&nbsp;&nbsp;&nbsp;股东会是公司权力机构，对公司增资、利润分配、
									选举董事/监事等重大事项作出决策。
								</strong>
							</p>
							<p class="lead">
								<strong>
									&nbsp;&nbsp;&nbsp;&nbsp;董事会是公司战略、经营管理和客户
									满意度的最高责任机构，承担带领公司前进的使命，行使公司战略
									与经营管理决策权，确保客户与股东的利益得到维护。
								</strong>
							</p>
							<p class="lead">
								<strong>
									&nbsp;&nbsp;&nbsp;&nbsp;公司董事会及董事会常务委员会由
									轮值董事长主持，轮值董事长在当值期间是公司最高领袖。
								</strong>
							</p>
							<p class="lead">
								<strong>
									&nbsp;&nbsp;&nbsp;&nbsp;监事会主要职责包括董事/高级管
									理人员履职监督、公司经营和财务状况监督、合规监督。
								</strong>
							</p>

						</span>
					</div>

					<div class="col-md-12 col-sm-12 column">
						<h2>华为关键人物</h2>
						<div class="col-md-4 column">
							<p>
								<a href="page/userIndex/renzhengfei.jsp"><img class="img-rounded img-responsive " src="static/images/enterprise/huawei_origination_renzhenfei.jpg"/></a> 
							</p>
							<h2 >
								任正非
							</h2>
						
							<p>
								<a class="btn" href="page/userIndex/renzhengfei.jsp">了解更多 »</a>
							</p>
						</div>
						<div class="col-md-4 column">
							<p>
								<a href="page/userIndex/sunyafang.jsp"><img class="img-responsive img-rounded" src="static/images/enterprise/huawei_origination_sunyafan.jpg"/></a> 
							</p>
							<h2>
								孙亚芳
							</h2>
							
							<p>
								<a class="btn" href="page/userIndex/sunyafang.jsp">了解更多 »</a>
							</p>
						</div>
						<div class="col-md-4 column">
							<p>
								<a href="page/userIndex/huhoukun.jsp"><img class="img-responsive img-rounded" src="static/images/enterprise/huawei_origination_huhoukun.jpg"/></a> 
							</p>
							<h2 >
								胡厚崑
							</h2>
							
							<p >
								<a class="btn" href="page/userIndex/huhoukun.jsp">了解更多 »</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
  	
  	<!-- 根部 -->
    <div>
    	<jsp:include page="footer.jsp"></jsp:include>
    </div>
    	
  </body>
</html>
