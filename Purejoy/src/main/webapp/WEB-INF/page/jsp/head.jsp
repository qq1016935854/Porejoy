<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Document</title>

<link rel="stylesheet" href="<%=basePath%>css/shouye.css" />
<script src="<%=basePath%>js/jquery-1.11.1.js" type="text/javascript" charset="utf-8"></script>
<script src="<%=basePath%>js/shouye.js" type="text/javascript" charset="utf-8"></script>
</head>

<body>
	<div id="header">
		<div class="header_left">
			<img onclick="goIndex()" src="<%=basePath%>img/top1.png" />
		</div>
		<div class="header_mid">
			<ul id="header_list">
				<li onclick="goIndex()">首页</li>
				<li onclick="goFitnessfood()">减脂餐</li>
				<li onclick="goChicken()">撕裂者</li>
				<li onclick="goArticle()">最新活动</li>
				<li onclick="goBrand()">品牌故事</li>
			</ul>
		</div>
		<div class="header_right">
			<div class="header_rightdv">English</div>
			<div class="header_rightdv" onclick="goCart()" >购物车</div>
			<c:if test="${empty user}">
			<div class="header_rightdv">
				<button class="main_login" onclick="goLogin()">登录</button>
			</div>
			<div class="header_rightdv">
				<button class="main_login" onclick="goRegister()">注册</button>
			</div>
			</c:if>
			<c:if test="${not empty user}">
			<div class="header_rightdv">
				<button class="main_login" onclick="">我的纯悦</button>
			</div>
			<div class="header_rightdv">
				<button class="main_login" onclick="logout()">登出</button>
			</div>
			</c:if>
		</div>
	</div>
</body>
<script type="text/javascript">
	function goIndex() {
		location.href = "${pageContext.request.contextPath }";
	}
	function goFitnessfood() {
		location.href = "${pageContext.request.contextPath }/goods/fitnessfood"; 
		/* $.post("${pageContext.request.contextPath }/goods/fitnessfood", "", function(data, status) {
			alert(data);
		}); */
	}
	function goChicken() {
		location.href = "${pageContext.request.contextPath }/goods/chicken";
	}
	function goArticle() {
		location.href = "${pageContext.request.contextPath }/articles/list";
	}
	function goBrand() {
		location.href = "${pageContext.request.contextPath }/brand";
	}
	function goLogin() {
		location.href = "${pageContext.request.contextPath }/user/loadLoginForm";
	}
	function goRegister() {
		location.href = "${pageContext.request.contextPath }/user/loadLoginForm";
	}
	function goCart(){
		location.href = "${pageContext.request.contextPath }/cart/showcart";
	}
	function logout(){
		location.href = "${pageContext.request.contextPath }/user/logout"
	}
</script>
</html>

