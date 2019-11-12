<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>权限管理</title>
    
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
	
	<link href="static/css/admin/user_admin.css" rel="stylesheet">
	
	<script type="text/javascript" src="static/js/admin/authority.js"></script>
	
	<script type="text/javascript" src="static/js/user/pageModel2.js"></script>
	
	<style type="text/css">
		#pager .active a{
		background-color: lightsteelblue;
		}
	</style>
	
  </head>
  
  <body>
   	<div class="container">
   		<div class="row">
   			<!--  添加搜索框 -->
			<div class="col-md-12 col-sm-12 column">
				 <form class="navbar-form navbar-left" >
				    <div class="form-group">
				       <input id="liketext" type="text" class="form-control" name="liketext" placeholder="请输入用户名">
				    </div>
				    <button type="button" class="btn btn-default" onclick="searchButton()" >搜索</button>
	      		</form>
			</div>
   		
   			<div class="col-md-12 column">
				<div class="list_Content">
					<div class="panel panel-default">
						<div class="panel-heading">权限管理</div>
						<table class="table" id="table1">
							<tr>
								<td>用户名</td>
								<td>普通会员</td>
								<td>VIP会员</td>
								<td>系统管理员</td>
							</tr>
							
							<tr class="authorityShow">
								<td >辣鸡盛</td>
								<td> <input type="checkbox" name="member" id="member" 
         								value="option1" checked></td>
         						<td> <input type="checkbox" name="VIPmember" id="VIPmember" 
         								value="option1" checked> </td>
         						<td> <input type="checkbox" name="admin" id="admin" 
         								value="option1" checked></td>
							</tr>
								
						</table>
					</div>
					
<%-- 				分页 开始 --%>
<!-- 				<div> -->
<!-- 					<div id="page"> -->
<%-- 						<p>总记录数：${CountIndex},总页数为：${CountPage},当前页为：${nowIndex} </p> --%>
<!-- 					</div> -->

<!-- 					<div id="navigation"> -->
<!-- 						<nav aria-label="Page navigation"> -->
<!-- 							<ul class="pager"> -->
<!-- 								<li><a href="javascript:void(0);" onclick="provice()">Previous</a></li> -->
<!-- 								<li><a href="javascript:void(0);" onclick="next()">Next</a></li> -->
<!-- 							</ul> -->
<!-- 						</nav> -->
<!-- 					</div> -->
<!-- 				</div> -->
<%-- 				分页 结束 --%>
					
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
   	
  </body>
</html>
