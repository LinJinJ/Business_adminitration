
var indexPage,limitCol,jsonData;
$(function(){
	
		indexPage = 0,limitCol = 6;
		flush_news_data(indexPage,limitCol);
		initPage(jsonData);
		
});

//权限展示
function flush_news_data(startIndex,endIndex){
	$.ajax({
		type:'GET',
		async:false,
		url:"authority/getAllToList.do",
		data:{startIndex:startIndex,endIndex:endIndex},
		dataType:'json',	
		success: function(data){
			$("tr").remove(".authorityShow");
			//console.log(data.list[0].username);
			for(var i = 0;i<data.list.length;i++){
				// <tr class="authorityShow">
				// 				<td >辣鸡盛</td>
				// 				<td> <input type="checkbox" name="member" id="member" 
         		// 						value="option1" checked></td>
         		// 				<td> <input type="checkbox" name="VIPmember" id="VIPmember" 
         		// 						value="option1" checked> </td>
         		// 				<td> <input type="checkbox" name="admin" id="admin" 
         		// 						value="option1" checked></td>
				// 			</tr>
				var items = "<tr class=\"authorityShow\"><td id=\"name_"+i+"\">"+data.list[i].username+"</td><td> <input type=\"checkbox\" name=\"member_"+i+"\" id=\"member\""+ 
         					"value=\"option1\" "+checkStatus(data.list[i].member)+" ></td><td> <input type=\"checkbox\" name=\"VIPmember_"+i+"\" id=\"VIPMember\" onclick=\"authorityChange("+i+",this.id)\" "+
							"value=\"option1\" "+checkStatus(data.list[i].vipmember)+" > </td><td> <input type=\"checkbox\" name=\"adminMember_"+i+"\" id=\"adminMember\" value=\"option1\" onclick=\"authorityChange("+i+",this.id)\" "+
							checkStatus(data.list[i].adminmember)+" ></td></tr>";
				//console.log(items);
				$("#table1").append(items);
				jsonData = data;
			}
			
		}
		
	
	});
}
function checkStatus(data){
	if(data=="true"){
		// $("input[name='"+colName+"_"+index+"']").prop("checked",true);
		 return "checked";
	}else if(data =="false"){
		// $("input[name='"+colName+"_"+index+"']").prop("checked",false);
		 return " ";
	}
}


//权限的更新
function authorityChange(index,idName){
	var username = $('#name_'+index).text(); //获取用户名
	var colName = idName; //获取列名
	var checked = $("input[name='"+colName+"_"+index+"']").prop("checked"); //获取选中状态
	var ischecked; //要传输的判断值
	/**
	 * 当其选取前为空时check为true，选取前不为空时为false;
	 */
	if(checked){
		ischecked = "true";
		// $("input[name='"+colName+"_"+index+"']").prop("checked",true);
		doupdate(username,colName,ischecked);
	}else{
		ischecked = "false";
		// $("input[name='"+colName+"_"+index+"']").prop("checked",false);
		doupdate(username,colName,ischecked);
	}

}

 function doupdate(username,colName,ischecked){
	 var tempIndex = $("#pager").children(".active").children("a").text();
		var indexToPage = Number(tempIndex);
		console.log("用户："+username+",colName:"+colName+",ischecked:"+ischecked);
		$.ajax({
			type:'post',
			url:'authority/updateAuthority.do',
			data:{username:username,colName:colName,ischecked:ischecked},
			success:function(data){
				if(data.msg){
					alert("修改成功！");
					flush_news_data(((indexToPage-1)*limitCol),limitCol);
				}
				
			},
			error:function(){
				alert("修改失败！");
				flush_news_data(((indexToPage-1)*limitCol),limitCol);
			}
		});
 }