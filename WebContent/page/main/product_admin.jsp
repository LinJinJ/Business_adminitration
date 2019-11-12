<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'product_admin.jsp' starting page</title>
    
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
	
	<!-- BootStrap-table -->
	<link href="static/css/Bootstrap/bootstrap-table.min.css" rel="stylesheet">
	
	<!-- Bootstrap-fileinput -->
	<link href="static/css/Bootstrap/fileinput.min.css" rel="stylesheet">
	
	<!-- 可选的Bootstrap主题文件（一般不使用） -->
	<script src="static/css/Bootstrap/bootstrap-theme.min.css"></script>

	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="static/jQuery/jquery-3.3.1.min.js"></script>

	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="static/js/Bootstrap/bootstrap.min.js"></script>

	<!-- Bootstrap-fileinput JS文件 -->
	<script type="text/javascript" src="static/js/Bootstrap/fileinput.min.js"></script>
	
	<script src="static/js/Bootstrap/bootstrap-fileinput-locales/zh.js"></script>

	<!-- Bootstrap表格JS文件 -->
	<script src="static/js/Bootstrap/bootstrap-table.min.js"></script>
	
	<script src="static/js/Bootstrap/locale-table/bootstrap-table-zh-CN.js"></script>
	
	
	<link href="static/css/admin/product_admin.css" rel="stylesheet">

	<script src="static/js/admin/util.js"></script>

	<script src="static/js/admin/pageModel.js"></script>

	<script src="static/js/admin/product_admin.js"></script>

	
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
		
			<div class="col-md-12 col-sm-12 column">
				<div class="list_Content">
					<div class="panel panel-default">
						<div class="panel-heading">
							产品管理
							<a  id="addModal_btn"
								class="pull-right" data-toggle="modal"
								data-target="#addModal" data-nihao="14"><i class="glyphicon glyphicon-plus"></i></a>
						</div>
						
						<table class="table" style="table-layout:fixed;" id="table1" >
							
							<tr>
								<td>ID</td>
								<td>产品名称</td>
								<td>产品价格</td>
								<td>产品图片</td>
								<td>产品特性1</td>
								<td>产品特性2</td>
								<td>产品特性3</td>
								<td>产品类别</td>
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
						id="exampleModalLabel">修改产品信息</h4>
				</div>
				<div class="modal-body">
					<form action="Product/updateProduct.do"  method="post"> 
						<div class="form-group">
							<input type="hidden" class="form-control" id="productid" name="productid">
						</div>
						<div class="form-group">
							<label for="recipient-name" class="control-label">产品名称</label> 
							<input type="text" class="form-control" id="productname" name="productname">
						</div>
						<div class="form-group">
							<label for="message-text" class="control-label">产品价格</label> 
							<input type="text" class="form-control" id="productprice" name="productprice">
						</div>
						<div class="form-group">
							<label for="message-text" class="control-label">产品图片</label> <input
								type="text" class="form-control productpictuer" id="productpictuer" name="productpictuer" >
							<button type="button" class="btn" data-toggle="modal" data-target="#imageModal">选择图片</button>
						</div>
						<div class="form-group">
							<label for="message-text" class="control-label">产品特性</label> <input
								type="text" class="form-control" id="productparameter1" name="productparameter1">
						</div>
						<div class="form-group">
							<label for="message-text" class="control-label">产品特性</label> <input
								type="text" class="form-control" id="productparameter2" name="productparameter2">
						</div>
						
						<div class="form-group">
							<label for="message-text" class="control-label">产品特性</label> <input
								type="text" class="form-control" id="productparameter3" name="productparameter3">
						</div>
						
						<div class="form-group">
							<label for="message-text" class="control-label">产品类型</label> 
<!-- 							<input type="text" class="form-control" id="productcategory" name="productcategory"> -->
							<select class="form-control" id="productcategory" name="productcategory">
    								<option>手机</option>
    								<option>笔记本</option>
    								<option>平板</option>
    								<option>智能穿戴</option>
  								  	<option>居家产品</option>
  								  	<option>其他</option>
  							</select>
						</div>
						

						<div class="modal-footer form-group">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">关闭</button>
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
						id="exampleModalLabel">添加产品信息</h4>
				</div>
				<div class="modal-body">
					<form action="Product/insertProduct.do"  method="post"> 
						<div class="form-group">
							<label for="recipient-name" class="control-label">产品名称</label> 
							<input type="text" class="form-control" id="productname" name="productname">
						</div>
						<div class="form-group">
							<label for="message-text" class="control-label">产品价格</label> 
							<input type="text" class="form-control" id="productprice" name="productprice">
						</div>
						<div class="form-group">
							<label for="message-text" class="control-label">产品图片</label> <input
								type="text" class="form-control productpictuer" id="productpictuer" name="productpictuer" >
							<button type="button" class="btn" data-toggle="modal" data-target="#imageModal">选择图片</button>
						</div>
						<div class="form-group">
							<label for="message-text" class="control-label">产品特性</label> <input
								type="text" class="form-control" id="productparameter1" name="productparameter1">
						</div>
						<div class="form-group">
							<label for="message-text" class="control-label">产品特性</label> <input
								type="text" class="form-control" id="productparameter2" name="productparameter2">
						</div>
						
						<div class="form-group">
							<label for="message-text" class="control-label">产品特性</label> <input
								type="text" class="form-control" id="productparameter3" name="productparameter3">
						</div>
						
						<div class="form-group">
							<label for="message-text" class="control-label">产品类型</label> 
<!-- 							<input type="text" class="form-control" id="productcategory" name="productcategory"> -->
							<select class="form-control" id="productcategory" name="productcategory">
    								<option>手机</option>
    								<option>笔记本</option>
    								<option>平板</option>
    								<option>智能穿戴</option>
  								  	<option>居家产品</option>
  								  	<option>其他</option>
  							</select>
						</div>
						

						<div class="modal-footer form-group">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">关闭</button>
							<button type="submit" class="btn btn-primary">保存</button>
						</div>
					</form>
				</div>
				
			</div>
		</div>
	</div>
	
	<!-- 图片处理模态框 -->
	<div class="modal fade" id="imageModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  		<div class="modal-dialog" role="document">
   			 <div class="modal-content">
     			 <div class="modal-header">
       		 		<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
       		 		<h4 class="modal-title" id="myModalLabel">产品图片处理</h4>
      			</div>
      			<div class="modal-body">
<!--        				 <form enctype="multipart/form-data"> -->
          				<div class="form-group">
            				<input id="image_file" name="productImage" type="file" multiple  class="file"  data-show-upload="true" data-show-caption="true">
          				</div>
<!--         			</form> -->
     			</div>
<!--      			 <div class="modal-footer"> -->
<!--         			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button> -->
<!--         			<button type="button" class="btn btn-primary">Save changes</button> -->
<!--      			 </div> -->
    		</div>
  		</div>
	</div>

	<script type="text/javascript">
		$('#editModal').on('show.bs.modal', function (event) {
			alert("修改信息");
			var modalData = $(event.relatedTarget)
			var productid = modalData.data("whatever")
			console.log(productid)
			console.log(jsonData.list[0].id)
			var modal = $(this)
			for(var i = 0;i<jsonData.list.length;i++){
				if(productid == jsonData.list[i].id){
					console.log(jsonData.list[i].id)
					modal.find("#productid").val(jsonData.list[i].id)
					modal.find("#productname").val(jsonData.list[i].productname)
					modal.find("#productprice").val(jsonData.list[i].productprice)
					modal.find("#productpictuer").val(jsonData.list[i].productpictuer)
					modal.find("#productparameter1").val(jsonData.list[i].productparameter1)
					modal.find("#productparameter2").val(jsonData.list[i].productparameter2)
					modal.find("#productparameter3").val(jsonData.list[i].productparameter3)
					modal.find("#productcategory").val(jsonData.list[i].category)
				}
			}
		});
		$('#addModal').on('show.bs.modal', function (event) {
			var modal = $(this)

			modal.find("#productpictuer").val("")
			
		});
	</script>
	
	
	<script type="text/javascript">
		$("#image_file").fileinput({
			uploadUrl:"Product/ImagesFileInput.do",
			uploadAsync:true,
			enctype: 'multipart/form-data',
			allowedFileExtensions : [ 'jpg', 'png', 'gif', 'mp4' ],
			maxFileSize : 0,
			maxFileCount : 1
		}).on("fileuploaded",function(event,data){
			//console.log(data);
			//把路径输入到产品图片处
			if($("body").hasClass("modal-open")){
			    $(".productpictuer").val(data.response.src);
			}			
			//关闭图片modal
			
			$("#imageModal").modal('hide');
			
			
		}).on('filebatchuploaderror',function(event, data, msg){//上传失败唤起方法
                 	   	alert("文件上传出错!请重试");
			//清空文件
            		$("#image_file").fileinput('clear');          
        		});
			
		//模态框关闭事件
		$('#imageModal').on('hidden.bs.modal', '.modal', function () {
     			$("#image_file").fileinput('clear')
		});
		
	</script>
    
  </body>
</html>
