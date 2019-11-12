/**
 *  2018年11月18日16:31:14
 *  
 *  
 */


function changeFrameWidth(){
	var ifm = document.getElementById("main");
	ifm.width = document.documentElement.clientWidth;
	ifm.height = document.documentElement.clientHeight;
}

window.onresize = function(){
	changeFrameWidth();
}