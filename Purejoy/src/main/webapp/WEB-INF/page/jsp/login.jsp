<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Document</title>
<link type="text/css" rel="stylesheet" href="<%=basePath %>css/login.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath %>font/iconfont.css">
<script type="text/javascript" src="<%=basePath %>js/jquery-1.11.1.js"></script>
<script type="text/javascript" src="<%=basePath %>js/login.js"></script>

</head>
<body>
	<div class="loginpage">
		<div class="header">
			<div class="logo">
				<img src="<%=basePath %>img/logo.png" width="134" height="80">
			</div>
		</div>
		<div class="login-wrap">
			<div class="loginin">
				<form class="login" action="<%=basePath%>user/login" method="post">
					<input type="hidden" name="form_url">
					<ul>
						<li><input type="text" name="username" placeholder="邮箱或手机"
							class="username"></li>
						<i class="iconfont icon-yonghuming user11"></i>
						<li><input type="password" name="password" placeholder="密码"
							class="password"></li>
						<i class="iconfont icon-mima user22"></i>
						<li><input type="submit" value="登录" 
							class="submit"></li>
						<li><a class="forget" href="">忘记密码</a><a
							class="slideregistor">去注册</a></li>
					</ul>
				</form>
			</div>
			<div class="registorin">
				<form class="registor" action="<%=basePath%>user/register" method="post">
					<input name="form_url" type="hidden">
					<ul>
						<li><input type="text" name="username" placeholder="邮箱"
							class="username1"></li>
						<i class="iconfont icon-yonghuming user11"></i>
						<li><input type="password" name="password" placeholder="密码"
							class="password1"></li>
						<i class="iconfont icon-mima user22"></i>
						<li><input type="password" name="confirm-password"
							placeholder="确认密码" class="confirm-password"></li>
						<i class="iconfont icon-mima user33"></i>
						<li><input type="submit" value="注册" class="submit1"
							></li>
						<li><a class="slidelogin">去登录</a></li>
						<!-- <li class="third-party">
							<h4 class="legend">
								<span>使用第三方账号登录</span>
							</h4>
							<div class="third-party">
								<a><i class="iconfont icon-weixin user44"></i></a>
							</div>
						</li> -->
					</ul>
				</form>
			</div>
		</div>
	</div>
	<div class="check">
		<h1>
			<div class="delete">X</div>
		</h1>
		<p>用户名或密码错误,请重新登录</p>
		<div class="confirmbtn">确认</div>
	</div>
	<div class="allcolor"></div>
</body>
</html>
