<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Document</title>
<link rel="stylesheet" href="<%=basePath%>css/submit.css">
<link rel="stylesheet" href="<%=basePath%>/font_address/iconfont.css">
<script src="<%=basePath %>js/jquery-1.11.1.js"></script>
</head>
<body>
	<div class="submit_page">
		<div class="flow">
			<ul class="flow_">
				<li>查看购物车<span></span></li>
				<li>确认订单<span></span></li>
				<li>付款<span></span></li>
				<li>完成订购<span></span></li>
			</ul>
		</div>
		<div class="submit_page_address">
			<h2>配送范围提示</h2>
			<p style="color: red;">减脂餐目前可配送 北京市。范围如下：</p>
			<br /> 北京市：五环区域内。不包含：门头沟区、房山区、顺义区、大兴区（亦庄可送）、怀柔区、平谷区、密云县、延庆县。
			<p>&nbsp;</p>
		</div>
		<div class="submit_page_confirm">
			<h2>确认收货地址</h2>
			<p>&nbsp;</p>
			<div class="submit_page_confirm_address">
				<i class="iconfont icon-dizhi"></i> <a class="newAddress" href="">
					<i class="iconfont icon-jiahao"></i> 添加新地址
				</a>
			</div>
		</div>
		<div class="submit_page_select">
			<h2>确认订单信息</h2>
			<table>
				<tr>
					<th class="order_product">产品</th>
					<th>单价(元)</th>
					<th>配送日期及时间</th>
					<th>数量</th>
					<th>小结</th>

				</tr>
				<c:forEach items="${cart.items}" var="it">
					<tr class="order_1">
						<td class="order_1_name"><img
							src="<%=basePath %>${it.goods.thumb_img}" alt=""> <span>${it.goods.name }</span></td>
						<td class="unitprice">${it.goods.price }</td>
						<td class="order_1_num">快递发货</td>
						<td class="order_1_sum">${it.count }</td>
						<td class="order_1_delete">${it.total }</td>
					</tr>
				</c:forEach>

			</table>
			<div class="briefsummary">
				小结:<span>￥${cart.totalCount }</span>
			</div>
			<div class="modification">
				<a href="${pageContext.request.contextPath }/cart/showCart">返回购物车修改</a>
			</div>
		</div>
		<div class="submit_order">
			<ul>
				<li>
					<div>给我们留言</div> <textarea type="text"
						placeholder="在此填写备注，请注意请不要在备注中指定配送日期、时间、配送方式、指定菜品等内容。如果您对此有疑问请联系客服"></textarea>
				</li>
			</ul>
			<div class="submit_order_right">
				<p>
					<span>商品总额：</span> <span><span>${cart.totalCount }</span>元</span>
				</p>
				<p>
					<span>优惠：</span> <span><span>-0.00</span>元</span>
				</p>
				<p>
					<span>配送费：</span> <span><span>0.00</span>元</span>
				</p>
				<div class="totalprice">
					<span>应付总额：</span> <span style="font-size: 24px;color: #6ba652;">￥${cart.totalCount }</span>
				</div>
				<input type="button" onclick="createBill()" value="提交订单" style="cursor:pointer">
			</div>
		</div>
	</div>
	<!-- 弹出添加地址菜单 -->
	<div class="global-cover" style="display:none;">
		<div class="address_frame">
			<h1>
				添加地址<i class="iconfont icon-guanbi"></i>
			</h1>
			<form action="">
				<ul>
					<li><label for="">收货人</label> <input type="text"></li>
					<li><label for="">手机</label> <input type="text"></li>
					<li><label for="">城市</label> <select name="" id=""></select> <select
						name="" id=""></select> <select name="" id=""></select></li>
					<li><label for="">详细地址</label> <input type="text"></li>
					<li style="height: 30px;margin-bottom: 32px;"><label for="">设置隐私</label>
						<label class="check" for=""><i
							class="iconfont icon-duihao1"></i></label></li>
				</ul>
				<input class="save" type="submit" value="保存">
			</form>
		</div>
	</div>

	
	<script>
		$(".newAddress").click(function() {
			$(".global-cover").css("display", "block");
			return false;
		})
		$(".icon-guanbi").click(function() {
			$(".global-cover").css("display", "none");
		})
		
		function createBill(){
			alert("提交成功");
			location.href="${pageContext.request.contextPath }/order/create";
		}
		
	</script>
</body>
</html>