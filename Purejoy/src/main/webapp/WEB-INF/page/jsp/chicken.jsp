<%@page import="com.purejoy.model.Goods"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	List<Goods> chickens = (List<Goods>) request.getAttribute("chickens");
	Goods c1 = chickens.get(0);
	Goods c2 = chickens.get(1);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Document</title>
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>css/ripper.css">
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>font/iconfont.css">
<script type="text/javascript" src="<%=basePath%>js/jquery-1.11.1.js"></script>
<script src='<%=basePath%>js/ripper.js'></script>
<link rel="stylesheet" href="<%=basePath%>css/shouye.css" />
<script src="<%=basePath%>js/shouye.js" type="text/javascript"
	charset="utf-8"></script>
</head>
<body>
	<jsp:include page="head.jsp"></jsp:include>
	<div class="ripper_cart">
		<div class="ripper_cart_left">
			<%-- <h1>
				<span class="ripper_cart_left_title"><%=c1.getChicken_name() %></span>
				<span class="ripper_cart_left_title"><%=c2.getChicken_name() %></span>
			</h1> --%>
			<a href="" class="ripper_cart_left_bigpic"> <img
				class="ripper_cart_left_bigpic_1"
				src="<%=basePath%><%=c1.getImg()%>"> <img
				class="ripper_cart_left_bigpic_2"
				src="<%=basePath%><%=c2.getImg()%>">
			</a>
			<ul class="ripper_cart_left_thumbnail">
				<li class="ripper_cart_left_thumbnail_1"><a><img
						src="<%=basePath%><%=c1.getImg()%>" alt=""></a></li>
				<li class="ripper_cart_left_thumbnail_2"><a><img
						src="<%=basePath%><%=c2.getImg()%>" alt=""></a></li>
			</ul>
		</div>
		<div class="ripper_cart_right">
			<div>
				<div class="ripper_cart_right_title">
					<div class="ripper_cart_right_title_name">名称</div>
					<div class="ripper_cart_right_title_content">
						<span><%=c1.getName()%></span> <span
							class="ripper_cart_left_thumbnail_2"><%=c2.getName()%></span>
					</div>
				</div>
				<div class="ripper_cart_right_txt">
					<div class="blank"></div>
					<div class="ripper_cart_right_txt_right">

						<span><%=c1.getDescription()%></span> <span
							class="ripper_cart_right_txt_right_2"><%=c2.getDescription()%></span>
						<br /> 高钾高蛋白低脂，健身人士减脂增肌的灵魂伴侣 <br /> 一套7份独立包装的鸡胸肉，每份100g； <br />
						全国配送，顺丰包邮，收货后请冷冻保存。

					</div>
				</div>
				<div class="ripper_cart_right_price">
					<div class="ripper_cart_right_title">价格</div>
					<div class="ripper_cart_right_num"><%=c1.getPrice()%></div>
					<div class="ripper_cart_right_symbol">/</div>
					<div class="ripper_cart_right_txt">
						<span><%=c1.getType()%></span> <span
							class="ripper_cart_right_txt_2"><%=c2.getType()%></span>
					</div>
				</div>
				<div class="ripper_cart_right_classify">
					<div class="ripper_cart_right_classify_txt">品类</div>
					<ul class="ripper_cart_right_classify_pic">
						<li class="ripper_cart_right_classify_pic_1"><img
							id="<%=c1.getId()%>" src="<%=basePath%><%=c1.getThumb_img()%>"
							alt=""><span><%=c1.getName()%><i></i></span></li>
						<li class="ripper_cart_right_classify_pic_2"><img
							id="<%=c2.getId()%>" src="<%=basePath%><%=c2.getThumb_img()%>"
							alt=""><span><%=c2.getName()%><i></i></span></li>
					</ul>
				</div>

				<form id="fm" action="<%=basePath%>cart/addcart" method="post"
					style="display: none;">
					<input type="text" value="21" name="id"> <input type="text"
						value="1" name="count">
				</form>

				<div class="ripper_cart_right_weight">
					<div class="ripper_cart_right_weight_blank"></div>
					<div class="ripper_cart_right_weight_content">7份装</div>
				</div>
				<div class="ripper_cart_right_number">
					<div class="ripper_cart_right_number_title">数量</div>
					<div class="ripper_cart_right_number_frame">
						<a class="minus">-</a> <input class="input_box" name="count"
							type="text" value="1"> <a class="plus">+</a>
					</div>
				</div>

			</div>
			<div class="ripper_cart_right_button">
				<a class="shop_cart" style="cursor: pointer"
					href="javascript:void(0)" onclick="addCart()"><i
					class="iconfont icon-jiajianzujianjiahao"
					style="font-weight: 700;font-size: 22px;"></i><span>加入购物车</span></a> <a
					class="settle_accounts" href="javascript:void(0)"><i
					class="iconfont icon-gouwuchekong" style="font-size: 22px;"></i><span>去结算</span></a>
			</div>
		</div>

	</div>
	<ul class="ripper_photo">
		<li class="ripper_photo_title"><a href="">商品详情</a></li>
		<li class="ripper_photo_banner"><img
			src="<%=basePath%>img/ripper1440.jpg" alt=""></li>
	</ul>
	<div class="ripper_side">
		<div class="ripper_side_icon">
			<a class="iconfont icon-xinxi" href=""></a> <a
				class="iconfont icon-gouwuchekong" href=""></a> <a
				class="iconfont icon-up1"></a>
		</div>

		<span class="ripper_side_txt_1">客服中心<i></i></span> <span
			class="ripper_side_txt_2">回到顶部<i></i></span>
		<%-- <div class="enter_cart">
			<i class="enter_cart_triangle"></i>
			<div class="enter_cart_goods">
				<div class="enter_cart_goods_item">
					<div>
						<img src="<%=basePath %>img/ripper_1(2).jpg" alt="">
					</div>
					<p class="enter_cart_goods_text">
						<span>撕裂者经典原味鸡胸肉</span> <span>￥98.6</span>
					</p>
					<span class="enter_cart_goods_num">x<i
						class="enter_cart_goods_num_">2</i></span>
				</div>
			</div>
			<p class="enter_cart_price">
				总计:￥<i class="enter_cart_price_">100.00</i>
			</p>
			<a href="" class="enter_cart_click"><i
				class='iconfont icon-gouwuchekong' style="font-size: 20px"></i>去结算</a>
		</div> --%>
	</div>
	<%-- <ul class="ripper_hang">
		<li class="ripper_hang_left">商品详情</li>
		<li class="ripper_hang_right"><i
			class="iconfont icon-jiajianzujianjiahao"></i> <span>加入购物车</span></li>
		<div class="ripper_hang_detail">
			<div class="ripper_cart_right_title">
				<div class="ripper_cart_right_title_name">名称</div>
				<div class="ripper_cart_right_title_content">
					<span>撕裂者经典原味鸡胸肉</span> <span class="ripper_cart_left_thumbnail_2">撕裂者辛香黑椒鸡胸肉</span>
				</div>
			</div>

			<div class="ripper_cart_right_price">
				<div class="ripper_cart_right_title">价格</div>
				<div class="ripper_cart_right_num">￥96.6</div>


			</div>
			<div class="ripper_cart_right_classify">
				<div class="ripper_cart_right_classify_txt">品类</div>
				<ul class="ripper_cart_right_classify_pic">
					<li class="ripper_cart_right_classify_pic_1"><img
						src="<%=basePath %>img/ripper_1(2).jpg" alt=""></li>
					<li class="ripper_cart_right_classify_pic_2"><img
						src="<%=basePath %>img/ripper_2(2).jpg" alt=""></li>
				</ul>
			</div>
			<div class="ripper_cart_right_weight">
				<div class="ripper_cart_right_weight_blank"></div>
				<div class="ripper_cart_right_weight_content">7份装</div>
			</div>
			<div class="ripper_cart_right_number">
				<div class="ripper_cart_right_number_title">数量</div>
				<div class="ripper_cart_right_number_frame">
					<a class="minus">-</a> <input class="input_box" type="text"
						value="1"> <a class="plus">+</a>
				</div>
			</div>
			<div class="ripper_hang_detail_btn">
				<a href="">确定</a> <a href="">取消</a>
			</div>

		</div>
	</ul> --%>

	<jsp:include page="bottom.jsp"></jsp:include>

</body>
<script type="text/javascript">
	function addCart() {
		alert("加入购物车成功");
		var fm = document.getElementById("fm");
		fm.submit();
	}
</script>
</html>