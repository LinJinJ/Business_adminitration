<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>产品类型选择</title>
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
	
	<script src="static/js/user/product_show.js"></script>
	
	<link rel="stylesheet" type="text/css" href="static/css/user/header-footer.css">

	<style>
		h4{
			margin-top:30px !important;
		}
	</style>
	
  </head>
  
  <body>
  	<!-- 头部 -->
  	<div>
  		<jsp:include page="header.jsp"></jsp:include>
  	</div>
  	
  	<!-- 内容 -->
		<div class="content">
			<div class="container">
				<div class="row">
					<div class="col-md-12 col-sm-12 column">
						<ol class="breadcrumb">
							<li><a href="page/userIndex/huaweiEnterprise.jsp">首页</a></li>
							<li class="active">产品</li>
						</ol>
					</div>
					
					<div class="col-md-11 col-sm-11 col-md-offset-1 col-sm-offset-1 col-md-push-1 col-sm-push-1 column">
						<div class="col-md-3 col-sm-3 column">
							<a href="javascript:void(0)" onclick="productShow(1)">
							<span style="text-align: center;">
								<img class="img-responsive center-block" src="static/images/enterprise/product-list/phone/maimang7-blue.png" />
								<p>
									<h4>手机</h4>
								</p>
							</span>
							</a>
						</div>
						<div class="col-md-3 col-sm-3 column">
							<a href="javascript:void(0)" onclick="productShow(2)">
							<span style="text-align: center;">
								<img class="img-responsive center-block" src="static/images/enterprise/product-list/laptop/matebook-x-pro-mystic-silver.png" />
								<p>
									<h4>笔记本</h4>
								</p>
							</span>
							</a>
						</div>
						<div class="col-md-3 col-sm-3 column">
							<a href="javascript:void(0)" >
							<span style="text-align: center;">
								<img class="img-responsive center-block" src="static/images/enterprise/product-list/paid/m5-8-gold.png" />
								<p>
									<h4>平板</h4>
								</p>
							</span>
							</a>
						</div>
					</div>
					
					<div class="col-md-11 col-sm-11 col-md-offset-1 col-sm-offset-1 col-md-push-1 col-sm-push-1 column" style="margin-top:30px">
						<div class="col-md-3 col-sm-3 column">
							<a href="javascript:void(0)">
								<span style="text-align: center;">
								<img class="img-responsive center-block" src="static/images/enterprise/product-list/watch/watch-gt-listimage-blank.png" />
								<p>
									<h4>智能穿戴</h4>
								</p>
							</span>
							</a> 
						</div>
						<div class="col-md-3 col-sm-3 column ">
							<a href="javascript:void(0)">
							<span style="text-align: center;">
								<img class="img-responsive center-block" src="static/images/enterprise/product-list/smart-home/ws5100-listimage-white.png" />
								<p>
									<h4>智能居家</h4>
							</span>
							</p>
							</a>
						</div>
						<div class="col-md-3 col-sm-3 column ">
							<a href="javascript:void(0)">
							<span style="text-align: center;">
								<img class="img-responsive center-block" src="static/images/enterprise/product-list/others/wifi-2-listimage-black.png" />
								<p>
									<h4>更多产品</h4>
								</p>	
							</span>
							</a>
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
