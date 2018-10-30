<%@page import="entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no">
		<!--以移动设备为优先，屏幕和设备的屏幕保持一致，初始缩放为100% 禁止用户缩放-->
		<title>Panda音乐后台管理界面</title>
		<!--引入外部的bootstarp的css文件-->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/pandaJSP/css/bootstrapcaicai.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/pandaJSP/css/awesome-bootstrap-checkbox.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/pandaJSP/css/backstage_index.css"/>
		<!--先引入外部的jquery文件再引入外部的js文件-->
		<script type="text/javascript" src="${pageContext.request.contextPath}/pandaJSP/js/jquery-3.3.1.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/pandaJSP/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/pandaJSP/js/backstage_index.js"></script>
</head>
<body>
	<!-- 获取登陆时的用户名 -->
	<%
	User user = (User)request.getAttribute("user");
	%>
	<div class="contain">
		<!--左边-->
		<div class="backstage_contain_left pull-left">
			<!--logo-->
			<div class="logo"></div>
			<!--导航-->
			<div class="navigation">
				<ul class="ul1">
					<li id="hot"><span class="glyphicon glyphicon-headphones"></span>音乐管理</li>
					<li><span class="glyphicon glyphicon-cloud-upload"></span>音乐添加</li>
					<li><span class="glyphicon glyphicon-user"></span>用户管理</li>
					<li><span class="glyphicon glyphicon-magnet"></span>管理员账号</li>
				</ul>
			</div>
		</div>
		<!--右边-->
		<div class="backstage_ccontain_right pull-left">
			<!--搜索栏-->
			<div class="search">
				<div class="form_div pull-left">
					<form action="" method="post" class="form-group">
						<div class="input-group">
							<input type="search" placeholder="Search" class="form-control input1" />
							<span class="input-group-addon" id="span1"><span class="glyphicon glyphicon-search" id="span2"></span></span>
						</div>
					</form>
				</div>
				<div class="hello_admin pull-right">
					<div class="icon1 pull-left">
						<span class="glyphicon glyphicon-user icon1span"></span>
					</div>
					<div class="pull-left hello_caicai">
						Hello,<%=user.getUsername()%>！
					</div>
					<div class="pull-left icon2">
						<span class="glyphicon glyphicon-music"></span>
					</div>
				</div>
			</div>
			<!--下面界面-->
			<div class="bottom_right">
				<div class="Music_management">
					<!--管理界面-->
					<div class="table_div Music_management2"> 
						<div class="property">
							<ul >
								<li>歌名</li>
								<li>歌手</li>
								<li>专辑</li>
								<li>时长</li>
								<li>其他操作</li>
								<li>删除</li>
							</ul>
						</div>
						<div class="table1">
							<table class="table table-hover">
							  <tbody class="tbody1">
							    <tr>
							      <td>Tanmay</td>
							      <td>Bangalore</td>
							      <td>560001</td>
							      <td>05:11</td>
							      <td><span class="glyphicon glyphicon-random othericon"></span></td>
							      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
							    </tr>
							     <tr>
							      <td>Tanmay</td>
							      <td>Bangalore</td>
							      <td>560001</td>
							      <td>05:11</td>
							      <td><span class="glyphicon glyphicon-random othericon"></span></td>
							      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
							    </tr>
							     <tr>
							      <td>Tanmay</td>
							      <td>Bangalore</td>
							      <td>560001</td>
							      <td>05:11</td>
							      <td><span class="glyphicon glyphicon-random othericon"></span></td>
							      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
							    </tr>
							     <tr>
							      <td>Tanmay</td>
							      <td>Bangalore</td>
							      <td>560001</td>
							      <td>05:11</td>
							      <td><span class="glyphicon glyphicon-random othericon"></span></td>
							      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
							    </tr>
							     <tr>
							      <td>Tanmay</td>
							      <td>Bangalore</td>
							      <td>560001</td>
							      <td>05:11</td>
							      <td><span class="glyphicon glyphicon-random othericon"></span></td>
							      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
							    </tr>
							     <tr>
							      <td>Tanmay</td>
							      <td>Bangalore</td>
							      <td>560001</td>
							      <td>05:11</td>
							      <td><span class="glyphicon glyphicon-random othericon"></span></td>
							      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
							    </tr>
							     <tr>
							      <td>Tanmay</td>
							      <td>Bangalore</td>
							      <td>560001</td>
							      <td>05:11</td>
							      <td><span class="glyphicon glyphicon-random othericon"></span></td>
							      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
							    </tr>
							     <tr>
							      <td>Tanmay</td>
							      <td>Bangalore</td>
							      <td>560001</td>
							      <td>05:11</td>
							      <td><span class="glyphicon glyphicon-random othericon"></span></td>
							      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
							    </tr>
							     <tr>
							      <td>Tanmay</td>
							      <td>Bangalore</td>
							      <td>560001</td>
							      <td>05:11</td>
							      <td><span class="glyphicon glyphicon-random othericon"></span></td>
							      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
							    </tr>
							     <tr>
							      <td>Tanmay</td>
							      <td>Bangalore</td>
							      <td>560001</td>
							      <td>05:11</td>
							      <td><span class="glyphicon glyphicon-random othericon"></span></td>
							      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
							    </tr>
							     <tr>
							      <td>Tanmay</td>
							      <td>Bangalore</td>
							      <td>560001</td>
							      <td>05:11</td>
							      <td><span class="glyphicon glyphicon-random othericon"></span></td>
							      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
							    </tr>
							     <tr>
							      <td>Tanmay</td>
							      <td>Bangalore</td>
							      <td>560001</td>
							      <td>05:11</td>
							      <td><span class="glyphicon glyphicon-random othericon"></span></td>
							      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
							    </tr>
							     <tr>
							      <td>Tanmay</td>
							      <td>Bangalore</td>
							      <td>560001</td>
							      <td>05:11</td>
							      <td><span class="glyphicon glyphicon-random othericon"></span></td>
							      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
							    </tr>
							     <tr>
							      <td>Tanmay</td>
							      <td>Bangalore</td>
							      <td>560001</td>
							      <td>05:11</td>
							      <td><span class="glyphicon glyphicon-random othericon"></span></td>
							      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
							    </tr>
							     <tr>
							      <td>Tanmay</td>
							      <td>Bangalore</td>
							      <td>560001</td>
							      <td>05:11</td>
							      <td><span class="glyphicon glyphicon-random othericon"></span></td>
							      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
							    </tr>
							     <tr>
							      <td>Tanmay</td>
							      <td>Bangalore</td>
							      <td>560001</td>
							      <td>05:11</td>
							      <td><span class="glyphicon glyphicon-random othericon"></span></td>
							      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
							    </tr>
							     <tr>
							      <td>Tanmay</td>
							      <td>Bangalore</td>
							      <td>560001</td>
							      <td>05:11</td>
							      <td><span class="glyphicon glyphicon-random othericon"></span></td>
							      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
							    </tr>
							     <tr>
							      <td>Tanmay</td>
							      <td>Bangalore</td>
							      <td>560001</td>
							      <td>05:11</td>
							      <td><span class="glyphicon glyphicon-random othericon"></span></td>
							      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
							    </tr>
							     <tr>
							      <td>Tanmay</td>
							      <td>Bangalore</td>
							      <td>560001</td>
							      <td>05:11</td>
							      <td><span class="glyphicon glyphicon-random othericon"></span></td>
							      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
							    </tr>
							     <tr>
							      <td>Tanmay</td>
							      <td>Bangalore</td>
							      <td>560001</td>
							      <td>05:11</td>
							      <td><span class="glyphicon glyphicon-random othericon"></span></td>
							      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
							    </tr>
							     <tr>
							      <td>Tanmay</td>
							      <td>Bangalore</td>
							      <td>560001</td>
							      <td>05:11</td>
							      <td><span class="glyphicon glyphicon-random othericon"></span></td>
							      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
							    </tr>
							     <tr>
							      <td>Tanmay</td>
							      <td>Bangalore</td>
							      <td>560001</td>
							      <td>05:11</td>
							      <td><span class="glyphicon glyphicon-random othericon"></span></td>
							      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
							    </tr>
							     <tr>
							      <td>Tanmay</td>
							      <td>Bangalore</td>
							      <td>560001</td>
							      <td>05:11</td>
							      <td><span class="glyphicon glyphicon-random othericon"></span></td>
							      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
							    </tr>
							    
							    <tr>
							      <td>Tanmay</td>
							      <td>Bangalore</td>
							      <td>560001</td>
							      <td>05:11</td>
							      <td><span class="glyphicon glyphicon-random othericon"></span></td>
							      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
							    </tr>
							    <tr>
							      <td>Tanmay</td>
							      <td>Bangalore</td>
							      <td>560001</td>
							      <td>05:11</td>
							      <td><span class="glyphicon glyphicon-random othericon"></span></td>
							      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
							    </tr>
							     <tr>
							      <td>Tanmay</td>
							      <td>Bangalore</td>
							      <td>560001</td>
							      <td>05:11</td>
							      <td><span class="glyphicon glyphicon-random othericon"></span></td>
							      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
							    </tr>
							     <tr>
							      <td>Tanmay</td>
							      <td>Bangalore</td>
							      <td>560001</td>
							      <td>05:11</td>
							      <td><span class="glyphicon glyphicon-random othericon"></span></td>
							      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
							    </tr>
							     <tr>
							      <td>Tanmay</td>
							      <td>Bangalore</td>
							      <td>560001</td>
							      <td>05:11</td>
							      <td><span class="glyphicon glyphicon-random othericon"></span></td>
							      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
							    </tr>
							     <tr>
							      <td>Tanmay</td>
							      <td>Bangalore</td>
							      <td>560001</td>
							      <td>05:11</td>
							      <td><span class="glyphicon glyphicon-random othericon"></span></td>
							      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
							    </tr>
							     <tr>
							      <td>Tanmay</td>
							      <td>Bangalore</td>
							      <td>560001</td>
							      <td>05:11</td>
							      <td><span class="glyphicon glyphicon-random othericon"></span></td>
							      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
							    </tr>
							     <tr>
							      <td>Tanmay</td>
							      <td>Bangalore</td>
							      <td>560001</td>
							      <td>05:11</td>
							      <td><span class="glyphicon glyphicon-random othericon"></span></td>
							      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
							    </tr>
							     <tr>
							      <td>Tanmay</td>
							      <td>Bangalore</td>
							      <td>560001</td>
							      <td>05:11</td>
							      <td><span class="glyphicon glyphicon-random othericon"></span></td>
							      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
							    </tr>
							    <tr>
							      <td>Tanmay</td>
							      <td>Bangalore</td>
							      <td>560001</td>
							      <td>05:11</td>
							      <td><span class="glyphicon glyphicon-random othericon"></span></td>
							      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
							    </tr>
							    <tr>
							      <td>Tanmay</td>
							      <td>Bangalore</td>
							      <td>560001</td>
							      <td>05:11</td>
							      <td><span class="glyphicon glyphicon-random othericon"></span></td>
							      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
							    </tr>
							    <tr>
							      <td>Tanmay</td>
							      <td>Bangalore</td>
							      <td>560001</td>
							      <td>05:11</td>
							      <td><span class="glyphicon glyphicon-random othericon"></span></td>
							      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
							    </tr>
							    <tr>
							      <td>Tanmay</td>
							      <td>Bangalore</td>
							      <td>560001</td>
							      <td>05:11</td>
							      <td><span class="glyphicon glyphicon-random othericon"></span></td>
							      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
							    </tr>
							    <tr>
							      <td>Tanmay</td>
							      <td>Bangalore</td>
							      <td>560001</td>
							      <td>05:11</td>
							      <td><span class="glyphicon glyphicon-random othericon"></span></td>
							      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
							    </tr>
							    
							  </tbody>
							</table>
						</div>
					</div>
					<!--音乐添加界面-->
					<div class="Music_add" style="display: none;">
						<form action="#" method="post">
							<ul class="music_addul">
								<li>添加歌曲</li>
								<li class="pull-left"><span class="pull-left"> 歌名：</span><input type="text" name="" id="" value="" class="form-control pull-left"/></li>
								<li class="pull-left"><span class="pull-left"> 歌手 ：</span><input type="text" name="" id="" value="" class="form-control pull-left"/></li>
								<li class="pull-left"><span class="pull-left"> 专辑名：</span><input type="text" name="" id="" value="" class="form-control pull-left"/></li>
								<li class="pull-left"><span class="pull-left"> 时长：</span><input type="text" name="" id="" value="" class="form-control pull-left"/></li>
								<li class="pull-left"><span class="pull-left"> 音乐地址：</span><input type="text" name="" id="" value="" class="form-control pull-left"/></li>
								<li class="pull-left"><span class="pull-left"> 封面地址：</span><input type="text" name="" id="" value="" class="form-control pull-left"/></li>
								<li class="pull-left"><span class="pull-left"> MV地址：</span><input type="text" name="" id="" value="" class="form-control pull-left"/></li>
								<li class="pull-left"> <span class="pull-left"> 歌词：</span><textarea  class="form-control pull-left Lyrics"></textarea></li>
							</ul>
							<input type="text" value="确认添加" class="btn btn-danger add_submit pull-left"/>
							<a class="btn btn-success add_submit pull-left">上传歌曲</a>
						</form>
					</div>
					<!--用户管理界面-->
					<div class="User_management" style="display: none;">
						<div>用户管理</div>
						<div class="User_property">
							<ul >
								<li>用户名</li>
								<li>标记状态</li>
								<li>VIP状态</li>
								<li>其他操作</li>
								<li>注销账号</li>
							</ul>
						</div>
						<div class="table_div2">
							<table class="table table-hover">
								  <tbody class="tbody">
								    <tr>
								      <td>菜菜</td>
								      <td><span class="glyphicon glyphicon-heart xinicon"></span></td>
								      <td><span class="glyphicon glyphicon-star xingicon"></span></td>
								      <td><span class="glyphicon glyphicon-random othericon"></span></td>
								      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
								    </tr>
								    <tr>
								      <td>肥肥</td>
								      <td><span class="glyphicon glyphicon-heart xinicon"></span></td>
								      <td><span class="glyphicon glyphicon-star-empty xingicon"></span></td>
								      <td><span class="glyphicon glyphicon-random othericon"></span></td>
								      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
								    </tr>
								     <tr>
								      <td>菜菜</td>
								      <td><span class="glyphicon glyphicon-heart xinicon"></span></td>
								      <td><span class="glyphicon glyphicon-star xingicon"></span></td>
								      <td><span class="glyphicon glyphicon-random othericon"></span></td>
								      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
								    </tr>
								    <tr>
								      <td>肥肥</td>
								      <td><span class="glyphicon glyphicon-heart xinicon"></span></td>
								      <td><span class="glyphicon glyphicon-star-empty xingicon"></span></td>
								      <td><span class="glyphicon glyphicon-random othericon"></span></td>
								      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
								    </tr>
								     <tr>
								      <td>菜菜</td>
								      <td><span class="glyphicon glyphicon-heart xinicon"></span></td>
								      <td><span class="glyphicon glyphicon-star xingicon"></span></td>
								      <td><span class="glyphicon glyphicon-random othericon"></span></td>
								      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
								    </tr>
								    <tr>
								      <td>肥肥</td>
								      <td><span class="glyphicon glyphicon-heart xinicon"></span></td>
								      <td><span class="glyphicon glyphicon-star-empty xingicon"></span></td>
								      <td><span class="glyphicon glyphicon-random othericon"></span></td>
								      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
								    </tr>
								     <tr>
								      <td>菜菜</td>
								      <td><span class="glyphicon glyphicon-heart xinicon"></span></td>
								      <td><span class="glyphicon glyphicon-star xingicon"></span></td>
								      <td><span class="glyphicon glyphicon-random othericon"></span></td>
								      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
								    </tr>
								    <tr>
								      <td>肥肥</td>
								      <td><span class="glyphicon glyphicon-heart xinicon"></span></td>
								      <td><span class="glyphicon glyphicon-star-empty xingicon"></span></td>
								      <td><span class="glyphicon glyphicon-random othericon"></span></td>
								      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
								    </tr>
								     <tr>
								      <td>菜菜</td>
								      <td><span class="glyphicon glyphicon-heart xinicon"></span></td>
								      <td><span class="glyphicon glyphicon-star xingicon"></span></td>
								      <td><span class="glyphicon glyphicon-random othericon"></span></td>
								      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
								    </tr>
								    <tr>
								      <td>肥肥</td>
								      <td><span class="glyphicon glyphicon-heart xinicon"></span></td>
								      <td><span class="glyphicon glyphicon-star-empty xingicon"></span></td>
								      <td><span class="glyphicon glyphicon-random othericon"></span></td>
								      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
								    </tr>
								     <tr>
								      <td>菜菜</td>
								      <td><span class="glyphicon glyphicon-heart xinicon"></span></td>
								      <td><span class="glyphicon glyphicon-star xingicon"></span></td>
								      <td><span class="glyphicon glyphicon-random othericon"></span></td>
								      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
								    </tr>
								    <tr>
								      <td>肥肥</td>
								      <td><span class="glyphicon glyphicon-heart xinicon"></span></td>
								      <td><span class="glyphicon glyphicon-star-empty xingicon"></span></td>
								      <td><span class="glyphicon glyphicon-random othericon"></span></td>
								      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
								    </tr>
								     <tr>
								      <td>菜菜</td>
								      <td><span class="glyphicon glyphicon-heart xinicon"></span></td>
								      <td><span class="glyphicon glyphicon-star xingicon"></span></td>
								      <td><span class="glyphicon glyphicon-random othericon"></span></td>
								      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
								    </tr>
								    <tr>
								      <td>肥肥</td>
								      <td><span class="glyphicon glyphicon-heart xinicon"></span></td>
								      <td><span class="glyphicon glyphicon-star-empty xingicon"></span></td>
								      <td><span class="glyphicon glyphicon-random othericon"></span></td>
								      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
								    </tr>
								     <tr>
								      <td>菜菜</td>
								      <td><span class="glyphicon glyphicon-heart xinicon"></span></td>
								      <td><span class="glyphicon glyphicon-star xingicon"></span></td>
								      <td><span class="glyphicon glyphicon-random othericon"></span></td>
								      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
								    </tr>
								    <tr>
								      <td>肥肥</td>
								      <td><span class="glyphicon glyphicon-heart xinicon"></span></td>
								      <td><span class="glyphicon glyphicon-star-empty xingicon"></span></td>
								      <td><span class="glyphicon glyphicon-random othericon"></span></td>
								      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
								    </tr>
								     <tr>
								      <td>菜菜</td>
								      <td><span class="glyphicon glyphicon-heart xinicon"></span></td>
								      <td><span class="glyphicon glyphicon-star xingicon"></span></td>
								      <td><span class="glyphicon glyphicon-random othericon"></span></td>
								      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
								    </tr>
								    <tr>
								      <td>肥肥</td>
								      <td><span class="glyphicon glyphicon-heart xinicon"></span></td>
								      <td><span class="glyphicon glyphicon-star-empty xingicon"></span></td>
								      <td><span class="glyphicon glyphicon-random othericon"></span></td>
								      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
								    </tr>
								     <tr>
								      <td>菜菜</td>
								      <td><span class="glyphicon glyphicon-heart xinicon"></span></td>
								      <td><span class="glyphicon glyphicon-star xingicon"></span></td>
								      <td><span class="glyphicon glyphicon-random othericon"></span></td>
								      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
								    </tr>
								    <tr>
								      <td>肥肥</td>
								      <td><span class="glyphicon glyphicon-heart xinicon"></span></td>
								      <td><span class="glyphicon glyphicon-star-empty xingicon"></span></td>
								      <td><span class="glyphicon glyphicon-random othericon"></span></td>
								      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
								    </tr>
								     <tr>
								      <td>菜菜</td>
								      <td><span class="glyphicon glyphicon-heart xinicon"></span></td>
								      <td><span class="glyphicon glyphicon-star xingicon"></span></td>
								      <td><span class="glyphicon glyphicon-random othericon"></span></td>
								      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
								    </tr>
								    <tr>
								      <td>肥肥</td>
								      <td><span class="glyphicon glyphicon-heart xinicon"></span></td>
								      <td><span class="glyphicon glyphicon-star-empty xingicon"></span></td>
								      <td><span class="glyphicon glyphicon-random othericon"></span></td>
								      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
								    </tr>
								     <tr>
								      <td>菜菜</td>
								      <td><span class="glyphicon glyphicon-heart xinicon"></span></td>
								      <td><span class="glyphicon glyphicon-star xingicon"></span></td>
								      <td><span class="glyphicon glyphicon-random othericon"></span></td>
								      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
								    </tr>
								    <tr>
								      <td>肥肥</td>
								      <td><span class="glyphicon glyphicon-heart xinicon"></span></td>
								      <td><span class="glyphicon glyphicon-star-empty xingicon"></span></td>
								      <td><span class="glyphicon glyphicon-random othericon"></span></td>
								      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
								    </tr>
								     <tr>
								      <td>菜菜</td>
								      <td><span class="glyphicon glyphicon-heart xinicon"></span></td>
								      <td><span class="glyphicon glyphicon-star xingicon"></span></td>
								      <td><span class="glyphicon glyphicon-random othericon"></span></td>
								      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
								    </tr>
								    <tr>
								      <td>肥肥</td>
								      <td><span class="glyphicon glyphicon-heart xinicon"></span></td>
								      <td><span class="glyphicon glyphicon-star-empty xingicon"></span></td>
								      <td><span class="glyphicon glyphicon-random othericon"></span></td>
								      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
								    </tr>
								   
								  </tbody>
							</table>
						</div>
						<a class="btn btn-danger adduser">添加用户</a>
						
					</div>
					<!--管理员账号界面-->
					<div class="administrator_account" style="display: none;">
						<div>管理员账号信息</div>
						<table class="table table-hover">
						  <thead class="property">
						    <tr>
						      <td>用户名</td>
						      <td>密码</td>
						      <td>其他操作</td>
						      <td>删除</td>
						    </tr>
						  </thead>
						  <tbody>
						    <tr class="success">
						      <td>菜菜</td>
						      <td>caicai</td>
						      <td><span class="glyphicon glyphicon-random othericon"></span></td>
						      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
						    </tr>
						    <tr class="warning">
						      <td>肥肥</td>
						      <td>feifei</td>
						      <td><span class="glyphicon glyphicon-random othericon"></span></td>
						      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
						    </tr>
						    <tr class="success">
						      <td>Aow</td>
						      <td>aow</td>
						      <td><span class="glyphicon glyphicon-random othericon"></span></td>
						      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
						    </tr>
						     <tr class="warning">
						      <td>熊猫</td>
						      <td>xiongmao</td>
						      <td><span class="glyphicon glyphicon-random othericon"></span></td>
						      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
						    </tr>
						     <tr class="success">
						      <td>香宝宝</td>
						      <td>xiangbaobao</td>
						      <td><span class="glyphicon glyphicon-random othericon"></span></td>
						      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
						    </tr>
						     
						     <tr class="warning">
						      <td>560001</td>
						      <td>05:11</td>
						      <td><span class="glyphicon glyphicon-random othericon"></span></td>
						      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
						    </tr>
						    <tr class="success">
						      <td>560001</td>
						      <td>05:11</td>
						      <td><span class="glyphicon glyphicon-random othericon"></span></td>
						      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
						    </tr>
						    <tr class="warning">
						      <td>560001</td>
						      <td>05:11</td>
						      <td><span class="glyphicon glyphicon-random othericon"></span></td>
						      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
						    </tr>
						    <tr class="success">
						      <td>560001</td>
						      <td>05:11</td>
						      <td><span class="glyphicon glyphicon-random othericon"></span></td>
						      <td><span class="glyphicon glyphicon-remove-sign deleteicon"></span></td>
						    </tr>
						    
						    
						  </tbody>
						</table>
							<a class="btn btn-info addadmin">添加管理员</a>
							<a href="${pageContext.request.contextPath}/pandaJSP/backstage_login.jsp" class="btn btn-danger tuichuadmin">退出登录</a>
						
						
					</div>
				</div>
			</div>	
		</div>
	</div>
</body>
</html>