/**
 * 头部Js处理
 * 
 */
//鼠标移过去显示内容，移走隐藏内容
//   $(document).ready(function(){
//         $('#mobile').hover(function() {
//             $("#mobileImage").css('display', 'block');
//         }, function() {
//            $("#mobileImage").css('display', 'none');
//         });
//         $("#mobileImage").hover(function() {
//             $(this).css('display', 'block');
//         }, function() {
//             $(this).css('display', 'none');
//         });
//  })

var username,admin;
var a = sessionStorage.getItem("loginJson");
var data = JSON.parse(a);
if (data != null) {
	username = data.username;
	admin = data.admin;
}

$(function () {
	autoNav();

	// console.log(data.username);
	if (username != null) {
		var usernameshow = "<a >" + username + "</a>";
		var loginout = "<a href=\"javascript:void(0);\" onclick=\"loginout()\">注销</a>";
		$("#usernameORlogin").empty();
		$("#registerORloginOut").empty();
		$("#usernameORlogin").append(usernameshow);
		$("#registerORloginOut").append(loginout);
	}
	if (admin) {
		$("#mainORadmin").empty();
		$("#mainORadmin").append("<a href=\"page/loginPage/login.jsp\">管理页面</a>");
	}
	

});

//判断用户是否为管理员
// console.log(data.admin);

$(document).keydown(function (event) {
	// console.log(event.keyCode);
	
		if (event.keyCode == 86 && event.altKey) {
			var ua = navigator.userAgent;
            var str = ".NET";
            if(ua.indexOf(str)!=-1){//判断是否在IE浏览器下的访问
            //    alert(ua);
                 $(location).prop('href', "../loginPage/login.jsp");
            }else{
            // alert("非ie")
                 $(location).prop('href', "page/loginPage/login.jsp");
                
            }
			// window.location.href = "page/loginPage/login.jsp";
		}
	
});


//注销事件
function loginout() {
	sessionStorage.setItem("loginJson", null);
	// console.log(data.username);
	var userlogin = "<a <a href=\"page/userIndex/userlogin.jsp\">会员登录</a>></a>";
	var register = "<a href=\"page/userIndex/register.jsp\">注册</a>";
	$("#usernameORlogin").empty();
	$("#registerORloginOut").empty();
	$("#usernameORlogin").append(userlogin);
	$("#registerORloginOut").append(register);
}

//解决底部自动导航的问题
function autoNav() {
	//获取头部导航高度
	var topHeight = $(".header-topNav").height();
	//获取内容的高度
	var contentHeight = $(".content").height();
	//获取底部导航的高度
	var navHeight = $(".about-huawei").height();
	//获取显示屏的高度
	var iHeight = $(window).height();
	var topAndContent = topHeight+contentHeight;
	//如果内容的高度大于（窗口的高度 - 导航的高度）,z则需要添加一个div，设置其高度
	if (topAndContent < iHeight) {
		var tempHeight = iHeight - topAndContent;
		//alert(tempHeight);
		var addHeight ;
		if (tempHeight > navHeight) {
			addHeight = tempHeight - navHeight;
			if((addHeight+navHeight)<tempHeight){
			    $(".about-huawei").css("margin-top", addHeight+80);
			}else{
				
			     $(".about-huawei").css("margin-top", addHeight);
	
			}
			
		} else {
			$(".about-huawei").css("margin-top", navHeight);
		}
	}
}

function nav_active(nav) {
	if (nav == 'nav_main') {
			var ua = navigator.userAgent;
            var str = ".NET";
            if(ua.indexOf(str)!=-1){//判断是否在IE浏览器下的访问
            //    alert(ua);
                 $(location).prop('href', "huaweiEnterprise.jsp");
            }else{
            // alert("非ie")
                 $(location).prop('href', "page/userIndex/huaweiEnterprise.jsp");
            }
	} else if (nav == 'nav_enterprise') {
			var ua = navigator.userAgent;
            var str = ".NET";
            if(ua.indexOf(str)!=-1){//判断是否在IE浏览器下的访问
            //    alert(ua);
                 $(location).prop('href', "moreInformationIntoHuawei.jsp");
            }else{
            // alert("非ie")
                 $(location).prop('href', "page/userIndex/moreInformationIntoHuawei.jsp");
            }
		// window.location.href = "page/userIndex/moreInformationIntoHuawei.jsp";
	} else if (nav == 'nav_product') {
			var ua = navigator.userAgent;
            var str = ".NET";
            if(ua.indexOf(str)!=-1){//判断是否在IE浏览器下的访问
            //    alert(ua);
                 $(location).prop('href', "product.jsp");
            }else{
            // alert("非ie")
                 $(location).prop('href', "page/userIndex/product.jsp");
            }
		// window.location.href = "page/userIndex/product.jsp";
	} else if (nav == 'nav_news') {
			var ua = navigator.userAgent;
            var str = ".NET";
            if(ua.indexOf(str)!=-1){//判断是否在IE浏览器下的访问
            //    alert(ua);
                 $(location).prop('href', "news_show.jsp");
            }else{
            // alert("非ie")
                 $(location).prop('href', "page/userIndex/news_show.jsp");
            }
		// window.location.href = "page/userIndex/news_show.jsp";
	} else if (nav == 'nav_huawei') {
			var ua = navigator.userAgent;
            var str = ".NET";
            if(ua.indexOf(str)!=-1){//判断是否在IE浏览器下的访问
            //    alert(ua);
                 $(location).prop('href', "about-huawei.jsp");
            }else{
            // alert("非ie")
                 $(location).prop('href', "page/userIndex/about-huawei.jsp");
            }
		// window.location.href = "page/userIndex/about-huawei.jsp";
	}
	console.log(nav);
	$('.nav_li').removeClass('active');
	$("#" + nav).addClass('active');

}

var searchText;
function dosearch(){
	searchText = $("#searchText").val();
	
	if(searchText == " " || searchText == null || searchText == undefined){
		alert("搜索内容为空");
	}else{
		var ua = navigator.userAgent;
        var str = ".NET";
        if(ua.indexOf(str)!=-1){//判断是否在IE浏览器下的访问
        //    alert(ua);
             $(location).prop('href', "searchResult.jsp");
        }else{
        // alert("非ie")
             $(location).prop('href', "page/userIndex/searchResult.jsp");
             
        }
        //把值传递给search页面
        sessionStorage.setItem("searchText",searchText);
        sessionStorage.setItem("url",window.location.pathname);
	}
	
}