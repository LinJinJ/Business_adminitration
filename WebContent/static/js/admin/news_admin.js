/**
 * news_admin 新闻管理js
 * 参数说明（避免被占用，每个JSP的JS中重新声明）
 * 		startIndex:开始查询的下标
 * 		endIndex:要查询的记录数
 * 		url:要传给跳转函数的地址
 * 		CountIndex:总记录数
 * 		jsonData:要传到JSP页面的数据
 */


var startIndex,endIndex,url,CountIndex ,jsonData,SearchUrl;
window.onload=function(){
    startIndex = 0,endIndex = 8, url="News/getPage.do",SearchUrl = "News/search.do";

    requestData(startIndex,endIndex);

    getPage(url);
}


function requestData(startIndex,endIndex){
	$.ajax({
		type:'GET',
		url:"News/getNews.do",
		data:{startIndex:startIndex,endIndex:endIndex},
		dataType:'json',	
		success: function(data){
			$("tr").remove(".items");
		//	console.log(data.list);
			dataToShow(data);
			
		}
		
	
	});
}


function dataToShow(data) {
	for(var i = 0;i<data.list.length;i++){
		var items = "<tr class=\"items\"><td>"+data.list[i].id+"</td><td title=\""+data.list[i].title+"\">"+data.list[i].title+"</td><td>"+
        dateFromat("yyyy-MM-dd hh:mm:ss",new Date(data.list[i].inputtime))+
        "</td><td title=\""+data.list[i].content+"\">"+data.list[i].content+
		"</td><td><a  onclick=\"deleteNews("+data.list[i].id+")\">" +
				"<i class=\"glyphicon glyphicon-remove\"></i></a>&nbsp;&nbsp;" +
				"<a data-toggle=\"modal\" data-target=\"#editModal\"" +
				"data-whatever=\""+data.list[i].id+"\">" +
						"<i class=\"glyphicon glyphicon-pencil\"></i></a></td><tr>";
		//console.log(items);
		$("#table1").append(items);
		jsonData = data;
	}
	}

function deleteNews(id){

	var isDel = confirm("请确认是否删除该信息？");
	if(isDel == true){
		$.ajax({
		type:'GET',
		url:"News/deleteNews.do",
		data:{id:id},
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

//datetimepicker插件的设置
function opendatetime(){
	$('.newsInTime').datetimepicker({
   			 format: 'yyyy-mm-dd hh:ii:ss',
   			 autoclose:true,
   			 todayBtn:true,
   			 pickerPosition:"bottom-left"
		});
}