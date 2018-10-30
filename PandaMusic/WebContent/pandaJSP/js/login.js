

//更多合作网站
$(function(){
	$("#webspan").click(function(){
		$(".moreweb").toggle();
		if($(".moreweb").css("display")=="list-item"){
			$(".right").css("height","470px");
		}else{
			$(".right").css("height","410px");
		}
	})
});

//记住密码
$(function(){
	$(".checkbox1").click(function(){
		$("#qingwu").toggle();
		if($("#qingwu").css("display")=="inline"){
			$(".checkbox1").css({"background":"url(img/20180903132422.png) no-repeat","background-size":"12px"});
			$(".checkbox1").css("border","1px solid #ff875a");
			$("#checkbox1").prop("checked",true);
		}else{
			$(".checkbox1").css("background","white");
			$(".checkbox1").css("border","1px solid darkgrey");
			$("#checkbox1").prop("checked",false);
		}
	});
	$(".checkbox1").hover(function(){
		$(".checkbox1").css("border","1px solid #ff875a");
	},function(){
		if($("#qingwu").css("display")!="inline"){
			$(".checkbox1").css("border","1px solid darkgrey");
		}
	})
});

//切换二维码
$(function(){
	$(".erweima").click(function(){
		$(".right2").show();
		$(".right").hide();
	});
	$(".computer").click(function(){
		$(".right").show();
		$(".right2").hide();
	});
});
