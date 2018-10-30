<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Panda Music登录</title>
		<link rel="stylesheet" type="text/css" href="css/login.css"/>
		<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
		<script type="text/javascript" src="js/login.js"></script>
	</head>
	<body>
	<%
    	Cookie[] coos = request.getCookies();
  		String pwdcookie= null;
  		String usernamecookie= null;
		if(coos!=null){
			for(int j=0;j<coos.length;j++){
				//记住用户名
				for(int i=0;i<coos.length;i++){
					if(coos[i].getName().equals("username")){
						usernamecookie = coos[i].getValue();
					}
				}
				//如果记住密码有打勾
				if(coos[j].getName().equals("check")&&coos[j].getValue().equals("yes")){
						for(int i=0;i<coos.length;i++){
							if(coos[i].getName().equals("pwd")){
								pwdcookie = coos[i].getValue();
							}
						}
					}
				}
			}
		
		
		%>
		<%	String password_judge_value="none";
		                    if(coos!=null){
			    				for(int j=0;j<coos.length;j++){
			    					//如果密码输入错误
			    					if(coos[j].getName().equals("password_judge")&&coos[j].getValue().equals("false")){
			    							password_judge_value="block";
			    						}
			    					}
		                    }
	    %>

		<div class="contain">
			<!--头部-->
			<div class="header">
				<div class="logo">
					<ul>
						<li class="fl"><a href="home_page.jsp"><img src="img/38989505695571663.png" class="logo_login"/></a></li>
						<li class="fr li1"><a href="backstage_login.jsp">管理员登录</a></li>
						<li class="fr li2">您好，欢迎光临  <strong>Panda Music!</strong><a href="login.jsp">用户登录</a></li>
					</ul>
				</div>
			</div>
			<!--渐变边框-->
			<div class="backchange"></div>
			
			<!--中间-->
			<div class="center">
				<div class="left">
					<img src="img/panda_admin.jpg" class="panda_admin_jpg"/>
				</div>
				
				<div class="right">
					<form action="../LoginServlet_login" method="post" id="admin_form">
						<ul>
							<li><font>Panda Music用户登录</font> <a href="registe.jsp" class="zhucexzh">注册新账号</a> </li>
							<li><input type="text" name="username"  placeholder="用户名" value='<%=usernamecookie == null ? "":usernamecookie %>' class="input1"/></li>
							<li><input type="password" name="pwd"  placeholder="密码" value='<%=pwdcookie == null ? "":pwdcookie %>' class="input2"/></li>
							<li><div class="checkbox1"></div><input type="checkbox" id="checkbox1" name="check_paw" checked style="display:none;">记住密码<span id="qingwu" style="display:inline;">请勿在公用电脑上启用</span><a href="">忘记密码？</a> </li>
							<li id="false" style="display:<%=password_judge_value%>;">
	    						用户名或密码错误，请重新登录
	    					</li>
							<li class="admin_submit"><a id="admin" href="javascript:void(0)" onclick="document.getElementById('admin_form').submit()">登录</a></li>
							<li class="morehezuo">更多合作网站账号登录</li>
							<li class="otherweb">
								<a href=""><img src="img/20180903115858.png"/></a>
								<a href=""><img src="img/20180903120011.png"/></a>
								<a href=""><img src="img/20180903120051.png"/></a>
								<a href=""><img src="img/20180903120115.png"/></a>
								<span id="webspan">更多合作网站</span>
							</li>
							<li class="moreweb" style="display: none;">
								<a href=""><img src="img/20180903122532.png"/></a>
								<a href=""><img src="img/20180903122712.png"/></a>
								<a href=""><img src="img/20180903122648.png"/></a>
								<a href=""><img src="img/20180903122600.png"/></a>
								<a href=""><img src="img/20180903122625.png"/></a>
								<a href=""><img src="img/20180903122453.png"/></a>
							</li>
						</ul>
					</form>
					<!--结尾-->
					<div id="finally">
						<ul>
							<li><a href="">沪ICP备16050468号</a><font>|沪B2-20170039|</font><a href="">营业执照</a></li>
							<li>Copyright © 熊猫网上超市 2007-2017，All Rights Reserved</li>
						</ul>
					</div>
					<!--扫二维码-->
					<div class="">
						<div class="erweima"></div>
						<div class="em"></div>
					</div>
				</div>
			
			
				<div class="right2" style="display: none;">
					<div class="ewm">
						<img src="img/20180903150801.png"/>
					</div>
					<!--结尾-->
					<div id="finally2">
						<ul>
							<li><a href="">沪ICP备16050468号</a><font>|沪B2-20170039|</font><a href="">营业执照</a></li>
							<li>Copyright © 熊猫网上超市 2007-2017，All Rights Reserved</li>
						</ul>
					</div>
					<!--扫二维码-->
					<div class="">
						<em></em>
						<div class="computer"></div>
					</div>
				</div>
			</div>
		</div>
		
	</body>
</html>
