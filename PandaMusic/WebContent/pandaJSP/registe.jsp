<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Panda Music注册</title>
		<link rel="stylesheet" type="text/css" href="css/registe.css"/>
		<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
		<script type="text/javascript" src="js/registe.js"></script>
		
	</head>
	<body>
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
				<div class="centercenter">
					<div class="icon1" style="display: none;"></div>
					<div class="icon2" style="display: none;"></div>
					<div class="icon3" style="display: none;"></div>
					<div class="icon4" style="display: none;"></div>
					<div class="icon5" style="display: none;"></div>
					<div class="zhuce">
						<h1>Panda Music注册</h1>
						<ul>
							<li><input type="text"  id="username"  required  pattern="[a-zA-Z0-9\u4e00-\u9fa5]{4,20}"/><font class="name">用户名</font></li>
							<li><input type="text"  id="phone"  required pattern="1[0-9]{10}"/><font class="phonevalue">邮箱</font></li>
							<li><input type="text"  id="verify"  /><font class="duanxingvalue">邮箱验证码</font><span id="yzm1" >获取验证码</span><a href="" id="yzm2" style="display: none;">获取验证码</a></li>
							<li><input type="password"  id="pwd"  required pattern="1[0-9]{10}"/><font class="pwdvalue">设置密码</font></li>
							<li><input type="password"  id="repwd"  required/><font class="repwdvalue">确认密码</font></li>
							<li class="li3">点击注册，表示您同意熊猫 <a href="" class="xieyi">《服务协议及隐私声明》</a></li>
							<li class="li4"><a href="#" type="submit" class="tongyi">同意协议并注册</a></li>
						</ul>
						<!--//用户名检验-->
						<div class="usernameverify">
							<div class="focuname" style="display: none;">
								<ul>
									<li>4-20位字符，可由中文、英文、数字或符号组成</li>
									<li class="jiantou11"></li>
								</ul>
							</div>
							<div class="missname" style="display: none;">
								<ul>
									<li>用户名不能为空</li>
									<li class="jiantou21"></li>
								</ul>
							</div>
							<div class="errorname" style="display: none;">
								<ul>
									<li>用户名为4-20位字符，由中文、英文、数字或符号组成</li>
									<li class="jiantou31"></li>
								</ul>
							</div>
						</div>
						
						<!--邮箱检验-->
						<div class="phoneverify">
							<div class="focuphone" style="display: none;">
								<ul>
									<li>请填写正确的邮箱,以便接收重要通知</li>
									<li class="jiantou12"></li>
								</ul>
							</div>
							<div class="missphone" style="display: none;">
								<ul>
									<li>邮箱不能为空</li>
									<li class="jiantou22"></li>
								</ul>
							</div>
							<div class="errorphone" style="display: none;">
								<ul>
									<li>邮箱格式错误，请输入正确的邮箱</li>
									<li class="jiantou32"></li>
								</ul>
							</div>
						</div>
						
						
						<!--密码检验-->
						<div class="pwdverify">
							<div class="focupwd" style="display: none;">
								<ul>
									<li>6-20个字母，数字或符号的组合</li>
									<li class="jiantou13"></li>
								</ul>
							</div>
							<div class="misspwd" style="display: none;">
								<ul>
									<li>密码不能为空</li>
									<li class="jiantou23"></li>
								</ul>
							</div>
							<div class="errorpwd" style="display: none;">
								<ul>
									<li>密码由6-20个字母，数字或符号组成</li>
									<li class="jiantou33"></li>
								</ul>
							</div>
						</div>
						
						<!--再次输入密码检验-->
						<div class="repwdverify">
							<div class="focurepwd" style="display: none;">
								<ul>
									<li>请再次输入密码</li>
									<li class="jiantou14"></li>
								</ul>
							</div>
							<div class="missrepwd" style="display: none;">
								<ul>
									<li>密码不能为空</li>
									<li class="jiantou24"></li>
								</ul>
							</div>
							<div class="errorrepwd" style="display: none;">
								<ul>
									<li>两次密码输入不相同，请重新输入</li>
									<li class="jiantou34"></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<!--结尾-->
			<div id="finally">
				<ul>
					<li><a href="">沪ICP备16050468号</a><font>|沪B2-20170039|</font><a href="">营业执照</a></li>
					<li>Copyright © 熊猫网上超市 2007-2017，All Rights Reserved</li>
				</ul>
			</div>
			
		</div>
	</body>
</html>
