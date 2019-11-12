/**
 *  user_admin 初始化数据
 *  * 参数说明（避免被占用，每个JSP的JS中重新声明）
 * 		startIndex:开始查询的下标
 * 		endIndex:要查询的记录数
 * 		url:要传给跳转函数的地址
 * 		CountIndex:总记录数
 * 		jsonData:要传到JSP页面的数据
 */

var startIndex, endIndex, CountIndex, url, SearchUrl;
var jsonData;
$(function() {
	startIndex = 0, endIndex = 6, url = "user/getPage.do", SearchUrl = "user/search.do";

	requestData(startIndex, endIndex);

	getPage(url);
	
	

});

function requestData(startIndex, endIndex) {
	$.ajax({
		type: 'GET',
		url: "user/listuser.do",
		data: {
			startIndex: startIndex,
			endIndex: endIndex
		},
		async: false,
		dataType: 'json',
		success: function(data) {
			$("tr").remove(".items");
			//console.log(data.list);
			dataToShow(data);
			if((startIndex+endIndex) >= CountIndex){
				$('#next').addClass("disabled");
				$('#provice').removeClass("disabled");
			}
			if(startIndex == 0){
				$('#next').removeClass("disabled");
				$('#provice').addClass("disabled");
			}

		},
		error:function(){
			alert("获取数据错误");
		}


	});
}

function dataToShow(data) {
	for (var i = 0; i < data.list.length; i++) {
		var items = "<tr class=\"items\"><td>" + data.list[i].id + "</td><td>" + data.list[i].username + "</td><td>" +
			data.list[i].password + "</td><td>" + data.list[i].address + "</td><td>" +
			data.list[i].email + "</td><td>" + data.list[i].phone + "</td><td>" +
			dateFromat("yyyy-MM-dd hh:mm:ss", new Date(data.list[i].rgTime)) +
			"</td><td><a  onclick=\"deleteUser(" + data.list[i].id + ",'" + data.list[i].username + "')\">" +
			"<i class=\"glyphicon glyphicon-remove\"></i></a>&nbsp;&nbsp;" +
			"<a data-toggle=\"modal\" data-target=\"#editModal\"" +
			"data-whatever=\"" + data.list[i].id + "\">" +
			"<i class=\"glyphicon glyphicon-pencil\"></i></a></td><tr>";
		//console.log(items);
		$("#table1").append(items);
		jsonData = data;

	}
}

function deleteUser(id, username) {
	//console.log(id);
	var isDel = confirm("请确认是否删除该用户?");
	if (isDel == true) {
		$.ajax({
			type: 'GET',
			url: "user/deleteUser.do",
			dataType: 'json',
			data: {
				id: id,
				username: username
			},
			success: function(data) {
				//console.log(data[1]);
				alert("" + data.success);
				requestData(data.startIndex, endIndex);

			},
			error: function() {
				alert("删除失败！");
			}
		});
		requestData(startIndex, endIndex);
	} else {
		return;
	}

}

function addUser() {
	//序列化表单数据
	var data = $("#inserform").serialize();
	// console.log(data);
	//编码
	var submitData = decodeURIComponent(data, true);

	$.ajax({
		type: 'post',
		url: 'user/insertUser.do',
		data: submitData,
		// dataType:'json',
		success: function(data) {
			var ua = navigator.userAgent;
			var str = ".NET";
			if (ua.indexOf(str) != -1) { //判断是否在IE浏览器下的访问
				alert("IE浏览器不兼容");
				//$(location).prop('href', "../loginPage/login.jsp");
			} else {
				// alert("非ie")
				window.location.href = data.displayUrl;
			}
		},
		error: function() {
			alert("失败");
		}
	});
}

function searchButton() {
	var searchText = $("#liketext").val();
	search(searchText,SearchUrl, startIndex, endIndex);
}


// function search() {
// 	url = SearchUrl;
// 	var searchText = $("#liketext").val();
// 
// 	$.ajax({
// 		type: "get",
// 		url: url,
// 		data: {
// 			likeUsername: searchText,
// 			startIndex: startIndex,
// 			endIndex: endIndex
// 		},
// 		success: function(data) {
// 			$("tr").remove(".items");
// 			dataToShow(data);
// 
// 		},
// 		error: function() {
// 			alert("查询失败！");
// 		}
// 	});
// }
//
