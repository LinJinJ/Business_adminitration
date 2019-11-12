/**
 * 新闻信息的初始化
 */
var NewsData;
var indexPage;
$(function(){

   
    indexPage = 0;
    limitCol = 6;
    flush_news_data(indexPage,limitCol);
    initPage(NewsData);
    autoNav();	

});




 function flush_news_data(index,limit){
        $.ajax({
        type:'get',
        url:'News/getNews.do',
        dataType:'json',
        async:false,
        data:{startIndex:index,endIndex:limitCol},
        success:function(data){
            NewsData = data;
            show_news_layout(data);
	    	
        },
        error:function(){
           alert("新闻信息获取失败");
        }

        });
    }

    function show_news_layout(NewsData){
        $("div").remove(".news_show_col");
        var j = 1;
        for(var i = 0;i<NewsData.list.length;i++){
            // <div class="col-md-4 news_show_col">
			// 					<a href="#">
			// 					<div class="thumbnail">
			// 						<h4>
			// 							新闻&nbsp;|&nbsp;2018年12月05日
			// 						</h4>
			// 						<img class="img-responsive" alt="300x200" src="static/images/enterprise/news/default6.jpg" />
			// 						<div class="caption">
			// 							<h3>
			// 								英特尔和华为成功完成全球首个2.6GHz频段基于3GPP标准 SA架构的5G互操作性测试
			// 							</h3>
			// 							<p>
			// 								Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget
			// 								metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
			// 							</p>
			// 						</div>
			// 					</div>
			// 					</a>
            // 				</div>
            var news_col_content = "<div class=\"col-md-4 news_show_col\"><a href=\"javascript:void(0)\"><div class=\"thumbnail\""+
                                    "<h4>新闻&nbsp;|&nbsp;"+dateFromat("yyyy-MM-dd",new Date(NewsData.list[i].inputtime))+
                                    "</h4><img class=\"img-responsive\" alt=\"300x200\" src=\"static/images/enterprise/news/default6.jpg\" />"+
                                    "<div class=\"caption\"><h3>"+NewsData.list[i].title+"</h3><p>"+NewsData.list[i].content+
                                    "</p></div></div></a></div>";

            if(i<3){
                  $("#news_show_row_"+j).append(news_col_content);  
            }else{
                  $("#news_show_row_"+(j+1)).append(news_col_content);    
            }                        
        
        }
    }







