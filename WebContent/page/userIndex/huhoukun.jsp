<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>胡厚崑先生</title>
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
   		<jsp:include page="header.jsp"></jsp:include>
   	</div>
   	
   	<!-- 内容 -->
		<div class="content">
			<div class="container">
				<div class="row">
					<div class="col-md-12 col-sm-12 column">
						<ol class="breadcrumb">
							<li><a href="page/userIndex/huaweiEnterprise.jsp">首页</a></li>
							<li><a href="page/userIndex/business_admin.jsp">企业管理</a></li>
							<li class="active">胡厚崑</li>
							<!-- <li><a href="#" >人事管理</a></li>
												<li class="active">任正非简介</li> -->
						</ol>
					</div>
<!-- style="padding-bottom: 100px;" -->
					<div class="col-md-12 col-sm-12 column" style="padding-bottom: 10px;" >
						<h2>胡厚崑先生(副董事长、轮值董事长)</h2>
						<span class="text-center text-justify">
							<p>
								<img class="img-responsive center-block pull-right" style=" width: 250px;padding-left: 45px;height: 280px;padding-top: 0px;margin-top: 15px;padding-right: 0px;margin-right: 25px;"
								 src="static/images/enterprise/hw_huhoukun.jpg" />
							</p>
							<p class="lead">
								&nbsp;&nbsp;&nbsp;&nbsp;胡厚崑，男，出生于1968年，毕业于华中理工大学，本科。 1990 年加入华为，历任公司中国市场部总裁、
								拉美地区部总裁、全球销售部总裁、销售与服务总裁、战略与Marketing总裁、
								全球网络安全与用户隐私保护委员会主席、美国华为董事长、公司副董事长、
								轮值CEO及人力资源委员会主任等，现任公司副董事长、轮值董事长等职务。
							<p class="lead">
								&nbsp;&nbsp;&nbsp;&nbsp;2015年3月3日，华为轮值CEO胡厚崑接受媒体采访，胡厚崑在采访中谈及了5G网络及应用和华为公司的管理问题。在谈及5G对全社会的意义时，
								胡厚崑认为，5G对全社会最大的意义就是将带来真正意义上的物联网，而华为希望成为5G时代的领导者。
							</p>
						</span>
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
