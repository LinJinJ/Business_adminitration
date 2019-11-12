/**
 * 
 * 这里是数据验证  采用的是BootStrapValidator框架
 */
$(function (){
	$('form').bootstrapValidator({
	
		
		message: "This value is not valid",
		feedbackIcons:{
			valid:'glyphicon glyphicon-ok',
			invalid:'glyphicon glphicon-remove',
			validating:'gyyphicon glyphicon-refresh'
			},
			
			
		fields:{
			username:{
				message:'用户验证失败',
				container:'#tip_username',
				validators:{
					//非空判断
					notEmpty:{
						message:'*用户名不能为空！'
                        },
                    //  //异步提交判断用户名是否为管理员账号   
                    // remote:{
                    //     type:'POST',
					// 	url:'user/isAdmin',
					// 	delay : 500,
                    //     data:{username:function(){return $('#username').val();}},
                    //     dataType:"json",
					// 	success:function(data){
					// 			console.log(data.valid);
					// 			var isAdminLogin = confirm("检测到您的账号属于管理员账号，是否切换到管理员登录？");
					// 			if(isAdminLogin == true){
					// 				window.location.href = "page/loginPage/login.jsp";
					// 			}
					// 		},
					// 	error:function(){
					// 		alert("错误");
					// 	}	
                    //     },

					//长度判断
					stringLength:{
						min:'3',
						max:'20',
						message:'*用户名长度必须在3到20之间'
						},	
						
					//类型判断
					regexp:{
						regexp:/^[a-zA-Z0-9_]+$/,
						message:'*用户名只能为大小字母、下划线、数字'
						}	
					}
				},
			password:{
			container:'#tip_password',
				validators:{
					notEmpty: {
						message:'*密码不能为空'
					},
					
					stringLength:{
						mix:6,
	
						message:'*密码长度不可小于6位！'
					}
						
					}
				}
				
				
			}
	});
	
});

