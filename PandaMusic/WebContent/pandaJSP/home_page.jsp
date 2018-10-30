<%@page import="entity.User_login"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no">
		<!--以移动设备为优先，屏幕和设备的屏幕保持一致，初始缩放为100% 禁止用户缩放-->
		<title>Panda music首页</title>
		<!--引入外部的bootstarp的css文件-->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/pandaJSP/css/bootstrapcaicai.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/pandaJSP/css/awesome-bootstrap-checkbox.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/pandaJSP/css/home_page.css"/>
		<!--先引入外部的jquery文件再引入外部的js文件-->
		<script type="text/javascript" src="${pageContext.request.contextPath}/pandaJSP/js/jquery-3.3.1.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/pandaJSP/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/pandaJSP/js/home_page.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/pandaJSP/js/PandaMusic.js"></script>
	</head>
	<body>
		<!-- 用户验证的不同显示 -->
		<%
		String admin="0";
		String name="0";
		 User_login user = (User_login)request.getAttribute("user"); 
		 if(user==null) //如果jsp页面获取的数据为空
		 {
			 admin="<a href='login.jsp' class='Mymusic-login'>登录</a>"; 
		 }else{
			 admin="<a  class='Mymusic-login' id='userlogin'><img src='pandaJSP/img/touxiang.png'/></a>";
			 name=user.getUsername();
		 }
		%>
		<div class="container-fluid contain">
			<!--头部-->
			<div class="contain-top1"></div>
	        <div class="contain-top">
	            <div class="container container_2">
	                <a class="MyMusic-logo" href="#"><img src="${pageContext.request.contextPath}/pandaJSP/img/MyMusic/MyMusic-nav/38989505695571664.png"/></a>
	            	<div class="MyMusic-nav">
	            	    <ul>
	            	    	<li><a id="hot" href="#">音乐馆</a></li>
	            	    	<li><a href="#">我的音乐</a></li>
	            	    	<li><a href="#">音乐号</a></li>
	            	    	<li><a href="#">VIP</a></li>
	            	    </ul>
	            	</div>
	            	<div class="MyMusic-search">
	            	    <div class="MyMusic-input">
	            	    	<input type="text" placeholder="搜索音乐、MV、歌单、用户" />   	
	            	    	<span class="search-icon"></span>	
	            	    </div>
	            	</div>   	
	            	
	            	<div class="MyMusic-right">
	            		<!--用户下拉菜单-->
	            		<%=admin %>
	                    <%-- <a href='#' class='Mymusic-login' id='userlogin'><img src='${pageContext.request.contextPath}/pandaJSP/img/touxiang.png'/></a> --%>
	                    <a href="#" class="green-diamond">开通熊猫贵族版</a>
	                    <a href="#" class="pay">开通付费包</a>
	                    <div class="huanying" style="display:none;">
                    		<ul class="text-center">
                    			<li class="huanyingli1"><img src="${pageContext.request.contextPath}/pandaJSP/img/touxiang.png"/>欢迎你,<strong><%=name %>!</strong></li>
                    			<li><a href="${pageContext.request.contextPath}/pandaJSP/login.jsp"><button class="btn btn-danger">点击退出登录</button></a></li>
                    		</ul>
	                    </div>
	                </div>
	            </div>
	        	<!--标签栏-->
				<div class="tag">
					<ul class="list-inline">
						<li><a href="" id="home_page">首页</a></li>
						<li><a href="">歌手</a></li>
						<li><a href="">专辑</a></li>
						<li><a href="">排行榜</a></li>
						<li><a href="">分类歌单</a></li>
						<li><a href="">电台</a></li>
						<li><a href="">MV</a></li>
						<li><a href="">数字专辑</a></li>
					</ul>
				</div>
	        </div> 
			
			
			<!--轮播图-->
			<div id="myCarousel" class="carousel slide dalunbo" data-ride="carousel" data-interval="4000">
			    <!-- 轮播（Carousel）项目 -->
			    <div class="carousel-inner">
			        <div class="item active">
			            <a href="" class="back1"><img src="${pageContext.request.contextPath}/pandaJSP/img/1.jpg"/><span class="back_span"></span></a>
			        </div>
			        <div class="item">
			            <a href="" class="back2"><img src="${pageContext.request.contextPath}/pandaJSP/img/2.jpg"/><span class="back_span"></span></a>
			        </div>
			        <div class="item">
			            <a href="" class="back3"><img src="${pageContext.request.contextPath}/pandaJSP/img/4.jpg"/><span class="back_span"></span></a>
			        </div>
			        <div class="item">
			            <a href="" class="back4"><img src="${pageContext.request.contextPath}/pandaJSP/img/5.jpg"/><span class="back_span"></span></a>
			        </div>
			        <div class="item">
			            <a href="" class="back5"><img src="${pageContext.request.contextPath}/pandaJSP/img/6.jpg"/><span class="back_span"></span></a>
			        </div>
			        <div class="item">
			            <a href="" class="back6"><img src="${pageContext.request.contextPath}/pandaJSP/img/7.jpg"/><span class="back_span"></span></a>
			        </div>
			    </div>
			    <!-- 轮播（Carousel）导航 -->
			    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left " aria-hidden="true"></span>
				</a>
				<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right " aria-hidden="true"></span>
				</a>
			</div>
			
			<!-- 歌单推荐 -->
			<%@ include file ="home_page_gedan.jsp" %>
			
			<!--精彩推荐-->
			<div class="contain4">
				<div class="h2 text-center wonderful">
					精 彩 推 荐
				</div>
				<div class="row contain40" >
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 padding1">
						<div class="contain41">
							<a href=""><img src="${pageContext.request.contextPath}/pandaJSP/img/371997.jpg" class="img-responsive"/></a>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 padding2" >
						<div class="contain42">
							<a href=""><img src="${pageContext.request.contextPath}/pandaJSP/img/371534.jpg" class="img-responsive"/></a>
						</div>
					</div>
				</div>
			</div>
			
			
			<!--排行榜-->
			<div class="rank">
				<div class="h2 text-center wonderful paihang">
						排 行 榜
						<div id="more"><a href="">更多 ></a></div>
				</div>
				<div class="play-list container contain2">		
					<div class="img_content">
						<div class="img-box liuxing">
							<div class="dianfeng">
								<ul>
									<li class="dianfeng1 text-center">巅峰榜</li>
									<li class="dianfeng2 text-center">流行指数</li>
									<li class="dianfeng3"></li>
								</ul>
								<a href="">
									<img src="${pageContext.request.contextPath}/pandaJSP/img/cover_play.png" class="ico_play img-responsive ico_play2" >
								</a>
								<!--歌曲名-->
								<ul class="musicname">
									<li>1<a href="">没说什么</a><br><a href="">张杰</a></li>
									<li>2<a href="">东西</a><br><a href="">林俊呈</a></li>
									<li>3<a href="">静悄悄</a><br><a href="">大泫</a></li>
									<li>4<a href="">精彩才刚刚开始</a><br><a href="">易烊千玺</a></li>
								</ul>
							</div>
						</div><!--
					--><div class="img-box rege">
							<div class="dianfeng">
								<ul>
									<li class="dianfeng1 text-center">巅峰榜</li>
									<li class="dianfeng2 text-center">热歌</li>
									<li class="dianfeng3"></li>
								</ul>
								<a href="">
									<img src="${pageContext.request.contextPath}/pandaJSP/img/cover_play.png" class="ico_play img-responsive ico_play2" >
								</a>
								<!--歌曲名-->
								<ul class="musicname">
									<li>1<a href="">没说什么</a><br><a href="">张杰</a></li>
									<li>2<a href="">东西</a><br><a href="">林俊呈</a></li>
									<li>3<a href="">静悄悄</a><br><a href="">大泫</a></li>
									<li>4<a href="">精彩才刚刚开始</a><br><a href="">易烊千玺</a></li>
								</ul>
							</div>
						</div><!--
					--><div class="img-box xinge">
							<div class="dianfeng">
								<ul>
									<li class="dianfeng1 text-center">巅峰榜</li>
									<li class="dianfeng2 text-center">新歌</li>
									<li class="dianfeng3"></li>
								</ul>
								<a href="">
									<img src="${pageContext.request.contextPath}/pandaJSP/img/cover_play.png" class="ico_play img-responsive ico_play2" >
								</a>
								<!--歌曲名-->
								<ul class="musicname">
									<li>1<a href="">没说什么</a><br><a href="">张杰</a></li>
									<li>2<a href="">东西</a><br><a href="">林俊呈</a></li>
									<li>3<a href="">静悄悄</a><br><a href="">大泫</a></li>
									<li>4<a href="">精彩才刚刚开始</a><br><a href="">易烊千玺</a></li>
								</ul>
							</div>
						</div><!--
					--><div class="img-box oumei">
							<div class="dianfeng">
								<ul>
									<li class="dianfeng1 text-center">巅峰榜</li>
									<li class="dianfeng2 text-center">欧美</li>
									<li class="dianfeng3"></li>
								</ul>
								<a href="">
									<img src="${pageContext.request.contextPath}/pandaJSP/img/cover_play.png" class="ico_play img-responsive ico_play2" >
								</a>
								<!--歌曲名-->
								<ul class="musicname">
									<li>1<a href="">没说什么</a><br><a href="">张杰</a></li>
									<li>2<a href="">东西</a><br><a href="">林俊呈</a></li>
									<li>3<a href="">静悄悄</a><br><a href="">大泫</a></li>
									<li>4<a href="">精彩才刚刚开始</a><br><a href="">易烊千玺</a></li>
								</ul>
							</div>
						</div><!--
					--><div class="img-box hanguo" id="img-right">
							<div class="dianfeng">
								<ul>
									<li class="dianfeng1 text-center">巅峰榜</li>
									<li class="dianfeng2 text-center">韩国</li>
									<li class="dianfeng3"></li>
								</ul>
								<a href="">
									<img src="${pageContext.request.contextPath}/pandaJSP/img/cover_play.png" class="ico_play img-responsive ico_play2" >
								</a>
								<!--歌曲名-->
								<ul class="musicname">
									<li>1<a href="">没说什么</a><br><a href="">张杰</a></li>
									<li>2<a href="">东西</a><br><a href="">林俊呈</a></li>
									<li>3<a href="">静悄悄</a><br><a href="">大泫</a></li>
									<li>4<a href="">精彩才刚刚开始</a><br><a href="">易烊千玺</a></li>
								</ul>
							</div>
						</div>
					</div>
					
						
				</div>
			</div>
			
			<!-- MV -->
			<%@ include file ="home_page_MV.jsp" %>
			
			<!--尾部-->
	        <div class="contain-bottom">
	            <div class="container">
	                <div class="bottom-download">
	                    <h2>下载Panda音乐客户端</h2>
	                    <ul>
	                        <li class="bottom-download-item">
	                            <a href="#">
	                                <i class="icon-Pc"></i>
	                                <span>PC版</span>
	                            </a>
	                        </li>
	                        <li class="bottom-download-item">
	                            <a href="#">
	                                <i class="icon-Mac"></i>
	                                <span>Mac版</span>
	                            </a>
	                        </li>        
	                        <li class="bottom-download-item">
	                            <a href="#">
	                                <i class="icon-Android"></i>
	                                <span>Android版</span>
	                            </a>
	                        </li>
	                        <li class="bottom-download-item">
	                            <a href="#">
	                                <i class="icon-iPhone"></i>
	                                <span>iPhone版</span>
	                            </a>
	                        </li>
	                    </ul>
	                </div>
	                
	                <div class="bottom-product">
	                    <h2>特色产品</h2>
	                    <ul>
	                        <li class="bottom-product-item">
	                            <a href="#">
	                                <i class="icon-Qmkg"></i>
	                                <span>全民K歌</span>
	                            </a>
	                        </li>
	                        <li class="bottom-product-item">
	                            <a href="#">
	                                <i class="icon-Super"></i>
	                                <span>Super Sound</span>
	                            </a>
	                        </li>        
	                        <li class="bottom-product-item">
	                            <a href="#">
	                                <i class="icon-QPlay"></i>
	                                <span>QPlay</span>
	                            </a>
	                        </li>
	                        <li class="bottom-product-item">
	                            <a href="#">
	                                <span>车载互联</span>
	                            </a>
	                        </li>
	                        <li class="bottom-product-item">
	                            <a href="#">
	                                <span id="qq-show">QQ演出</span>
	                            </a>
	                        </li>
	                    </ul>
	                </div>
	          
	                <div class="bottom-tit">
	                    <h2>合作链接</h2>
	                    <ul>
	                        <li class="bottom-tit-item">
	                            <a href="#">CJ E&amp;M</a>
	                        </li>
	                        <li class="bottom-tit-item">
	                            <a href="#">熊猫视频</a>
	                        </li>
	                        <li class="bottom-tit-item">
	                            <a href="#">手机QQ空间</a>
	                        </li>
	                        <li class="bottom-tit-item">
	                            <a href="#">最新版QQ</a>
	                        </li>
	                        <li class="bottom-tit-item">
	                            <a href="#">熊猫社交广告</a>
	                        </li>
	                        <li class="bottom-tit-item">
	                            <a href="#">电脑管家</a>
	                        </li>
	                        <li class="bottom-tit-item">
	                            <a href="#">熊猫浏览器</a>
	                        </li>
	                        <li class="bottom-tit-item">
	                            <a href="#">熊猫微云</a>
	                        </li>
	                        <li class="bottom-tit-item">
	                            <a href="#">熊猫云</a>
	                        </li>
	                        <li class="bottom-tit-item">
	                            <a href="#">企鹅FM</a>
	                        </li>
	                        <li class="bottom-tit-item">
	                            <a href="#">智能电视网</a>
	                        </li>
	                        <li class="bottom-tit-item">
	                            <a href="#">当贝市场</a>
	                        </li>
	                    </ul>
	                </div>
	 
	                <div class="bottom-platform">
	                    <h3>开放平台</h3>
	                    <ul>
	                    	<li><a href="#">熊猫音乐人平台</a></li>
	                    	<li><a href="#">音乐号认证</a></li>
	                    	<li><a href="#">上传音频</a></li>
	                    </ul>
	                </div>
	                
	                <div class="bottom-copyright">
	                    <p>
	                        <a href="#">关于panda音乐</a>
	                        |
	                        <a href="#">About Tencent</a>
	                        |
	                        <a href="#">服务条款</a>
	                        |
	                        <a href="#">用户服务协议</a>
	                        |
	                        <a href="#">隐私政策</a>
	                        |
	                        <a href="#">权利声明</a>
	                        |
	                        <a href="#">广告服务</a>
	                        |
	                        <a href="#">腾讯招聘</a>
	                        |
	                        <a href="#">客服中心</a>
	                        |
	                        <a href="#">网站导航</a>
	                    </p>
	                    <p>
	                        Copyright © 1998 - 2018 Tencent. 
	                        <a href="#">All Rights Reserved.</a>
	                    </p>
	                    <p>
	                                                	熊猫公司 
	                        <a href="#">版权所有</a>
	                        <a href="#">熊猫网络文化经营许可证</a>
	                    </p>
	                </div>    
	                    
	            </div>
	            
	        </div>

			
		</div>
	</body>
	</body>
</html>
