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

<title>新闻展示</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
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

<script type="text/javascript" src="static/js/admin/util.js"></script>
<script type="text/javascript" src="static/js/user/pageModel2.js"></script>
<script type="text/javascript" src="static/js/user/news_show.js"></script>

<link rel="stylesheet" type="text/css" href="static/css/user/header-footer.css">

<style>
	p{
		height: 100px;
    	overflow: hidden;
    	text-overflow: ellipsis;
	}
	h3{
/* 		height: 110px; */
	}
	.thumbnail{
		height:350px;
	}
	#pager .active a{
		background-color: lightsteelblue;
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
		<div class="container" id="newsContent">
				<div class="row">
					<div class="col-md-12 col-sm-12 column">
						<ol class="breadcrumb">
							<li><a href="page/userIndex/huaweiEnterprise.jsp">首页</a></li>
							<li class="active">新闻公告</li>
						</ol>
					</div>

					<div class="col-md-10 col-sm-10 col-md-offset-1 col-sm-offset-1 column" id="news_show">
						<div class="row " id="news_show_row_1">
							<div class="col-md-4 news_show_col">
								<a href="#">
								<div class="thumbnail">
									<h4 >
										新闻&nbsp;|&nbsp;2018年12月05日
									</h4>
									<img class="img-responsive" alt="300x200" src="static/images/enterprise/news/default6.jpg" />
									<div class="caption">
										<h3>
											英特尔和华为成功完成全球首个2.6GHz频段基于3GPP标准 SA架构的5G互操作性测试
										</h3>
										<p>
											Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget
											metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
										</p>
									</div>
								</div>
								</a>
							</div>
							<div class="col-md-4 news_show_col">
								<a href="#">
								<div class="thumbnail">
									<h4>
										新闻&nbsp;|&nbsp;2018年12月05日
									</h4>
									<img class="img-responsive" alt="300x200" src="static/images/enterprise/news/default6.jpg" />
									<div class="caption">
										<h3>
											英特尔和华为成功完成全球首个2.6GHz频段基于3GPP标准 SA架构的5G互操作性测试
										</h3>
										<p>
											Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget
											metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
										</p>
									</div>
								</div>
								</a>
							</div>
							<div class="col-md-4 news_show_col">
								<a href="#">
								<div class="thumbnail">
									<h4>
										新闻&nbsp;|&nbsp;2018年12月05日
									</h4>
									<img class="img-responsive" alt="300x200" src="static/images/enterprise/news/default6.jpg" />
									<div class="caption">
										<h3>
											英特尔和华为成功完成全球首个2.6GHz频段基于3GPP标准 SA架构的5G互操作性测试
										</h3>
										<p>
											Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget
											metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
										</p>
									</div>
								</div>
								</a>
						</div>
						</div>
						<div class="row " id="news_show_row_2">
							<div class="col-md-4 news_show_col">
								<a href="#">
								<div class="thumbnail">
									<h4>
										新闻&nbsp;|&nbsp;2018年12月05日
									</h4>
									<img class="img-responsive" alt="300x200" src="static/images/enterprise/news/default6.jpg" />
									<div class="caption">
										<h3>
											英特尔和华为成功完成全球首个2.6GHz频段基于3GPP标准 SA架构的5G互操作性测试
										</h3>
										<p>
											Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget
											metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
										</p>
									</div>
								</div>
								</a>
							</div>
							<div class="col-md-4 news_show_col">
								<a href="#">
								<div class="thumbnail">
									<h4>
										新闻&nbsp;|&nbsp;2018年12月05日
									</h4>
									<img class="img-responsive" alt="300x200" src="static/images/enterprise/news/default6.jpg" />
									<div class="caption">
										<h3>
											英特尔和华为成功完成全球首个2.6GHz频段基于3GPP标准 SA架构的5G互操作性测试
										</h3>
										<p>
											Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget
											metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
										</p>
									</div>
								</div>
								</a>
							</div>
							<div class="col-md-4 news_show_col">
								<a href="#">
								<div class="thumbnail">
									<h4>
										新闻&nbsp;|&nbsp;2018年12月05日
									</h4>
									<img class="img-responsive" alt="300x200" src="static/images/enterprise/news/default6.jpg" />
									<div class="caption">
										<h3>
											英特尔和华为成功完成全球首个2.6GHz频段基于3GPP标准 SA架构的5G互操作性测试
										</h3>
										<p>
											Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget
											metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
										</p>
									</div>
								</div>
								</a>
							</div>
						</div>
					</div>

					<!-- 分页 -->
					<div class="col-md-12 col-sm-12  column">
						<nav aria-label="Page navigation" id="pager_show">
							<ul class="pager" id="pager">
								<li class="disabled">
									<span>
										<span aria-hidden="true">&laquo;</span>
									</span>
								</li>
								<li class="active">
									<span>1 <span class="sr-only">(current)</span></span>
								</li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li>
									<a href="#" aria-label="Next">
										<span aria-hidden="true">&raquo;</span>
									</a>
								</li>
							</ul>
						</nav>
					</div>
				<!-- 分页接收 -->

				</div>
			
			</div>
		</div>
		
		

	<!-- 根部 -->
	<div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>

</body>
</html>
