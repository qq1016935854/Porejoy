<%@page import="com.purejoy.model.Articles"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	
	List<Articles> articles = (List<Articles>) request.getAttribute("articles");
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>最新活动</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<link href="<%=basePath %>css/Latest activities.css" type="text/css" rel="stylesheet">
	<script  type="text/javascript" src="<%=basePath %>js/jquery-1.11.1.js"></script>
	<script type="text/javascript" src="<%=basePath %>js/bootstrap.js"></script>
</head>
<body>
<div class="nav">
	<div class="navmid">
		<div class="nav1">
			<a href="<%=basePath %>/index">纯悦生活丨健康生活方式</a>
		</div>
		<div class="nav2">
			<a href="">购买减脂餐</a>
			<a href="">微博</a>
		</div>
	</div>
</div>
<div class="article">
	<c:forEach items="${articles }" var="a" >
	<div class="article1">
		<div class="article2">
			<div class="art-head">
				<h2>${a.title }</h2>
				<hr class="divider"></hr>
			</div>
		</div>
		<div class="art-img1">
			
			<p class="one">
				<a href="<%=basePath %>${a.url }">
					<img src="<%=basePath %>${a.img }">
				</a>
			</p>
			<p class="two">${a.title }</p>
			
			<hr class="divider1"></hr>
		</div>
	</div>
	</c:forEach>
</div>
<div class="footer">
	<div class="footer1">
		<p class="footer-l"><span>更早的活动</span></p>
		<p class="footer-r">第1 / 5页</p>
	</div>
</div>
<div class="lastfoot">
	<p><span>纯悦生活丨健康生活方式</span> &copy; 2017-All Rights Reserved</p>
</div>
</body>
</html>
