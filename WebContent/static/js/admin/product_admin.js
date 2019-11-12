/**
 * 产品信息的初始化
 * 
 * * 参数说明（避免被占用，每个JSP的JS中重新声明）
 * 		startIndex:开始查询的下标
 * 		endIndex:要查询的记录数
 * 		url:要传给跳转函数的地址
 * 		CountIndex:总记录数
 * 		jsonData:要传到JSP页面的数据
 */

 var startIndex,endIndex,url,CountIndex ,jsonData,SearchUrl;
window.onload=function(){
    startIndex = 0,endIndex = 5, url="Product/getPage.do",SearchUrl = "Product/search.do";

    requestData(startIndex,endIndex);

    getPage(url);
 }

 function requestData(startIndex,endIndex){
	$.ajax({
		type:'GET',
		url:"Product/getProduct.do",
		data:{startIndex:startIndex,endIndex:endIndex},
		dataType:'json',	
		success: function(data){
			$("tr").remove(".items");
			//console.log(data.list);
			dataToShow(data);
			
		}
		
	
	});
}


 function dataToShow(data) {
	 for(var i = 0;i<data.list.length;i++){
         var items = "<tr class=\"items\"><td>"+data.list[i].id+"</td><td title=\""+data.list[i].productname+"\">"+data.list[i].productname+
         "</td><td>"+data.list[i].productprice+"</td><td><img class=\"imag-response\" src=\""+data.list[i].productpictuer+
         "\"></td><td title=\""+data.list[i].productparameter1+"\">"+data.list[i].productparameter1+"</td><td title=\""+data.list[i].productparameter2+"\">"+data.list[i].productparameter2+
         "</td><td title=\""+data.list[i].productparameter3+"\">"+data.list[i].productparameter3+"</td><td>"+data.list[i].category+
         "</td><td><a  onclick=\"deleteProduct("+data.list[i].id+",'"+data.list[i].productname+"')\" >" +
					"<i class=\"glyphicon glyphicon-remove\"></i></a>&nbsp;&nbsp;" +
					"<a data-toggle=\"modal\" data-target=\"#editModal\"" +
					"data-whatever=\""+data.list[i].id+"\">" +
							"<i class=\"glyphicon glyphicon-pencil\"></i></a></td></tr>";
			//console.log(items);
			$("#table1").append(items);
			jsonData = data;
		}
	}
 
 
function deleteProduct(id,productname){

	var isDel = confirm("请确认是否删除该信息？");
	if(isDel == true){
		$.ajax({
		type:'post',
		url:"Product/deleteProduct.do",
		data:{id:id,productname:productname},
		dataType:'json',
		success:function(data){
			//这里没数据返回不会执行到这里
			alert(""+data.success);
			requestData(data.startIndex,endIndex);
		},
		error:function(){
			alert("删除失败！");
		}
			
	});
	requestData(startIndex,endIndex);
	}else{
		return;
	}
	
}

function searchButton() {
	var searchText = $("#liketext").val();
	search(searchText,SearchUrl, startIndex, endIndex);
}
