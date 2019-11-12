//数据初始化
$(function(){

//接收产品数据
  
    var a = sessionStorage.getItem("allJson");
    var product = JSON.parse(a);
    var product_list = product.list;
    // console.log(product_list[2].productname);
    //产品类别名称
    var product_category = product.category;
    // console.log(product_category);
    $('#product_category').text(product_category);
    //计算产品要几行显示
    var rowCount = (product_list.length)/4;
    if((product_list.length)%4 != 0){
        rowCount += 1;
    }

    //删除静态的布局
    $("div").remove(".phone");
    $("div").remove(".product_row");
    var j = 0,k = 4;
    //先添加行布局
    for(var i = 0;i<rowCount;i++){
        var rowItme = " <div class=\"row clearfix product_row\""+
        "id=\"product_row_"+i+"\" ></div>";
        $('#product_list_show').append(rowItme);
        var product_col = "";
        //添加数据
        for(;j<k;j++){
        /*
        <div class="col-md-3 column" id="list-phone-1">
							<div class="list-images-show">
								<span> <a href="#"><img
										class="img-responsive center-block"
                                        src="static/images/enterprise/product-list/phone/mate-rs-black.png" /></a> 
                                        <a href="#">HUAWEIMate 20 RS 保时捷设计</a>
								</span>
							</div>
							<div class="list-porduct-content">
								<span>
									<ul>
										<li>致敬时代</li>
										<li>矩阵多焦影像系统源于保时捷四点式车灯设计</li>
										<li>传承经典，见证耀目人生</li>
									</ul>
								</span>
							</div>
						</div>
        */
        // console.log("col"+product_col);    
        product_col = "<div class=\"col-md-3 colum\"><div class=\"list-images-show\"><span><a href=\"javascript:void(0);\">"+
        "<img class=\"img-responsive center-block\" src=\""+product_list[j].productpictuer+"\"></a><a href=\"javascript:void(0);\">"+
        product_list[j].productname+"</a></span></div><div class=\"list-product-content\"><span><ul><li> "+
        product_list[j].productparameter1+"</li><li>"+product_list[j].productparameter2+"</li><li>"+
        product_list[j].productparameter3+"</li></ul></span></div></div>";
        $('#product_row_'+i).append(product_col);    
    }
         
        product_col ="";
        // console.log("row"+product_col);
        
        // console.log("J:"+j);
        var temp = k+4;
        if((temp)>product_list.length){
            k = product_list.length;
        }else{
             k += 4;
        }
        // console.log("K:"+k);
    }


});
window.onload=function(){
    
}

