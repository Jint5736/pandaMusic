$(function(){
	$(".ul1 li").click(function(){
		$(".ul1 li").attr("id"," ");
		$(this).attr("id","hot");
		var a=$(this).index()+1;
		$(".Music_management>div").hide();
		$(".Music_management>div:nth-of-type("+a+ ")").show();
	})
})
$(function(){
	$(".xinicon").click(function(){
		var a=$(this).parent().parent().css("background-color");
		console.log(a);
		if(a!="rgb(217, 83, 79)"){
			$(this).parent().parent().css("background","#D9534F");
			console.log(1);
		}else{
			$(this).parent().parent().css("background","white");
		}
	})
})
$(function(){
	$(".deleteicon").click(function(){
		$(this).parent().parent().hide();
	})
})
