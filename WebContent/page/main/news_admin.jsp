<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'news_admin.jsp' starting page</title>
    
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
	
	<!-- Bootstrap日期控件CSS文件 -->
	<link href="static/css/Bootstrap/bootstrap-datetimepicker.min.css" rel="stylesheet">

	<!-- 可选的Bootstrap主题文件（一般不使用） -->
	<script src="static/css/Bootstrap/bootstrap-theme.min.css"></script>

	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="static/jQuery/jquery-3.3.1.min.js"></script>

	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="static/js/Bootstrap/bootstrap.min.js"></script>
	
	<!-- Bootstrap日期控件JS文件 -->
	<script src="static/js/Bootstrap/bootstrap-datetimepicker.min.js"></script>
	
	<!-- Bootstrap日期控件初始化JS文件 -->
	<script src="static/js/Bootstrap/locales/bootstrap-datetimepicker.fr.js"></script>

	<link rel="stylesheet" href="static/css/admin/news_admin.css">
	
	<script type="text/javascript" src="static/js/admin/pageModel.js" ></script>
	<script type="text/javascript" src="static/js/admin/util.js"></script>
	<script type="text/javascript" src="static/js/admin/news_admin.js"></script>
	
		
	
	
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
		
			<div class="col-md-12 col-sm-12 column" >
				<div class="list_Content">
					<div class="panel panel-default">
						<div class="panel-heading">
							新闻管理
							<a  id="addModal_btn"
								class="pull-right" data-toggle="modal"
								data-target="#addModal" data-nihao="14"><i class="glyphicon glyphicon-plus"></i></a>
						</div>
						<table class="table" style="table-layout:fixed;" id="table1">
							<tr>
								<td>ID</td>
								<td>新闻标题</td>
								<td>输入时间</td>
								<td>新闻内容</td>
								<td>操&nbsp;&nbsp;作</td>
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
								<li><a href="javascript:void(0);" onclick="provice()">Previous</a></li>
								<li><a href="javascript:void(0);" onclick="next()">Next</a></li>
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
						id="exampleModalLabel">修改新闻信息</h4>
				</div>
				<div class="modal-body">
					<form action="News/updateNews.do" method="post">
						<div class="form-group">
							<input type="hidden" class="form-control" id="newsId" name="newsId">
						</div>
						<div class="form-group">
							<label for="recipient-name" class="control-label">标题:</label> <input
								type="text" class="form-control" id="newsTitle" name="newsTitle">
						</div>
						<div class="form-group">
							<label for="message-text" class="control-label">发布时间:</label> 
							<input type="text" class="form-control newsInTime" id="newsInTime" name="newsInTime" onclick="opendatetime()">
						</div>
						<div class="form-group">
							<label for="message-text" class="control-label">新闻内容:</label> 
							<textarea style="height: 195px; width: 567px;" name="newsContent" id="newsContent"> </textarea>
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
						id="exampleModalLabel">添加新闻信息</h4>
				</div>
				<div class="modal-body">
					<form action="News/insertNews.do" method="post">
						<div class="form-group">
							<input type="hidden" class="form-control" id="newsId" name="newsId">
						</div>
						<div class="form-group">
							<label for="recipient-name" class="control-label">标题:</label> <input
								type="text" class="form-control" id="newsTitle" name="newsTitle">
						</div>
						<div class="form-group">
							<label for="message-text" class="control-label">发布时间:</label> 
							<input type="text" class="form-control newsInTime" id="newsInTime" name="newsInTime" onclick="opendatetime()">
						</div>
						<div class="form-group">
							<label for="message-text" class="control-label">新闻内容:</label> 
							<textarea style="height: 195px; width: 567px;" name="newsContent" id="newsContent"> </textarea>
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

	<script type="text/javascript">
		$('#editModal').on('show.bs.modal', function (event) {
			//alert("修改信息");
			var modalData = $(event.relatedTarget)
			var newsid = modalData.data("whatever")
			var modal = $(this)
			for(var i = 0;i<jsonData.list.length;i++){
				if(newsid == jsonData.list[i].id){
					//console.log(jsonData.list[i].id)
					modal.find("#newsId").val(jsonData.list[i].id)
					modal.find("#newsTitle").val(jsonData.list[i].title)
					modal.find("#newsInTime").val(dateFromat("yyyy-MM-dd hh:mm:ss",new Date(jsonData.list[i].inputtime)))
					modal.find("#newsContent").val(jsonData.list[i].content)
					
				}
			}
		});
		
		
		
	</script>
	
	
  </body>
</html>
