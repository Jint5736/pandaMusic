$(function(){
	var $main=$('#main');
	var $listContentUl =$('#listContentUl');
	var touchstart = 'touchstart';
	var touchmove = 'touchmove';
	var touchend = 'touchend';
	var id=0;
	var $name_img=$('#name_img');
	var $details_name=$('#details_name');
	var oAudio=$('#audiol').get(0); //get(0)为转原生语法
	var $detailsAudioProUp = $('#details_audioProUp');
	var $detailsAudioProBar = $('#details_audioProBar');
	var $detailsNowTime = $('#details_nowTime');
	var $detailsAllTime = $('#details_allTime');
	var $detailsPlay = $('#details_play');
	var $detailsPrev = $('#details_prev');
	var $detailsNext = $('#details_next');
	var  $detailsLyric=$('#detailsLyric');
	var  $detailsLyricUl=$('#detailsLyricUl');
	var Wayplay=0;//0为顺序，1为单曲，2为循环；
	
	
	var index=0;

	var pdrunnum=0;
	
	function init(){   //整个项目的初始化
		
		musicList.init();
		musicAudio.init();
		musicDetails.init();
	}
	
	
	
	
	var musicList=(function(){  //音乐列表操作
		
		function init(){  //初始
			data();
			bind();
		}
		
		function data(){ //数据a
			
			$.ajax({
				url:'musicList.php',
				type:'GET',
				dataType:'json',
				success:function(data){
					$.each(data,function(i,obj){
						var $li ='<li musicId="'+(obj.id)+'"><h3 class="title">'+(obj.musicName)+'</h3><p class="name">'+(obj.name)+'</p></li>';
						
						 $listContentUl.append($li);
					});
					
					
				}
			});
			
			
		}
		
		function bind(){ //事件
			
			 $listContentUl.delegate('li',"click",function(){
			 	$(this).attr('class','active').siblings().attr('class','');
			 	id =$(this).attr('musicId');
			 	musicAudio.loadMusic(id);
			 	index=$(this).index();
			 });
			
		}
		
		
		function show(){//显示
			
		}
		
		
		
		return{
			init:init,
			show:show
			
		};
	})();
	
	var musicDetails=(function(){ //音乐界面操作
		var re =/\[[^[]+/g; //分段
		var arr=[];
		var $li=null;
//		[00:00.00]烦恼歌 - 张学友
//		[00:00.00]烦恼歌 - 张学友
		function init(){
			bind();
		}
		function bind(){   //事件
			
			}
		
		function show(sName,sMusicName,sLyric,sImg){  //显示
			$name_img.attr('src','img/'+sImg);
			$details_name.html(sMusicName+'</br><span>演唱者：'+sName+'</span>');
			arr =sLyric.match(re);
//			console.log(arr);
			for(var i=0;i<arr.length;i++){
				 arr[i]=[formatTime(arr[i].substring(0,10)),arr[i].substring(10).trim()];
				}
//			console.log(arr);
			$detailsLyricUl.empty().css('transform','translate3d(0,0,0)');
			for(var i=0;i<arr.length;i++){
				$detailsLyricUl.append('<li>'+arr[i][1]+'</li>');
				}
		    $li=$detailsLyricUl.find('li');
			$li.first().attr('class','active');
			iLiH=$li.first().outerHeight(true);
		}
		
		function formatTime(num){ //格式化歌词日期
			
			num=num.substring(1,num.length-1); //去中括号
			var arr = num.split(':');
			return (parseFloat(arr[0]*60)+parseFloat(arr[1])).toFixed(2);
			
			
		}
		
		function scrollLyric(ct){ //滚动歌词
		
		for(var i=0;i<arr.length;i++){
			if(i!=arr.length-1&& ct>arr[i][0]&&ct<arr[i+1][0]){
				$li.eq(i).attr('class','active').siblings().attr('class','');
				if(i>5){
					$detailsLyricUl.css('transform','translate3d(0,'+(-iLiH*(i-5))+'px,0)')
				}
			
			}else if(i==arr.length-1&& ct>arr[i][0]){
				$li.eq(i).attr('class','active').siblings().attr('class','');
				$detailsLyricUl.css('transform','translate3d(0,'+(-iLiH*(i-5))+'px,0)');
			}
		}
		
	}
	
		
		
		
		return{
			init:init,
			show:show,
			scrollLyric:scrollLyric
		}
	})();
	
	
	var musicAudio=(function(){//音乐播放器操作
	
	var onoff=true;
	var timer=null;
	var scale=0;
	var disX=0;//移动差值
 	var vdisX=0;//音量移动差值
	var Vscale=0;
	
	function init(){
		bind();
	}
	function loadMusic(id){//载入音乐
		console.log('load')
		$.ajax({
			url:'musicAudio.php',
			type:'GET',
			dataType:'json',
			data:{id:id},
			async:false,
			success:function(data){
				console.log("载入音乐")
				show(data);
				
			}
		});
	}
	function show(obj){ //显示
		console.log("调用show")
		var sName = obj.name;
		var sMusicName = obj.musicName;
		var sLyric = obj.lyric;
		var sImg = obj.img;
		var sAudio = obj.audio;
		musicList.show(sImg);
		musicDetails.show(sName,sMusicName,sLyric,sImg);
		oAudio.src= 'img/'+sAudio;
		$(oAudio).one('canplaythrough',function(){
			play();
			$detailsAllTime.html(formatTime(oAudio.duration))
		});
		
		
//		document.getElementById("audiol").addEventListener('ended',function bb(){
//			console.log("调用音频结束")
//			next();
//			document.getElementById("audiol").removeEventListener('ended',);
//			console.log("移除测试")
//		});
		$(oAudio).one('ended',function(){
			console.log("调用音频结束")
			next();
			
		});
		
	}
	function play(){  //播放
		onoff=false;
		$('#details_play').css({'background':'url(img/details_pause.png) no-repeat','background-size':'cover'})
	    oAudio.play();
	    playing();
	    clearInterval(timer);
	    timer=setInterval(playing,1000);
	}
	function pause(){ //暂停
		onoff=true;
		$('#details_play').css({'background':'url(img/details_play.png) no-repeat','background-size':'cover'})
	    oAudio.pause();
	    clearInterval(timer);
	}
	
	


	
	
	
	function bind(){   //事件
			$('#details_play').click(function(){
					if(onoff){
						play();
					}else{
						pause();
					}
			
			});
			
			
			
			$("#detailsWayImg").add("#detailsWayPlaySpan").click(function(){  //单击播放方法顺序图
				Wayplay=Wayplay+1;
				if(Wayplay==3){
					Wayplay=0
				}
				if(Wayplay==2){
					$(this).attr("src","img/randomplay.png");
					$(this).parent().find("span").html("随机播放：")
				}else if(Wayplay==1){
					$(this).attr("src","img/singleplay.png");
					$(this).parent().find("span").html("单曲播放：")
				}else if(Wayplay==0){
					$(this).attr("src","img/orderplay.png");
					$(this).parent().find("span").html("顺序播放：")
				}
			
				
				
			})
			
			$("#detailsVolumeProBar").mousedown(function(ev){//音量调节拖动
				var This =this;
				vdisX=ev.pageX-$("#detailsVolumeProBar").position().left;
				
				$(document).mousemove(function(ev){  
					var vparentW=$("#detailsVolumePro").width();
					
					var Vl=ev.pageX-vdisX;
					
					if(Vl<0){
						Vl=0;
					}else if(Vl>vparentW){
						Vl=vparentW;
					}
					Vscale=Vl/vparentW;
					$(This).css("left",Vl);
					$("#detailsVolumeProUp").css("width",Vl);
				});
				$(document).mouseup(function(){
					$(document).off("mousemove");
					
					oAudio.volume=Vscale;
					
					$(document).off("mouseup");
				});
				
				return false;
			})
			
			
			
			
			
			
			
			$detailsAudioProBar.mousedown(function(ev){  //歌词进度条拖动
				var This= this;
				
				disX=ev.pageX-$(this).position().left;
				clearInterval(timer);
				$(document).mousemove(function(ev){
					var parentW=$detailsAudioProBar.parent().width();
					var L=ev.pageX-disX;
					if(L<0){
						L=0;
					}else if(L>=parentW){
						L=parentW;
					}
					
					
					$(This).css('left',L);
					$("#details_audioProUp").css('width',L);
					scale =L/parentW;
					
				});
				$(document).mouseup(function(ev){
					
					$(this).off("mousemove");
					oAudio.currentTime=scale*oAudio.duration;
					playing();
				    clearInterval(timer);
				    timer=setInterval(playing,1000);
				    $(document).off("mouseup");
				});
				
				return false;
			});
			
			$detailsNext.click(function(){
				next();
			});
			$detailsPrev.click(function(){
				prev();
			})
		
			}
	
	function formatTime(num){ //格式日期
		num=parseInt(num);
		var iM =Math.floor(num%3600/60);
		var iS =Math.floor(num%60);
		return toZero(iM)+':'+toZero(iS);
		
	}
	
	
	
	function toZero(num){ //补零操作
		if(num<10){
			return '0'+num;
		}else{
			return ''+num;
		}
	}
	
	function playing(){ //播放进行中
		$detailsNowTime.html(formatTime(oAudio.currentTime));
		scale=oAudio.currentTime/oAudio.duration;
		$detailsAudioProUp.css('width',scale*100+'%');
		$detailsAudioProBar.css('left',scale*100+'%');
		musicDetails.scrollLyric(oAudio.currentTime);
		pdrunnum=pdrunnum+10;
//		$(".details_audio").css("background-position-x",-pdrunnum+"px")
		$(".details_audio").css("background-position-x",-pdrunnum+"px")
	}
	function next(){  //下一首
		
		var $li =$listContentUl.find("li");
		//Wayplay=0;  0为顺序，1为单曲，2为循环；
		if(Wayplay==0){
			
			if(index==$li.length-1){
				index=0;
			}else{
				index=index+1;
			}
			
			
			console.log(index);
		}else if(Wayplay==1){
			index= index;
		}else if(Wayplay==2){
			var ListRandom=$li.length;
			var rindex=index;
			var inrandom=parseInt(Math.random()*ListRandom);
			
			if(rindex==inrandom){
				index=inrandom-1;
			}else{
				index=inrandom;
			}
			
			
		}
		
		
		
		id=$li.eq(index).attr('musicId');
		
		$li.eq(index).attr('class','active').siblings().attr('class','');
		
		loadMusic(id);
		
		
		
		console.log("bb")
	}
	function prev(){  //上一首
		var $li =$listContentUl.find("li");
		//Wayplay=0;  0为顺序，1为单曲，2为循环；
		if(Wayplay==0){
			index= index ==0 ? $li.length-1 :index-1;
		}else if(Wayplay==1){
			index= index;
		}else if(Wayplay==2){
			var ListRandom=$li.length;
			var rindex=index;
			index=parseInt(Math.random()*12);
			
			if(index==rindex){
				index=index-1;
			}
			
		}
		

		id=$li.eq(index).attr('musicId');
		$li.eq(index).attr('class','active').siblings().attr('class','');
		loadMusic(id);
	}
	
	
	return{
		init:init,
		loadMusic:loadMusic
	}
	
	})();
	
	
	
	init();
	
	
	
	
});


$(function(){
	var bdbgnum =0;
	var bdtoleft =1;
	var listclick=1;
	
	
	setInterval(function () {  //背景图移动
	if(bdbgnum>=0&&bdbgnum<4350&&bdtoleft==1){
		bdbgnum=bdbgnum+10;
	}else if(bdbgnum>=0&&bdbgnum<4350&&bdtoleft==0){
		bdbgnum=bdbgnum-10;
	}else if(bdbgnum>=4350){
		bdtoleft=0;
		bdbgnum=bdbgnum-10;
	
	}else if(bdbgnum<0){
		bdtoleft=1;
		bdbgnum=0;
	}
	
	$("body").css("background-position-x",bdbgnum+"px")
  }, 200);
  
//	setInterval(function () {  //音乐盒宽度
//	var playerwidth=$("#player").width();
//	console.log(listclick)
//	
//	 if(listclick=="1"){
//		musicvewwidth=playerwidth-502;
//		console.log('cc')
//	}else if(listclick=="0"){
//		musicvewwidth=playerwidth-2;
//		console.log('dd')
//	}
//	
//	$("#muiscvew").css("width",musicvewwidth+"px");
//	var bb= $("#muiscvew").width();
//	console.log(bb)
//}, 100);
  
  
   $(".listcenterbt1").click(function(){ //播放列表收起
   	$(this).hide();
   	$("#main").css("margin-left","-499px");
   	$("#musicDetails").css("width","calc(100% - 2px)");
   	
   	$(".listcenterbt2").show();
   	listclick=0;
   })
    $(".listcenterbt2").click(function(){//播放列表展开
   	$(this).hide();
   	$("#musicDetails").css("width","calc(100% - 502px)");
   	$("#main").css("margin-left","0px");
   	$(".listcenterbt1").show();
   	
   	listclick=1;
   })
   
   
})
