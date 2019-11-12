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
                     //异步提交判断用户名是否存在   
                    remote:{
                        type:'POST',
						url:'user/checkuser.do',
						delay : 2000,
                        data:{username:function(){return $('#username').val();}},
                        dataType:"json",
                        message: "用户名已存在"
                        },

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
					},
					identical: {//相同
                         field: 'password',
                         message: '两次密码不一致'
                     }
						
					}
				},
			retry_password:{
			container:'#tip_retry_password',
				validators:{
					// notEmpty: {
					// 	message:'*确认密码不能为空'
					// },
					identical: {//相同
                         field: 'password',
                         message: '*两次密码不一致'
                     }
					
					}
				},
			useraddress:{
			container:'#tip_address',
				validators:{
					notEmpty: {
						message:'*确认密码不能为空'
					}
					}
				},	
			userphone:{
				container:'#tip_phone',
				validators:{
      				notEmpty:{
       					message:'*手机号码不能为空'
      					},
      				stringlength:{
       					min:11,
       					max:11,
      					message:'*请输入11位手机号码'
     					 },
      				regexp:{
       					regexp:/^1[3|5|8]{1}[0-9]{9}$/,
       					message:'*请输入正确的手机号码'
      					}
     				}
				},	
			useremail:{
				
				validators:{
					container:'#tip_email',
      				notEmpty:{
       					message:'*邮箱不能为空'
      					},
      				 emailAddress:{
       					message:'*请输入正确的邮箱地址'
      					}
     				}
				},		
				
			}
	});
	
});

