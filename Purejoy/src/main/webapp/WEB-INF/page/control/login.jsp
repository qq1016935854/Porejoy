<%@ page pageEncoding="utf-8"%>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
	String error = (String) request.getAttribute("error");
%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit" />
<title></title>
<link rel="stylesheet" href="<%=basePath%>css/pintuer.css" />
<link rel="stylesheet" href="<%=basePath%>css/wo.engine.css" />
<script src="<%=basePath%>js/jquery.js"></script>
<script src="<%=basePath%>js/jquery.form.min.js"></script>
<script src="<%=basePath%>js/pintuer.js"></script>
<script src="<%=basePath%>js/respond.js"></script>
<script src="<%=basePath%>js/wo.engine.js"></script>
<link type="text/css" rel="stylesheet"
	href="<%=basePath%>css/login.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>font/iconfont.css">
<script type="text/javascript" src="<%=basePath%>js/jquery-1.11.1.js"></script>
<script type="text/javascript" src="<%=basePath%>js/login.js"></script>
<script>
	$(document).ready(function() {
		pintuer();
		$(document).on('click', WoKit.hideDropMenu);
	});
</script>
<link type="image/x-icon" href="http://www.pintuer.com/favicon.ico"
	rel="shortcut icon" />
<link href="http://www.pintuer.com/favicon.ico" rel="bookmark icon" />
</head>
<body>
	<div class="loginpage">
		<div class="header">
			<div class="logo">
				<img src="<%=basePath%>img/logo.png" width="134" height="80">
			</div>
		</div>
		<div class="login-wrap">
			<div class="loginin">
				<form class="login" action="<%=basePath%>admin/login" method="post">
					<input type="hidden" name="form_url">
					<ul>
						<li><input type="text" name="username" placeholder="用户名"
							class="username"></li>
						<i class="iconfont icon-yonghuming user11"></i>
						<li><input type="password" name="password" placeholder="密码"
							class="password"></li>
						<i class="iconfont icon-mima user22"></i>
						<li><input type="submit" value="登录" class="submit"><span
							class="text-red">${error}</span></li>
					</ul>
				</form>
			</div>
</body>
</html>