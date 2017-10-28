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
	<link href="<%=basePath %>css/Brand story.css" type="text/css" rel="stylesheet">
	<script type="text/javascript" src="<%=basePath %>js/jquery-1.11.1.js"></script>
	<script type="text/javascript" src="<%=basePath %>js/Brand story.js"></script>
</head>
<body>

	<jsp:include page="head.jsp"></jsp:include>
	
	<div class="art-mid">
		<div class="left-side-nav">
			<h2>品牌故事</h2>
			<ul class="nav-list" id="nav1">
				<li>关于我们</li>
			</ul>
			<ul class="nav-list" id="nav2">
				<li>我们深信</li>
			</ul>
			<ul class="nav-list" id="nav3">
				<li>联系我们</li>
			</ul>
		</div>
		<div class="right-art">
			<ul>
				<li class="aboutus">
					<h2 id="div1">关于我们</h2>
					<p>
					<p>纯悦生活创立的初衷，是希望通过我们提供的优质产品，伴您度过快乐的健康旅程，共同创造和体会有品质的美好生活方式，轻松享有完美体态和活力感觉！</p>
				</li>
				<li class="aboutus">
					<h2 id="div2">我们深信</h2>
					<p>
					<p>良好生活方式的养成，并非一日一时的心血来潮，而是一个长久持续的坚持过程。</p>
				</li>
				<li class="li-section">
					<h2 id="div3">联系我们</h2>
					<ul>
						<li>地址：北京市朝阳区广渠门外31号</li>
						<li>邮编：100022</li>
						<li>客服电话：4000-550-306 / 15910200673</li>
						<li>客服时间：9:00 - 18:00</li>
						<li>合作：info@lovepurejoy.com</li>
						<li>招聘：hr@lovepurejoy.com</li>
					</ul>
				</li>
			</ul>
		</div>
	</div>

	<jsp:include page="bottom.jsp"></jsp:include>
</body>
</html>
