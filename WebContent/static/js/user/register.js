/**
 * 注册提交事件
 * 
 */

function register(){
    //序列化表单数据
    var data=$("#register_form").serialize();
    console.log(data);
    //编码
    var submitData = decodeURIComponent(data,true);
    
    $.ajax({
        type:'post',
        url:'user/register.do',
        data:submitData,
        // dataType:'json',
        success:function(data){
            if(data.username == null){
                alert(data.msg);
            }else{
                alert("恭喜您注册成功,即将为您跳转到登录界面。");
                var ua = navigator.userAgent;
                var str = ".NET";
                if(ua.indexOf(str)!=-1){//判断是否在IE浏览器下的访问
                //    alert(ua);
                    $(location).prop('href', "login.jsp");
                }else{
                // alert("非ie")
                    $(location).prop('href', "page/loginPage/login.jsp");
                    
                }
                
            }
                
            
        },
        error:function(){
            alert("失败");
        }
    });
}

