<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no">
		<!--以移动设备为优先，屏幕和设备的屏幕保持一致，初始缩放为100% 禁止用户缩放-->
		<title>Panda音乐后台管理</title>
		<!--引入外部的bootstarp的css文件-->
		<link rel="stylesheet" type="text/css" href="css/bootstrapcaicai.css"/>
		<link rel="stylesheet" href="anniu/Font-Awesome/css/font-awesome.min.css"/>
		<link rel="stylesheet" href="anniu/css/build.css"/>
		<link rel="stylesheet" type="text/css" href="css/backstage_login.css"/>
		<!--先引入外部的jquery文件再引入外部的js文件-->
		<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
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
    	<div class="container-fluid">
    		<!-- LOGO -->
    		<div class="logo"><a href="login.jsp"><img src="img/38989505695571663.png" class="logo_login"/></a></div>
    		<div class="admin">
    			<div class="Panda_h1">Panda music后台</div>
    			<form action="../LoginServlet" method="post">
    				<ul class="admin_ul">
	    				<li><h3 class="text-muted">管理员登录</h3></li>
	    				<li>Admin login</li>
	    				<li class="divider" ></li>
	    				<li>用户名：</li>
	    				<li><input type="text" name="username" id="user_input" value='<%=usernamecookie == null ? "":usernamecookie %>' class="form-control"/></li>
	    				<li>密码：</li>
	    				<li><input type="password" name="pwd" id="paw_input" value='<%=pwdcookie == null ? "":pwdcookie %>'  class="form-control"/></li>
	    				<li >
	    					<div class="checkbox checkbox-info">
		                        <input id="checkbox4" class="styled" name="check_paw" type="checkbox" checked="checked">
		                        <label for="checkbox4">
		                           	 记住密码
		                        </label>
		                    </div>
	    				</li>
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
	    				<li id="false" style="display:<%=password_judge_value%>;">
	    					用户名或密码错误，请重新登录
	    				</li>
	    				<li><input type="submit" value="登录" class="btn btn-info btn1"/></li>
	  
	    			</ul>
    			</form>
    		</div>
    	</div>
 	</body>
</html>