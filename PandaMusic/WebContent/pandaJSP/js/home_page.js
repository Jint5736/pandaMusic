
//图片放上去的效果
$(document).ready(function(){
	$(".img-box").mouseover(function(){
		$(this).find(".ico_play").stop()
		$(this).find(".ico_play").fadeIn(600);
		$(this).find(".img").css({"transform": "scale(1.08)"})
		$(this).find(".ico_play").css({"transform": "scale(7)"});
		$(this).find(".dianfeng3").css({"border":"1px solid transparent"});
	}).mouseout(function(){
		$(this).find(".ico_play").stop()
		$(this).find(".ico_play").fadeOut(300);
		$(this).find(".img").css({"transform": "scale(1)"})
		$(this).find(".ico_play").css({"transform": "scale(1)"});
		$(this).find(".dianfeng3").css({"border":"1px solid white"})
	})
})

//歌单推荐选项卡
$(function(){
	$(".option1 li").click(function(){
		if($(this).index()!=6){
			$(".option1 li").attr("id"," ");
			$(this).attr("id","hot2");
			var a=$(this).index()+1;
			$(".gedan1,.gedan2,.gedan3,.gedan4,.gedan5,.gedan6").hide();
			$(".gedan1,.gedan2,.gedan3,.gedan4,.gedan5,.gedan6").attr("id","");
			$(".gedan"+a).show();
			$(".gedan"+a).attr("id","myCarousel2");
		}
		
		
	})
})
$(function(){
	$(".main").hover(function(){
		$("#left-jiantou,#right-jiantou").fadeIn();
	},function(){
		$("#left-jiantou,#right-jiantou").fadeOut();
	})
})

//MV选项卡
$(function(){
	$(".option2 li").click(function(){
		if($(this).index()!=6){
			$(".option2 li").attr("id"," ");
			$(this).attr("id","hot3");
			var a=$(this).index()+1;
			$(".mv1,.mv2,.mv3,.mv4,.mv5,.mv6").hide();
			$(".mv1,.mv2,.mv3,.mv4,.mv5,.mv6").attr("id","");
			$(".mv"+a).show();
			$(".mv"+a).attr("id","myCarousel3");
		}
		
	})
})
$(function(){
	$(".main").hover(function(){
		$("#left-jiantou2,#right-jiantou2").fadeIn();
	},function(){
		$("#left-jiantou2,#right-jiantou2").fadeOut();
	})
})

//用户下拉栏
$(function(){
	$("#userlogin,.huanying").hover(function(){
		$(".huanying").stop();
		$(".huanying").slideDown();
	},function(){
		$(".huanying").stop();
		$(".huanying").slideUp();
	})
})

