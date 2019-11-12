var productData;
function productShow(category){
    $.ajax({
        type:'GET',
        url:'Product/getProductAsCategory.do',
        dataType:'JSON',
        data:{category:category},
        success:function(data){
            // for(var i = 0;i<data.list.length;i++){
            //     productData = data.list
            // }
            // console.log(productData);
            sessionStorage.setItem("allJson",JSON.stringify(data));

           var ua = navigator.userAgent;
           var str = ".NET";
            if(ua.indexOf(str)!=-1){//判断是否在IE浏览器下的访问
            //    alert(ua);
                
                 $(location).prop('href', 'product-phone.jsp');
            }else{
            // alert("非ie")
                 $(location).prop('href', 'page/userIndex/product-phone.jsp');
                
            }
            
        },
        error:function(){
            alert("获取"+category+"失败！");
            
        }
    });
}
