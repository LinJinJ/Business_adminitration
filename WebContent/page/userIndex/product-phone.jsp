<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>产品展示</title>
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
	
	<script src="static/js/user/product_show.js"></script>
	<script src="static/js/user/product_category_show.js"></script>
	
	
	<link rel="stylesheet" type="text/css" href="static/css/user/header-footer.css">
	
	<style type="text/css">
		.list-images-show{
			text-align: center;
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
						<li><a href="page/userIndex/product.jsp">产品</a></li>
						<li class="active" id="product_category">..</li>
						<!-- <li><a href="#" >人事管理</a></li>
												<li class="active">任正非简介</li> -->
					</ol>
				</div>

				<!-- 商品展示 -->
				<div class="col-md-10 col-sm-10 col-sm-offset-2 col-md-offset-1 cloumn" id="product_list_show">
<!-- 					<div class="row clearfix phone"> -->
<!-- 						<div class="col-md-3 column" id="list-phone-1"> -->
<!-- 							<div class="list-images-show"> -->
<!-- 								<span> <a href="#"><img -->
<!-- 										class="img-responsive center-block" -->
<!-- 										src="static/images/enterprise/product-list/phone/mate-rs-black.png" /></a> <a href="#">HUAWEI -->
<!-- 										Mate 20 RS 保时捷设计</a> -->
<!-- 								</span> -->
<!-- 							</div> -->
<!-- 							<div class="list-porduct-content"> -->
<!-- 								<span> -->
<!-- 									<ul> -->
<!-- 										<li>致敬时代</li> -->
<!-- 										<li>矩阵多焦影像系统源于保时捷四点式车灯设计</li> -->
<!-- 										<li>传承经典，见证耀目人生</li> -->
<!-- 									</ul> -->
<!-- 								</span> -->
<!-- 							</div> -->
<!-- 						</div> -->
						
<!-- 						<div class="col-md-3 column" id="list-phone-2"> -->
<!-- 							<div class="list-images-show" style="text-align: center;"> -->
<!-- 								<span> <a href="#"><img class="img-responsive center-block" -->
<!-- 										src="static/images/enterprise/product-list/phone/maimang7-blue.png" /></a>  -->
<!-- 										<a href="#">HUAWEI麦芒7</a> -->
<!-- 								</span> -->
<!-- 							</div> -->
<!-- 							<div class="list-porduct-content"> -->
<!-- 								<span> -->
<!-- 									<ul> -->
<!-- 										<li>6.3英寸TFT LCD屏幕，1080×2340 像素</li> -->
<!-- 										<li>ƒ/2.0大光圈的2400万高清镜头</li> -->
<!-- 										<li>HDR Pro硬件级的逆光影像技术</li> -->
<!-- 									</ul> -->
<!-- 								</span> -->
<!-- 							</div> -->
<!-- 						</div> -->
						
<!-- 						<div class="col-md-3 column" id="list-phone-3"> -->
<!-- 							<div class="list-images-show"> -->
<!-- 								<span> <a href="#"><img -->
<!-- 										class="img-responsive center-block" -->
<!-- 										src="static/images/enterprise/product-list/phone/nova3-primrose-gold.png" /></a> <a -->
<!-- 									href="#">HUAWEI nova 3</a> -->
<!-- 								</span> -->
<!-- 							</div> -->
<!-- 							<div class="list-porduct-content"> -->
<!-- 								<span> -->
<!-- 									<ul> -->
<!-- 										<li>6.3英寸FHD+显示屏，2340×1080像素分辨率</li> -->
<!-- 										<li>前置 2400万高清红外双摄</li> -->
<!-- 										<li>麒麟970芯片，AI实力派</li> -->
<!-- 									</ul> -->
<!-- 								</span> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<div class="col-md-3 column" id="list-phone-4"> -->
<!-- 							<div class="list-images-show"> -->
<!-- 								<span> <a href="#"><img -->
<!-- 										class="img-responsive center-block" -->
<!-- 										src="static/images/enterprise/product-list/phone/nova3-primrose-gold.png" /></a> <a -->
<!-- 									href="#">HUAWEI nova 3</a> -->
<!-- 								</span> -->
<!-- 							</div> -->
<!-- 							<div class="list-porduct-content"> -->
<!-- 								<span> -->
<!-- 									<ul> -->
<!-- 										<li>6.3英寸FHD+显示屏，2340×1080像素分辨率</li> -->
<!-- 										<li>前置 2400万高清红外双摄</li> -->
<!-- 										<li>麒麟970芯片，AI实力派</li> -->
<!-- 									</ul> -->
<!-- 								</span> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
					<!--  第二列-->
<!-- 					<div class="row clearfix phone"> -->
<!-- 						<div class="col-md-3 column" id="list-phone-5"> -->
<!-- 							<div class="list-images-show"> -->
<!-- 								<span> <a href="#"><img -->
<!-- 										class="img-responsive center-block" -->
<!-- 										src="static/images/enterprise/product-list/phone/p10-plus-diamond-carving-gold.png" /></a> -->
<!-- 									<a href="#">HUAWEI P10 Plus</a> -->
<!-- 								</span> -->
<!-- 							</div> -->
<!-- 							<div class="list-porduct-content"> -->
<!-- 								<span> -->
<!-- 									<ul> -->
<!-- 										<li>5.5英寸，2K高清屏幕</li> -->
<!-- 										<li>2000万+1200万徕卡双摄，ƒ/1.8大光圈</li> -->
<!-- 										<li>人像摄影大师，每一拍都是大片</li> -->
<!-- 									</ul> -->
<!-- 								</span> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<div class="col-md-3 column" id="list-phone-6"> -->
<!-- 							<div class="list-images-show"> -->
<!-- 								<span> <a href="#"><img -->
<!-- 										class="img-responsive center-block" -->
<!-- 										src="static/images/enterprise/product-list/phone/p20-pro-leather-golden-brown.png" /></a> -->
<!-- 									<a href="#">HUAWEI P20 Pro真皮限量版</a> -->
<!-- 								</span> -->
<!-- 							</div> -->
<!-- 							<div class="list-porduct-content"> -->
<!-- 								<span> -->
<!-- 									<ul> -->
<!-- 										<li>6.1英寸OLED屏幕，2240×1080像素</li> -->
<!-- 										<li>4000万+2000万+800万徕卡三摄</li> -->
<!-- 										<li>AI摄影大师，懂你要的美</li> -->
<!-- 									</ul> -->
<!-- 								</span> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<div class="col-md-3 column" id="list-phone-7"> -->
<!-- 							<div class="list-images-show"> -->
<!-- 								<span> <a href="#"><img -->
<!-- 										class="img-responsive center-block" -->
<!-- 										src="static/images/enterprise/product-list/phone/pd-mate10-diamond-black.png" /></a> <a -->
<!-- 									href="#">HUAWEI Mate 10 保时捷设计</a> -->
<!-- 								</span> -->
<!-- 							</div> -->
<!-- 							<div class="list-porduct-content"> -->
<!-- 								<span> -->
<!-- 									<ul> -->
<!-- 										<li>6.0英寸OLED显示屏，2160×1080像素分辨率</li> -->
<!-- 										<li>保时捷设计与科技融合 技术与美成就经典</li> -->
<!-- 										<li>深邃黑色 演绎沉稳高贵品质</li> -->
<!-- 									</ul> -->
<!-- 								</span> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<div class="col-md-3 column" id="list-phone-8"> -->
<!-- 							<div class="list-images-show"> -->
<!-- 								<span> <a href="#"><img -->
<!-- 										class="img-responsive center-block" -->
<!-- 										src="static/images/enterprise/product-list/phone/nova3-primrose-gold.png" /></a> <a -->
<!-- 									href="#">HUAWEI nova 3</a> -->
<!-- 								</span> -->
<!-- 							</div> -->
<!-- 							<div class="list-porduct-content"> -->
<!-- 								<span> -->
<!-- 									<ul> -->
<!-- 										<li>6.3英寸FHD+显示屏，2340×1080像素分辨率</li> -->
<!-- 										<li>前置 2400万高清红外双摄</li> -->
<!-- 										<li>麒麟970芯片，AI实力派</li> -->
<!-- 									</ul> -->
<!-- 								</span> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
			
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
