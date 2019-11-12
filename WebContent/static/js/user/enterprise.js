/**
 *  官网主页初始化页面数据
 *  主要使用ajax
 */
 
//  window.onload=function(){

//     requestData_news();

// }

$(function(){
requestData_news();

});



function requestData_news(){
    $.ajax({
        type:'get',
        dataType:'json',
        url:"News/getNewsData.do",
        success:function(data){
        //     <li>
		// 		<div class="news-header">
		// 			新闻&nbsp;|&nbsp;2018年12月05日
		// 		</div>
		// 		<a href="#" class="other-content">
		// 英特尔和华为成功完成全球首个2.6GHz频段基于3GPP标准 SA架构的5G互操作性测试
		// 			</a>

        // </li>
            $("li").remove(".news-li");
            // console.log(data.newsList[1].id);
            for(var i = 0;i<data.newsList.length;i++){
                if(i<4){
                    var liContent = "<li class=\"news-li\"><div class=\"news-header\">新闻&nbsp;|&nbsp;"+
                    dateFromat("yyyy-MM-dd",new Date(data.newsList[i].inputtime))+
                    "</div><a href=\"page/userIndex/news_show.jsp\" class=\"other-content\">"+data.newsList[i].title+"</a></li>"
                    $("#newsList").append(liContent);
                }
                
            }

            requestData_product();
        },
        error:function(){
        //alert("Error");
            requestData_product();
        }

    });
}


function requestData_product(){
    $.ajax({
        type:'get',
        url:"Product/getProductData.do",
        dataType:'json',
        success:function(ProductData){
            $("div").remove(".list-product");
           //console.log(ProductData.listProduct[0].productname);
           for(var i = 0;i<ProductData.listProduct.length;i++){
                if(i<6){
                    // <div class="list-product">
					// 							<div class="list-images-show">
					// 								<span>
					// 									<a href="#"><img class="img-responsive" src="static/images/enterprise/product-list/pd-mate10-diamond-black.png" /></a>
					// 								</span>
					// 							</div>
					// 							<div class="list-product-title">
					// 								<span>
					// 									<a href="#">HUAWEI Mate 10 保时捷设计</a>
					// 								</span>
					// 							</div>
					// 							<div class="list-porduct-content">
					// 								<span>
					// 									<ul>
					// 										<li>6.0英寸OLED显示屏，2160×1080像素分辨率</li>
					// 										<li>保时捷设计与科技融合 技术与美成就经典</li>
					// 										<li>深邃黑色 演绎沉稳高贵品质</li>
					// 									</ul>
					// 								</span>
					// 							</div>
					// 						</div>	
                    var productContent = 
                    " <div class=\"list-product\"><div class=\"list-images-show\"><span>"+
                        "<a href=\"page/userIndex/product.jsp\"><img class=\"img-responsive\" src=\""+ProductData.listProduct[i].productpictuer+
                        "\"/></a></span></div><div class=\"list-product-title\"><span><a href=\"page/userIndex/product.jsp\">"+ProductData.listProduct[i].productname+
                        "</a></span></div><div class=\"list-porduct-content\"><span><ul>"+
                           "<li>"+ProductData.listProduct[i].productparameter1+"</li>"+
							 "<li>"+ProductData.listProduct[i].productparameter2+"</li>"+
                            "<li>"+ProductData.listProduct[i].productparameter3+"</li></ul></span></div></div>	";
                        $("#list-product-"+(i+1)).append(productContent);    
                }
           }
        }
    });

}