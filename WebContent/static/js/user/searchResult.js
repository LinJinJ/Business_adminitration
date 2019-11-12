/**
 * 新闻信息的初始化
 */
var NewsData;
var indexPage,limitCol,searchText,hrefUrl;
$(function(){
	autoNav();	
	searchText = sessionStorage.getItem("searchText");
	//console.log(searchText);
	hrefUrl = sessionStorage.getItem("url");
	//console.log(hrefUrl);
    indexPage = 0;
    limitCol = 6;
    flush_news_data(searchText,indexPage,limitCol);
    initPage(NewsData);
    
    $("#searchText").val(searchText);
    
});




 function flush_news_data(searchText,index,limit){
        $.ajax({
        type:'get',
        url:'util/searchResult.do',
        dataType:'json',
        async:false,
        data:{searchText:searchText,startIndex:index,endIndex:limit},
        success:function(data){
        	if(data.noData !== undefined){
        		 $(news_show).append("<span class=\"cneter\" " +
        		 		" style=\"font-size:72px;\">"+data.noData+"</span>"); 
        	}else{
        		 NewsData = data;
                 show_news_layout(data);
        	}
        },
        error:function(){
           alert("搜索结果获取失败");
        }

        });
    }
 	
 	//页面布局输出
    function show_news_layout(Data){
        $("div").remove(".news_show_col");
        var j = 1,flag,indexFlag = 0;
        for(var i = 0;i<Data.list.length;i++){
        	 if(Data.list[i]=="flag"){
             	flag = i;
             	break;
             }
        }
        
        for(var i = 0;i<Data.list.length;i++){
            
            var news_col_content;
            
            if(Data.list[i]=="flag"){
            	
            	continue;
            }
            //当读取到标记处时，第一个列表读取完毕，即新闻信息读取完毕，开始第二个列表的输出
            if((indexFlag+1)>flag){
            	//显示产品的
            	news_col_content = "<div class=\"col-md-4 news_show_col colum\"><div class=\"thumbnail\"><div class=\"list-images-show\"><span><a href=\"javascript:void(0);\">"+
                 "<img style=\"height:60%;margin-top:8px;\" class=\"img-responsive center-block\" src=\""+Data.list[i].productpictuer+"\"></a><a id=\"productName\" style=\"\" href=\"javascript:void(0);\">"+
                 Data.list[i].productname+"</a></span></div><div class=\"list-product-content\"><span><ul ><li> "+
                 Data.list[i].productparameter1+"</li><li>"+Data.list[i].productparameter2+"</li><li>"+
                 Data.list[i].productparameter3+"</li></ul></span></div></div></div>";
            }else{
            	//显示新闻的
            	 news_col_content = "<div class=\"col-md-4 news_show_col\"><a href=\"javascript:void(0)\"><div class=\"thumbnail\""+
                 "<h4>新闻&nbsp;|&nbsp;"+dateFromat("yyyy-MM-dd",new Date(Data.list[i].inputtime))+
                 "</h4><img class=\"img-responsive\" alt=\"300x200\" src=\"static/images/enterprise/news/default6.jpg\" />"+
                 "<div class=\"caption\"><h3>"+Data.list[i].title+"</h3><p>"+Data.list[i].content+
                 "</p></div></div></a></div>";
            }
           
            
            if(indexFlag<3){
                  $("#news_show_row_"+j).append(news_col_content);  
            }else{
                  $("#news_show_row_"+(j+1)).append(news_col_content);    
            }
           
            indexFlag++;
        }
    }


    




