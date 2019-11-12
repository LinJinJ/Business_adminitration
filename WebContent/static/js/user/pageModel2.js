   
	//分页初始化
    function initPage(data){
       // console.log(NewsData);
        pageData = data;
        
        $("ul").remove(".pager");
        var pageProvide = "<ul class=\"pager\" id=\"pager\"><li class=\"disabled\" id=\"Previous\">"+
            "<a href=\"javascript:void(0)\" onclick=\"skip(-1)\" aria-label=\"Previous\"><span aria-hidden=\"true\">&laquo;</span></a></li>";
        var numberPage;
        for(var i = 1;i<=pageData.page;i++){
            if(i ==1 ){
                numberPage = "<li class=\"active\" id=\"pageIndex_"+i+"\"><a href=\"javascript:void(0)\" onclick=\"skip("+i+")\" >"+i+"</a></li>"; 
            }else{
                numberPage += "<li id=\"pageIndex_"+i+"\"><a href=\"javascript:void(0)\" onclick=\"skip("+i+")\" >"+i+"</a></li>";
            }

        }
        var pageNext = "<li id=\"Next\"><a href=\"javascript:void(0)\" onclick=\"skip(-2)\" aria-label=\"Next\"><span aria-hidden=\"true\">&raquo;</span>"+
            "</a></li></ul>"; 
        var page = pageProvide+numberPage+pageNext;
        $("#pager_show").append(page);  
    }    

    //切换页面
    function skip(pageId){
        //获取输入的数值
        var a = pageId;
        //获取最后一页
        var lastIndex = pageData.page;
        //分页的起点数
        var skipIndex;
        //获取当前的的页面坐标
        var tempIndex = $("#pager").children(".active").children("a").text();
        var index = Number(tempIndex);
        
        switch(a){
            //下一页
            case -2:
                var next;
               //当当前的值+1大于最大页数时，就换成最后一页
                if((index+1)>=lastIndex){
                    $("#pager").children("#Previous").removeClass("disabled");
                    $("#pager").children("#Next").addClass("disabled");
                    //改变类
                    $("#pager").children("#pageIndex_"+tempIndex).removeClass("active");
                    $("#pager").children("#pageIndex_"+lastIndex).addClass("active");
                    next = lastIndex-1;
                }else{
                    
                    next = index;
                    //改变类
                    $("#pager").children("#pageIndex_"+tempIndex).removeClass("active");
                    $("#pager").children("#pageIndex_"+(next+1)).addClass("active");
                    $("#pager").children("#Next").removeClass("disabled");
                    $("#pager").children("#Previous").removeClass("disabled");
                }
                console.log(index);
                console.log("next"+next);
                skipIndex = next*limitCol;
                break;
            //上一页
            case -1:
                //  //获取当前的的页面坐标
                // var tempIndex = $("#pager").children(".active").children("a").text();
                var pervious;
                if((index-2)<=0){
                            $("#pager").children("#Next").removeClass("disabled");
                            $("#pager").children("#Previous").addClass("disabled");
                            //改变类
                            $("#pager").children("#pageIndex_"+tempIndex).removeClass("active");
                            $("#pager").children("#pageIndex_"+1).addClass("active");
                             pervious = 0;
                    }else{

                    if(index == lastIndex){
                        pervious = index-2;
                        //改变类
                        $("#pager").children("#pageIndex_"+tempIndex).removeClass("active");
                        $("#pager").children("#pageIndex_"+(pervious+1)).addClass("active");
                    }else{
                        pervious = index-2;
                        //当最小值小于等于0时，就显示第一页的
                        //改变类
                        $("#pager").children("#pageIndex_"+tempIndex).removeClass("active");
                        $("#pager").children("#pageIndex_"+(pervious+1)).addClass("active");
                        $("#pager").children("#Next").removeClass("disabled");
                        $("#pager").children("#Previous").removeClass("disabled");
                        if((index-2)<=0){
                            $("#pager").children("#Next").removeClass("disabled");
                            $("#pager").children("#Previous").addClass("disabled");
                            //改变类
                            $("#pager").children("#pageIndex_"+tempIndex).removeClass("active");
                            $("#pager").children("#pageIndex_"+1).addClass("active");
                             pervious = 0;
                            }
                    }
                    }
                   
                    
                
                skipIndex = pervious*limitCol;
                break;
            //第一页
            case 1:
                $("#pager").children("#Next").removeClass("disabled");
                $("#pager").children("#Previous").addClass("disabled");
                //改变类
                $("#pager").children("#pageIndex_"+tempIndex).removeClass("active");
                $("#pager").children("#pageIndex_"+a).addClass("active");
                skipIndex = (a-1)*limitCol;    
                break;
            //最后一页
            case lastIndex:
                $("#pager").children("#Previous").removeClass("disabled");
                $("#pager").children("#Next").addClass("disabled");
                //改变类
                 $("#pager").children("#pageIndex_"+tempIndex).removeClass("active");
                $("#pager").children("#pageIndex_"+a).addClass("active");
                skipIndex = (a-1)*limitCol;
                break;        
            default:
                //改变类
                $("#pager").children("#pageIndex_"+tempIndex).removeClass("active");
                $("#pager").children("#pageIndex_"+a).addClass("active");
                $("#pager").children("#Next").removeClass("disabled");
                $("#pager").children("#Previous").removeClass("disabled");
                skipIndex = (a-1)*limitCol;

        }
        if(searchText == " " || searchText == null){
        	flush_news_data(skipIndex,limitCol);
		}else{
			flush_news_data(searchText,skipIndex,limitCol);
		}
        
    } 
