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
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>css/shop_cart.css">
<script src="<%=basePath%>js/jquery-1.11.1.js"></script>
<script type="text/javascript" src="<%=basePath%>js/shop_cart.js"></script>
</head>
<body>




	<div class="shop_cart">
		<div class="flow">
			<ul class="flow_">
				<li>查看购物车<span></span></li>
				<li>确认订单<span></span></li>
				<li>付款<span></span></li>
				<li>完成订购<span></span></li>
			</ul>
		</div>
		<div class="order">
			<h2>购物车</h2>
			<table>
				<tr>
					<th class="order_product">产品</th>
					<th>单价(元)</th>
					<th>数量</th>
					<th>小计</th>
					<th>操作</th>

				</tr>
				<c:forEach items="${cart.items}" var="it">
					<tr class="order_1" >
						<td class="order_1_name"><img
							src="<%=basePath%>${it.goods.thumb_img}" alt=""> <span>${it.goods.name }</span></td>
						<td class="unitprice">${it.goods.price }</td>
						<td class="order_1_num">
							<div class="num">
								<a href="javascript:void(0)"
									onclick="minus('${it.goods.id }','${it.count }','${it.goods.price }')">-</a> 
								<span id="goodsNum">${it.count }</span>
								<a href="javascript:void(0)"
									onclick="add('${it.goods.id }','${it.count  }','${it.goods.price }')">+</a>
							</div>
						</td>
						<td class="order_1_sum" id="subCount">${it.total }</td>
						<td class="order_1_delete" style="cursor: pointer;"><a
							href="javascript:void(0)" onclick="removeItem('${it.goods.id}')">删除</a></td>
					</tr>
				</c:forEach>
			</table>
			<div class="order_note">温馨提示：支付成功后，如对配送日期、时间等有额外具体要求，请致电客服：4000-550-306
				/ 15910200673</div>
			<div class="order_totall_cost">
				小结： <span id="totalCount">￥${cart.totalCount }</span>
			</div>
			<a class="order_accounts" href="${pageContext.request.contextPath }/user/bill">去结算</a>
		</div>
	</div>

	<script type="text/javascript">
		function removeItem(id) {
			if (confirm("是否要将该商品移除购物车")) {
	
				location.href = "${pageContext.request.contextPath }/cart/remove?id=" + id;
			}
		}
		function add(id, count) {
			
		}
		function minus(id, count) {
	
		}
	</script>
</body>
</html>
