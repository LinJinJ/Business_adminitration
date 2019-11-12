<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main_content.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<link href="static/css/admin/main_content.css" rel="stylesheet" >
	
		<!-- 新 Bootstrap 核心 CSS 文件 -->
	<link href="static/css/Bootstrap/bootstrap.min.css" rel="stylesheet">

	<!-- 可选的Bootstrap主题文件（一般不使用） -->
	<script src="static/css/Bootstrap/bootstrap-theme.min.css"></script>

	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="static/jQuery/jquery-3.3.1.min.js"></script>

	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="static/js/Bootstrap/bootstrap.min.js"></script>
	                                                                                                                                                                                                                                                                                                                                                                                                                                                       
	<script src="static/js/admin/util.js"></script> 
 
 	<script src="static/js/admin/main_content.js"></script>

	
  </head>
  
  <body>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div class="list_Content">
				<div class="text-center well">
				<h3>
					你好, ${loginName}管理员！
				</h3>
				<p>
					这里是华为企业门户网站管理后台！
				</p>
				<p>
					 <a class="" href="#">如有疑惑，请猛击这里！</a>
				</p>
				</div>
			</div>
		
		
			<%-- 操作信息显示开始 --%>
			<div class="list_Content">
				<div class="panel panel-default">
  					<div class="panel-heading">最新的操作动态</div>

  						<table class="table" id="table1">
  							<tr>
  								<td>ID</td>
  								<td>时间</td>
  								<td>功能</td>
  								<td>信息</td>
  								<td>状态</td>
  								<td>管理员</td>
  								
  							</tr>
  						
  						</table>
				</div>
				
				<%-- 分页 --%>
				<div>
					
					<div id="page">
						<%-- <p>总记录数：${CountIndex},总页数为：${CountPage},当前页为：${nowIndex} </p> --%>
					</div>
					
					<div id="navigation">
					<nav aria-label="Page navigation">
					<ul class="pager">
						<li><a href="javascript:void(0);" onclick="provice()">Previous</a></li>
						<li><a href="javascript:void(0);" onclick="next()">Next</a></li>
					</ul>
					</nav>
					</div>
				</div>
					
			</div>
		
			<%-- 结束 --%>
			
			
			
			
			</div>
	</div>
</div>	
		
  </body>
</html>
