<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>底部</title>
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
	
	<script type="text/javascript" src="static/js/user/header.js"></script>
	
  </head>
  
  <body>
	<!-- 根部 -->
		<div class="about-huawei">
			<div class="container-fluid">
				<div class="row">
					<div class="col-sm-12 col-md-12 column" style="background-color: #EEEEEE; padding-top: 48px;">
						<div class="col-md-3 col-sm-3 column information">
							<span>
								<a href="page/userIndex/HistoryOfHuawei.jsp">企业历程</a>
							</span>
						</div>
						<div class="col-md-3  col-sm-3 column information">
							<span>
								<a href="page/userIndex/enterprise_culture.jsp">企业文化</a>
							</span>
						</div>
						<div class="col-md-3 col-sm-3  column information">
							<span>
								<a href="page/userIndex/business_admin.jsp">企业管理</a>
							</span>
						</div>
						<div class="col-md-3  col-sm-3 column information">
							<span>
								<a>企业合作</a>
							</span>
						</div>
					</div>
					<footer class="footer container-fluid foot-wrap" id="footer_container">
						<div class="our-information">
							<div class="col-sm-4 column">
								<span id="footer-CopyRight">
									©2018 华为技术有限公司 &nbsp;&nbsp;
									<a href="http://www.miitbeian.gov.cn/" target="_blank">
										粤*********号
									</a>
								</span>
							</div>
							<div class="col-sm-3 col-sm-offset-5 column">
<!-- 								<ul> -->
<!-- 									<li><a>关于我们</a></li> -->
<!-- 									<li>&nbsp;|&nbsp;</li> -->
<!-- 									<li><a>联系我们</a></li> -->
<!-- 								</ul> -->
								<span><a>关于我们</a> </span>
								<span><a>&nbsp;</a> </span>
								<span><a id="contect" data-toggle="tooltip" data-placement="top" href="javascript:void(0);">联系我们</a> </span>
								<script type="text/javascript">
									$('#contect').tooltip({
									  html: true,
									  title: '<span style="margin-bottom:10px;">手机:1**********</br>邮箱:1***********@163.com</br></br></span>',
									  delay: { show: 500, hide: 100 }
									});
								</script>
							</div>
						</div>
					</footer>
				</div>
			</div>
		</div>
  </body>
</html>
