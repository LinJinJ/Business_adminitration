<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>User_admin</title>

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

<link href="static/css/admin/user_admin.css" rel="stylesheet">

<script src="static/js/admin/util.js"></script>

<script src="static/js/admin/pageModel.js"></script>

<script src="static/js/admin/user_admin.js"></script>


</head>

<body>
	<div class="container">
		<div class="row clearfix">
			
			<!--  添加搜索框 -->
			<div class="col-md-12 col-sm-12 column">
				 <form class="navbar-form navbar-left" >
				    <div class="form-group">
				       <input id="liketext" type="text" class="form-control" name="liketext" placeholder="请输入用户名">
				    </div>
				    <button type="button" class="btn btn-default" onclick="searchButton()" >搜索</button>
	      		</form>
			</div>
			
			<div class="col-md-12 col-sm-12 column">
				<div class="list_Content">
					<div class="panel panel-default ">
						<div class="panel-heading">
							用户信息
							<a  id="addModal_btn"
								class="pull-right" data-toggle="modal"
								data-target="#addModal" data-nihao="14"><i class="glyphicon glyphicon-plus"></i></a>
						</div>
						<table class="table" id="table1">
							<tr>
								<td>ID</td>
								<td>用户名</td>
								<td>密码</td>
								<td>地址</td>
								<td>邮箱</td>
								<td>手机</td>
								<td>注册时间</td>
								<td>操&nbsp;作</td>
							</tr>

						</table>

					</div>

					<%-- 分页 开始--%>
					<div>
						<div id="page">
							<%-- <p>总记录数：${CountIndex},总页数为：${CountPage},当前页为：${nowIndex} </p> --%>
						</div>

						<div id="navigation">
							<nav aria-label="Page navigation">
							<ul class="pager">
								<li id="provice"><a href="javascript:void(0);" onclick="provice()">Previous</a></li>
								<li id="next"><a href="javascript:void(0);" onclick="next()">Next</a></li>
							</ul>
							</nav>
						</div>
					</div>
					<%-- 分页 结束--%>

				</div>
			</div>
		</div>
	</div>


	<%-- 修改模态框 --%>
	<div class="modal fade" id="editModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" style="text-align: center;"
						id="exampleModalLabel">修改用户信息</h4>
				</div>
				<div class="modal-body">
					<form action="user/userUpdate.do" method="post">
						<div class="form-group">
							<input type="hidden" class="form-control" id="userid" name="userid">
						</div>
						<div class="form-group">
							<label for="recipient-name" class="control-label">用户名:</label> <input
								type="text" class="form-control" id="username" name="username">
						</div>
						<div class="form-group">
							<label for="message-text" class="control-label">密码:</label> <input
								type="text" class="form-control" id="password" name="password">
						</div>
						<div class="form-group">
							<label for="message-text" class="control-label">地址:</label> <input
								type="text" class="form-control" id="useraddress" name="useraddress" >
						</div>
						<div class="form-group">
							<label for="message-text" class="control-label">邮箱:</label> <input
								type="text" class="form-control" id="useremail" name="useremail">
						</div>
						<div class="form-group">
							<label for="message-text" class="control-label">手机:</label> <input
								type="text" class="form-control" id="userphone" name="userphone">
						</div>
						<div class="modal-footer form-group">
							<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
							<button type="submit" class="btn btn-primary">保存</button>
						</div>
				</form>
				</div>
			</div>
		</div>
	</div>

	<%-- 添加模态框 --%>
	<div class="modal fade" id="addModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" style="text-align: center;"
						id="exampleModalLabel">添加用户信息</h4>
				</div>
				<div class="modal-body">
					<form  id="inserform" method="post"> 
						<div class="form-group">
							<label for="recipient-name" class="control-label">用户名:</label> <input
								type="text" class="form-control" id="username" name="username">
						</div>
						<div class="form-group">
							<label for="message-text" class="control-label">密码:</label> <input
								type="text" class="form-control" id="password" name="password">
						</div>
						<div class="form-group">
							<label for="message-text" class="control-label">地址:</label> <input
								type="text" class="form-control" id="useraddress" name="useraddress" >
						</div>
						<div class="form-group">
							<label for="message-text" class="control-label">邮箱:</label> <input
								type="text" class="form-control" id="useremail" name="useremail">
						</div>
						<div class="form-group">
							<label for="message-text" class="control-label">手机:</label> <input
								type="text" class="form-control" id="userphone" name="userphone">
						</div>

						<div class="modal-footer form-group">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">关闭</button>
							<button type="button" onclick="addUser()" class="btn btn-primary">保存</button>
						</div>
					</form>
				</div>
				
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$('#editModal').on('show.bs.modal', function (event) {
			alert("修改信息");
			var modalData = $(event.relatedTarget)
			var userid = modalData.data("whatever")
			var modal = $(this)
			for(var i = 0;i<jsonData.list.length;i++){
				if(userid == jsonData.list[i].id){
					//console.log(jsonData.list[i].id)
					modal.find("#userid").val(jsonData.list[i].id)
					modal.find("#username").val(jsonData.list[i].username)
					modal.find("#password").val(jsonData.list[i].password)
					modal.find("#useraddress").val(jsonData.list[i].address)
					modal.find("#useremail").val(jsonData.list[i].email)
					modal.find("#userphone").val(jsonData.list[i].phone)
					modal.find("#rg_time").val(dateFromat("yyyy-MM-dd hh:mm:ss",new Date(jsonData.list[i].rgTime)))
				}
			}
		});
		
	</script>

</body>
</html>
