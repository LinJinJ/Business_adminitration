/**
 * ajax提交数据
 */



function login(){
    //序列化表单数据
    var data=$("#login_form").serialize();
    console.log(data);
    //编码
    var submitData = decodeURIComponent(data,true);
    
    $.ajax({
        type:'post',
        url:'user/login.do',
        data:submitData,
        // dataType:'json',
        success:function(data){
            sessionStorage.setItem("loginJson",JSON.stringify(data));
            if(data.username == null){
                alert(data.msg);
            }
            
            var ua = navigator.userAgent;
            var str = ".NET";
            if(ua.indexOf(str)!=-1){//判断是否在IE浏览器下的访问
            //    alert(ua);
                 $(location).prop('href', data.displayPageToIE);
            }else{
            // alert("非ie")
                 $(location).prop('href', data.displayPageToOther);
                
            }

            
        },
        error:function(){
            alert("失败");
        }
    });
}