$(function(){
			//用户名校验
			$("#username").focus(function(){
				if($(this).next().text()=="用户名"&&$(this).next().css("left")=="22px"){
					var left=22;
					var time=setInterval(function(){
						left-=1;
						$(".name").css("left",left+"px");
						if(left=="-70"){
							clearInterval(time);
						}
					},3);
				}
				$(this).css("border","1px solid #CCCCCC");
				$(".focuname").slideDown();
				$(".missname").slideUp();
				$(".errorname").slideUp();
			});
			$("#username").blur(function(){
				$(".focuname").slideUp();
				var name = $("#username").val();
				var regname = /^[a-zA-Z0-9\u4e00-\u9fa5]{4,20}$/;
				if($(this).val()!=""&&regname.test(name) == false){
					$(".errorname").slideDown();
					$(this).css("border","1px solid #ff3c3c");
				}
				if($(this).val()==""){
					$(".missname").slideDown();
					$(this).css("border","1px solid #ff3c3c");
				}
			})
			
			//邮箱校验
			$("#phone").focus(function(){
				if($(this).next().text()=="邮箱"&&$(this).next().css("left")=="22px"){
					var left=22;
					var time=setInterval(function(){
						left-=1;
						$(".phonevalue").css("left",left+"px");
						if(left=="-57"){
							clearInterval(time);
						}
					},3);
				}
				$(this).css("border","1px solid #CCCCCC");
				$(".focuphone").slideDown();
				$(".missphone").slideUp();
				$(".errorphone").slideUp();
			});
			$("#phone").blur(function(){
				$(".focuphone").slideUp();
				var phone = $("#phone").val();
				var regphone = /^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z0-9]{2,6}$/;
				if($(this).val()!=""&&regphone.test(phone) == false){
					$("#yzm1").show();
					$("#yzm2").hide();
					$(".errorphone").slideDown();
					$(this).css("border","1px solid #ff3c3c");
				}else if($(this).val()==""){
					$("#yzm1").show();
					$("#yzm2").hide();
					$(".missphone").slideDown();
					$(this).css("border","1px solid #ff3c3c");
				}else{
					$("#yzm1").hide();
					$("#yzm2").show();
				}
			})
			//邮箱验证码
			$("#verify").focus(function(){
				if($(this).next().text()=="邮箱验证码"&&$(this).next().css("left")=="22px"){
					var left=22;
					var time=setInterval(function(){
						left-=1;
						$(".duanxingvalue").css("left",left+"px");
						if(left=="-98"){
							clearInterval(time);
						}
					},3);
				}
				$(this).css("border","1px solid #CCCCCC");
			});
			

			//密码校验
			$("#pwd").focus(function(){
				if($(this).next().text()=="设置密码"&&$(this).next().css("left")=="22px"){
					var left=22;
					var time=setInterval(function(){
						left-=1;
						$(".pwdvalue").css("left",left+"px");
						if(left=="-83"){
							clearInterval(time);
						}
					},3);
				}
				$(this).css("border","1px solid #CCCCCC");
				$(".focupwd").slideDown();
				$(".misspwd").slideUp();
				$(".errorpwd").slideUp();
			});
			$("#pwd").blur(function(){
				$(".focupwd").slideUp();
				var pwd = $("#pwd").val();
				var regpwd = /^.{6,20}$/;
				if($(this).val()!=""&&regpwd.test(pwd) == false){
					$(".errorpwd").slideDown();
					$(this).css("border","1px solid #ff3c3c");
				}else if($(this).val()==""){
					$(".misspwd").slideDown();
					$(this).css("border","1px solid #ff3c3c");
				}
			})
//			
			//再次输入密码校验
			$("#repwd").focus(function(){
				if($(this).next().text()=="确认密码"&&$(this).next().css("left")=="22px"){
					var left=22;
					var time=setInterval(function(){
						left-=1;
						$(".repwdvalue").css("left",left+"px");
						if(left=="-83"){
							clearInterval(time);
						}
					},3);
				}
				$(this).css("border","1px solid #CCCCCC");
				$(".focurepwd").slideDown();
				$(".missrepwd").slideUp();
				$(".errorrepwd").slideUp();
			});
			$("#repwd").blur(function(){
				$(".focurepwd").slideUp();
				var repwd = $("#repwd").val();
				var pwd=$("#pwd").val();
				if(repwd!=pwd){
					$(".errorrepwd").slideDown();
					$(this).css("border","1px solid #ff3c3c");
				}else if($(this).val()==""){
					$(".missrepwd").slideDown();
					$(this).css("border","1px solid #ff3c3c");
				}
			})
			
			
			
			
			//背景渐变
			//刚开始开始渐变
			$(".icon1").fadeTo(5000,0.3);
			$(".icon5").fadeTo(3000,0.4);
			$(".icon3").fadeTo(4000,0.3);
			setInterval(function(){
				$(".icon1").fadeTo(2000,0);
				setTimeout(function(){
					var opa=$(".icon1").css("opacity");
					if(opa==0){
					$(".icon1").fadeTo(2000,0.3);
				}
				},3000)
			},6000);
			setInterval(function(){
				$(".icon2").fadeTo(3000,0.4);
				setTimeout(function(){
					var opa=$(".icon2").css("opacity");
					if(opa==0.4){
					$(".icon2").fadeTo(2000,0);
				}
				},4000)
			},6000);
			setInterval(function(){
				$(".icon3").fadeTo(3000,0);
				setTimeout(function(){
					var opa=$(".icon3").css("opacity");
					if(opa==0){
					$(".icon3").fadeTo(3000,0.5);
				}
				},4000)
			},6000);
			setInterval(function(){
				$(".icon4").fadeTo(2000,0.3);
				setTimeout(function(){
					var opa=$(".icon4").css("opacity");
					if(opa==0.3){
					$(".icon4").fadeTo(2000,0);
				}
				},3000)
			},6000);
			setInterval(function(){
				$(".icon5").fadeTo(2000,0);
				setTimeout(function(){
					var opa=$(".icon5").css("opacity");
					if(opa==0){
					$(".icon5").fadeTo(2000,0.4);
				}
				},3000)
			},6000);
			
			
});