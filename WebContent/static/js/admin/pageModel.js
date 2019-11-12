/**
 *  调用分页模板，获取数据
 * 	startIndex:每次查询的开始坐标
 * 	endIndex:每次查询的记录数
 * 
 */

//下一页
var searchText;
function next(){
	//进行加法运算，加上查询的记录数得到上一个的坐标
	startIndex +=endIndex;
	//判断坐标越界
	if(startIndex>CountIndex){
		startIndex -=endIndex;
	}
	//跳转并删除上一页留下的标签
	$("p").remove(".p");
	$("tr").remove(".items");
	if(searchText != null){
		search(searchText,SearchUrl,startIndex,endIndex);
	}else{
		requestData(startIndex,endIndex);
		
	}
	if((startIndex+endIndex) >= CountIndex){
		$('#next').addClass("disabled");
		$('#provice').removeClass("disabled");
	}else{
		$('#next').removeClass("disabled");
		$('#provice').removeClass("disabled");
	}
	
	getPage(url);
}	

//上一页
function provice(){
	//跳转并删除上一页留下的标签
	$("tr").remove(".items");
	$("p").remove(".p");
	//进行减法运算，减去查询的记录数得到上一个的坐标
	var i = startIndex - endIndex;
	if(startIndex == 0){
		$('#next').removeClass("disabled");
		$('#provice').addClass("disabled");
	}else{
		$('#next').removeClass("disabled");
		$('#provice').removeClass("disabled");
	}
	//处理第0页
	if(i <= 0){
		startIndex = 0;
		
	}else{
		startIndex -= endIndex;
	}
	
	if(searchText != null){
		search(searchText,SearchUrl,startIndex,endIndex);
	}else{
		requestData(startIndex,endIndex);
	}
	getPage(url);
}

function search(searchTxt, SearchUrl,startIndex,endIndex) {
	// url = SearchUrl;
	searchText = searchTxt;

	$.ajax({
		type: "get",
		url: SearchUrl,
		data: {
			likeUsername: searchText,
			startIndex: startIndex,
			endIndex: endIndex
		},
		success: function(data) {
			$("tr").remove(".items");
			dataToShow(data);
			 getPage(url);
		},
		error: function() {
			alert("查询失败！");
		}
	});
}


function getPage(url){
	$.ajax({
		type:"GET",
		url:url,
		dataType:'json',
		success:function(data){
			$("#page").empty();
			CountIndex = data.page[0];
			console.log(data.page);
			$("#page").append("<p class=\"p\">总记录数为:"+data.page[0]+",总页数为:"+data.page[1]+",当前页数为:"+(data.page[2]+1)+"</p>");
		}
		
	});
	
}
	

