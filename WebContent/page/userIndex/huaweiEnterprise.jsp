<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>华为官网</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
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

	<script type="text/javascript" src="static/js/user/enterprise.js"></script>
	
	<link href="static/css/user/EnterpriseIndex.css" rel="stylesheet">
	
	<link rel="stylesheet" type="text/css" href="static/css/user/header-footer.css">
	
  </head>
  
  <body>
    <!-- 头部导航 主页详情、移动端二维码显示、会员登录、管理员登录-->
		<div class="header">
			<jsp:include page="header.jsp"></jsp:include>
    		</div>
		
		<!-- 内容数据填充 -->
		<div class="content">
			<!-- 轮播图 -->
			<div class="banner">
				<div class="container">
					<div class="row">
						<div class="col-md-12 column">
							<div id="carousel-example-generic" class="carousel slide" date-ride="caroussel">
								<!-- 小圆点 -->
								<ol class="carousel-indicators">
									<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
									<li data-target="#carousel-example-generic" data-slide-to="1"></li>
									<li data-target="#carousel-example-generic" data-slide-to="2"></li>
								</ol>
								<!-- 图片 -->
								<div class="carousel-inner" role="listbox">
									<!-- 第一组轮播图 -->
									<div class="item active">
										<img src="static/images/enterprise/hbanner-allflash-storage-pc.jpg" />
										<!-- 提示语 -->
										<div class="carousel-caption">
											<span>
												<img class="img-responsive" src="static/images/enterprise/hbanner-allflash-storage-text-cn.png" />
											</span>
										</div>
									</div>
									<!-- 第二组轮播图 -->
									<div class="item">
										<img src="static/images/enterprise/hero_banner_vmall_pc.jpg" />
										<!-- 提示语 -->
										<div class="carousel-caption">
											<span>
												<img class="img-responsive" src="static/images/enterprise/hero_banner_vmall_text.png" />
											</span>
										</div>
									</div>
									<!-- 第三组轮播图 -->
									<div class="item">
										<img src="static/images/enterprise/Hero-Banner-bg-new-year-message-2019.jpg" />
										<!-- 提示语 -->
										<div class="carousel-caption">
											<span>
												<img class="img-responsive" src="static/images/enterprise/Hero-Banner-text-cn-new-year-message-2019.png" />
											</span>
										</div>
									</div>
								</div>
								<!-- 左右游标 -->
								<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
									<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
									<span class="sr-only">Previous</span>
								</a>
								<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
									<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
									<span class="sr-only">Next</span>
								</a>

							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- 公司简介 -->
			<div class="company-profile" id="company-profile">
				<div class="container">
					<div class="row">
						<!-- <div class="col-md-12 column"> -->
						<div class="panel-heading">
							<h3>公司简介<span class="pull-right"><a href="page/userIndex/moreInformationIntoHuawei.jsp"><span style="font-size: 18px !important;">查看更多 >　</span></a> </span></h3></h3>
						</div>
						<!-- 图像 -->
						<div class="col-md-4 column">
							<div class="person_huawei ">
							<!-- /Business_Administration/WebRoot/static/images/enterprise/hero_banner_vmall_pc.jpg -->
								<a href="page/userIndex/renzhengfei.jsp"><img class="img-responsive img-rounded" src="static/images/enterprise/huawei_origination_renzhenfei.jpg" /></a>
								<a href="page/userIndex/huhoukun.jsp"><img class="img-responsive img-rounded" src="static/images/enterprise/huawei_origination_huhoukun.jpg" /></a>
								<a href="page/userIndex/sunyafang.jsp"><img class="img-responsive img-rounded" src="static/images/enterprise/huawei_origination_sunyafan.jpg" /></a>
							</div>
						</div>

						<!-- 文字 -->
						<div class="col-md-6 column col-md-offset-1" id="profile-text">
							<div class="huawei_text">
								<p>
										<%@include file="p-enterprise-information.txt" %>
								</p>

							</div>
						</div>

						<!-- </div> -->
					</div>
				</div>
			</div>

			<!-- 产品信息 -->
			<div class="product-information" id="product-information">
				<div class="container">
					<div class="row">
						<div class="panel-heading">
							<h3>产品介绍<span class="pull-right"><a href="page/userIndex/product.jsp"><span style="font-size: 18px !important;">查看更多 >　</span></a> </span></h3></h3>
						</div>
						<div class="col-md-12">
							<div class="listshowproduct">
								<!-- 热门商品 -->
								<div class="col-md-3 column" id="hot-product">
									<a href="page/userIndex/product.jsp">
										<!-- 文字说明 -->
										<div class="product-context">
											<div class="product-context-header">
												<span>
													<img class="img-responsive" src="static/images/enterprise/mate20pro_name_cn_v2.png" />
												</span>
											</div>
										</div>

										<!-- 图片 -->
										<div class="product-img">
											<span>
												<img class="img-responsive" src="static/images/enterprise/product-1.png" />
											</span>
										</div>

									</a>
									<div class="product-more-information">
										<span>
											<ul>
												<li>6.53英寸高清珍珠屏，FHD+ 1080×2244像素</li>
												<li>麒麟980旗舰芯片，4000mAh（典型值）电池</li>
												<li>1200万+1600万+800万徕卡三摄</li>
											</ul>
										</span>
									</div>
								</div>

								<!-- 商品展示 -->
								<div class="col-md-8 col-md-offset-1 cloumn">
									<div class="row clearfix">
										<div class="col-md-4 column" id="list-product-1">
											<div class="list-product">
												<div class="list-images-show">
													<span>
														<a href="page/userIndex/product.jsp"><img class="img-responsive" src="static/images/enterprise/product-list/phone/mate-rs-black.png" /></a>
													</span>
												</div>
												<div class="list-product-title">
													<span>
														<a href="page/userIndex/product.jsp">HUAWEI Mate 20 RS 保时捷设计</a>
													</span>
												</div>
												<div class="list-porduct-content">
													<span>
														<ul>
															<li>致敬时代</li>
															<li>矩阵多焦影像系统源于保时捷四点式车灯设计</li>
															<li>传承经典，见证耀目人生</li>
														</ul>
													</span>
												</div>
											</div>
										</div>
										
										<div class="col-md-4 column" id="list-product-2">
											<div class="list-product">
												<div class="list-images-show">
													<span>
														<a href="page/userIndex/product.jsp"><img class="img-responsive" src="static/images/enterprise/product-list/phone/maimang7-blue.png" /></a>
													</span>
												</div>
												<div class="list-product-title">
													<span>
														<a href="page/userIndex/product.jsp">HUAWEI 麦芒7</a>
													</span>
												</div>
												<div class="list-porduct-content">
													<span>
														<ul>
															<li>6.3英寸TFT LCD屏幕，1080×2340 像素</li>
															<li>ƒ/2.0大光圈的2400万高清镜头</li>
															<li>HDR Pro硬件级的逆光影像技术</li>
														</ul>
													</span>
												</div>
											</div>	
										</div>
										
										<div class="col-md-4 column" id="list-product-3">
											<div class="list-product">
												<div class="list-images-show">
													<span>
														<a href="page/userIndex/product.jsp"><img class="img-responsive" src="static/images/enterprise/product-list/phone/nova3-primrose-gold.png" /></a>
													</span>
												</div>
												<div class="list-product-title">
													<span>
														<a href="page/userIndex/product.jsp">HUAWEI nova 3</a>
													</span>
												</div>
												<div class="list-porduct-content">
													<span>
														<ul>
															<li>6.3英寸FHD+显示屏，2340×1080像素分辨率</li>
															<li>前置 2400万高清红外双摄</li>
															<li>麒麟970芯片，AI实力派</li>
														</ul>
													</span>
												</div>
											</div>	
										</div>
									</div>
									<!-- 第二列 -->
									<div class="row clearfix">
										<div class="col-md-4 column" id="list-product-4">
											<div class="list-product">
												<div class="list-images-show">
													<span>
														<a href="page/userIndex/product.jsp"><img class="img-responsive" src="static/images/enterprise/product-list/phone/p10-plus-diamond-carving-gold.png" /></a>
													</span>
												</div>
												<div class="list-product-title">
													<span>
														<a href="page/userIndex/product.jsp">HUAWEI P10 Plus</a>
													</span>
												</div>
												<div class="list-porduct-content">
													<span>
														<ul>
															<li>5.5英寸，2K高清屏幕</li>
															<li>2000万+1200万徕卡双摄，ƒ/1.8大光圈</li>
															<li>人像摄影大师，每一拍都是大片</li>
														</ul>
													</span>
												</div>
											</div>	
										</div>
										
										<div class="col-md-4 column" id="list-product-5">
											<div class="list-product">
												<div class="list-images-show">
													<span>
														<a href="page/userIndex/product.jsp"><img class="img-responsive" src="static/images/enterprise/product-list/phone/p20-pro-leather-golden-brown.png" /></a>
													</span>
												</div>
												<div class="list-product-title">
													<span>
														<a href="page/userIndex/product.jsp">HUAWEI P20 Pro真皮限量版</a>
													</span>
												</div>
												<div class="list-porduct-content">
													<span>
														<ul>
															<li>6.1英寸OLED屏幕，2240×1080像素</li>
															<li>4000万+2000万+800万徕卡三摄</li>
															<li>AI摄影大师，懂你要的美</li>
														</ul>
													</span>
												</div>
											</div>	
										</div>
										
										<div class="col-md-4 column" id="list-product-6">
											<div class="list-product">
												<div class="list-images-show">
													<span>
														<a href="page/userIndex/product.jsp"><img class="img-responsive" src="static/images/enterprise/product-list/phone/pd-mate10-diamond-black.png" /></a>
													</span>
												</div>
												<div class="list-product-title">
													<span>
														<a href="page/userIndex/product.jsp">HUAWEI Mate 10 保时捷设计</a>
													</span>
												</div>
												<div class="list-porduct-content">
													<span>
														<ul>
															<li>6.0英寸OLED显示屏，2160×1080像素分辨率</li>
															<li>保时捷设计与科技融合 技术与美成就经典</li>
															<li>深邃黑色 演绎沉稳高贵品质</li>
														</ul>
													</span>
												</div>
											</div>	
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- 新闻、公告、活动 -->
			<div class="news-notice-active" id="news-notice-active">
				<div class="container">
					<div class="row">
						<div class="col-md-12 column">
							<div class="panel-heading">
								<h3> 公司动态
									<span class="pull-right"><a href="page/userIndex/news_show.jsp"><span style="font-size: 18px !important;">查看更多 >　</span></a> </span></h3>
							</div>
							<div class="switch">
								<!-- 标签页头部 -->
<!-- 								<ul class="nav nav-tabs" role="tablist"> -->
<!-- 									<li role="persentation" class="active"><a href="#news" aria-controllers="news" role="table" data-toggle="tab">新闻</a> -->
<!-- 									</li> -->
<!-- 									<li role="persentation"><a href="#notice" aria-controllers="news" role="table" data-toggle="tab">公告</a> </li> -->
<!-- 									<li role="persentation"><a href="#active" aria-controllers="news" role="table" data-toggle="tab">活动</a> </li> -->
<!-- 								</ul> -->

								<!-- 标签内容 -->
								<div class="tab-content">
									<!-- 新闻 -->
									<div role="tabpanel" class="tab-pane active fade in" id="news">
										<div class="container">
											<div class="row">
												<div class="col-md-5" id="hot-news">
													<!-- 整体卡片可调转 -->
													<a href="page/userIndex/news_show.jsp">
														<div class="card-img">
															<span>
																<img class="img-responsive" src="static/images/enterprise/2018-11-20-news.jpg" />
															</span>
														</div>
														<!-- 最新新闻的内容 -->
														<div class="card-content">
															<div class="text-time-address">
																新闻&nbsp;|&nbsp;2018年11月20日
															</div>
															<div class="text-title">
																<h3>5G启领未来，构建互联的智能世界</h3>
															</div>
														</div>
													</a>
												</div>
												<div class="col-md-6 col-md-offset-1" id="otherNews">
													<ul class="nesList" id="newsList">
														<li class="news-li">
															<div class="news-header">
																新闻&nbsp;|&nbsp;2018年12月05日
															</div>
															<a href="#" class="other-content">
																英特尔和华为成功完成全球首个2.6GHz频段基于3GPP标准 SA架构的5G互操作性测试
															</a>

														</li>
														<li class="news-li">
															<div class="news-header">
																新闻&nbsp;|&nbsp;2018年12月05日
															</div>
															<a href="#" class="other-content">
																英特尔和华为成功完成全球首个2.6GHz频段基于3GPP标准 SA架构的5G互操作性测试
															</a>

														</li>
														<li class="news-li">
															<div class="news-header">
																新闻&nbsp;|&nbsp;2018年12月05日
															</div>
															<a href="#" class="other-content">
																英特尔和华为成功完成全球首个2.6GHz频段基于3GPP标准 SA架构的5G互操作性测试
															</a>

														</li>
														<li class="news-li">
															<div class="news-header">
																新闻&nbsp;|&nbsp;2018年12月05日
															</div>
															<a href="#" class="other-content">
																英特尔和华为成功完成全球首个2.6GHz频段基于3GPP标准 SA架构的5G互操作性测试
															</a>

														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>

									<!-- 公告 -->
									<div role="tabpanel" class="tab-pane fade" id="notice">
 
									</div>

									<!-- 活动 -->
									<div role="tabpanel" class="tab-pane fade" id="active">

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
		</div>

		</div>
		
		<!-- 根部 -->
		<jsp:include page="footer.jsp"></jsp:include>

    
  </body>
</html>
