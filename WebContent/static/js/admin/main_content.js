/**
 * 
 */
var startIndex,endIndex,CountIndex,url;
window.onload=function(){
		startIndex = 0,endIndex = 5;
		url = "msg/responseMsg.do";
		requestData(startIndex,endIndex);
		getPage();
		
	}

function requestData(startIndex,endIndex){
	$.ajax({
		type:'GET',
		url:url,
		data:{startIndex:startIndex,endIndex:endIndex},
		dataType:'json',	
		success: function(data){
			//console.log(data.responseMsg);
			for(var i = 0;i<data.responseMsg.length;i++){
				
				var items = "<tr class=\"items\"><td>"+data.responseMsg[i].id+"</td><td>"+dateFromat("yyyy-MM-dd hh:mm:ss",new Date(data.responseMsg[i].time))+"</td><td>"+data.responseMsg[i].function+"</td><td>"+
				data.responseMsg[i].msg+"</td><td>"+data.responseMsg[i].status+"</td><td>"+
				data.responseMsg[i].admintor+"</td><tr>";
				//console.log(items);
				$("#table1").append(items);
				
			}
			
			
		}
	
	});
}

function next(){
	startIndex +=5;
	if(startIndex>CountIndex){
		startIndex -=5;
	}
	$("p").remove(".p");
	$("tr").remove(".items");
	requestData(startIndex,endIndex);
	getPage();
}	

function provice(){
	$("tr").remove(".items");
	$("p").remove(".p");
	var i = startIndex - 5;
	if(i <= 0){
		startIndex = 0;
	}else{
		startIndex -= 5;
	}
	
	requestData(startIndex,endIndex);
	getPage();
}


function getPage(){
	$.ajax({
		type:"GET",
		url:"msg/getPage.do",
		dataType:'json',
		success:function(data){
			CountIndex = data.page[0];
			//console.log(data.page);
			$("#page").append("<p class=\"p\">总记录数为:"+data.page[0]+",总页数为:"+data.page[1]+",当前页数为:"+(data.page[2]+1)+"</p>");
		}
		
	});
	
}
	

