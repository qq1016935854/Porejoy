<%@page import="com.purejoy.model.Goods"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
	+ path + "/";

	List<Goods> fitnessfoods = (List<Goods>) request.getAttribute("fitnessfoods");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Document</title>
<script type="text/javascript" src="<%=basePath%>js/jquery-1.11.1.js"></script>
<script type="text/javascript" src="<%=basePath%>js/get-lean-dest.js"></script>
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/get-lean-dest.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/iconfont.css">
<link rel="stylesheet" href="<%=basePath%>css/shouye.css" />
<script src="<%=basePath%>js/shouye.js" type="text/javascript" charset="utf-8"></script>
</head>
<body>
	<jsp:include page="head.jsp"></jsp:include>
	<div class="side">
		<a title="回到顶部" class="back-top"> <i class="iconfont icon-shouqi"></i>
			<span class="pop-out"> <span class="text">回到顶部</span> <i
				class="arrow"></i>
		</span>
		</a> <a class="service" title="纯悦生活客服中心"> <i
			class="iconfont icon-buchongiconsvg02"></i> <span class="pop-out">
				<span class="text">客服中心</span> <i class="arrow"></i>
		</span>
		</a>
		<div class="side-shop">
			<i class="iconfont icon-qicheqianlian-"></i>

		</div>
	</div>
	<div class="show">
		<div class="show_center">
			<div class="left-content">
				<h1 class="head1">
					<span class="title"> 健康减脂餐 </span> <span class="title-desc">
						Freshly Prepared Daily! </span>
				</h1>
				<div class="sku-slider">
					<ul id="big-img">
						<li class="dest-li"><img src="img/meal_3days.jpg" title=""
							alt="" /></li>
						<li class="dest-li"><img src="img/meal_week.jpg" title=""
							alt="" /></li>
						<li class="dest-li"><img src="img/meal_month2.jpg" title=""
							alt="" /></li>
						<li class="dest-li"><img src="img/meal_season.jpg" title=""
							alt="" /></li>
					</ul>
				</div>
				<ul class="dest">
					<li id="" class="dest-li-1"><img src="img/meal_3days.jpg"
						title="" alt="" /></li>
					<li class="dest-li-1"><img src="img/meal_week.jpg" title=""
						alt="" /></li>
					<li class="dest-li-1"><img src="img/meal_month2.jpg" title=""
						alt="" /></li>
					<li class="dest-li-1"><img src="img/meal_season.jpg" title=""
						alt="" /></li>
				</ul>
			</div>
			<div class="right-content">
				<div class="dest-desc">
					<div class="desc-titnam">
						<div class="desc-name">名称</div>
						<div class="desc-title">专业健康减脂餐&nbsp;3日装</div>
					</div>
					<div class="dest-text">
						<p class="fir-text">健康饮食习惯的养成需要时间，自律并没有那么困难，坚信自己值得更好。</p>
						<p class="sec-text">周一至周五，餐单不重样；每天4餐（早中晚餐和加餐），当日制作并配送；安心食材，科学烹饪，助您科学减脂。</p>
						<p class="thr-text">13点前下单，第二天新鲜送达；可选配送时间段为早8:00-10:30，一次性配送当天全部4餐。周末不配送。如有特殊配送需求，请下单后与客服联系。</p>
						<p class="fou-text">目前暂不支持菜品替换或餐单定制，敬请谅解！</p>
					</div>
					<div class="desc-price">
						<div class="desc-name">价格</div>
						<div class="desc-pri">
							<span class="rmb">￥</span><span class="pri-val">414</span><span
								class="pri-em">/</span> <span class="pri-tim">3日装</span>
						</div>
					</div>
					<div class="desc-fba">
						<div class="desc-name">配送</div>
						<div class="fba-context">每日 新鲜制作，免费配送到家</div>
					</div>
					<div class="desc-kind">
						<div class="desc-name">品类</div>
						<ul class="kind-context">
							<li><img src="img/meal_3days1.jpg"> <span
								class="title-name">专业健身减脂餐 3日装</span></li>
							<li><img src="img/meal_week1.jpg"><span
								class="title-name">专业健身减脂餐 3日装</span></li>
							<li><img src="img/meal_month21.jpg"><span
								class="title-name">专业健身减脂餐 3日装</span></li>
							<li><img src="img/meal_season1.jpg"><span
								class="title-name">专业健身减脂餐 3日装</span></li>
						</ul>
					</div>
					<div class="desc-peo">
						<span class="peo-man">男生版</span> <span class="peo-woman">女生版</span>
					</div>
					<div class="desc-num">
						<div class="desc-name">数量</div>
						<div class="num-chan">
							<div class="num-dec iconfont icon-jianhao" id="num-dec"></div>
							<input type="text" name="" value="1" class="num">
							<div class=" num-add iconfont icon-jiahao" id="num-add"></div>
						</div>
					</div>
				</div>
				<div class="shop-btn">
					<div class="left-btn">
						<span class="iconfont icon-jiahao"></span> <span class="shopping">加入购物车</span>
					</div>
					<div class="right-btn">
						<span class="iconfont icon-qicheqianlian-"></span> <span
							class="pay ">去结算</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="mid">
		<div class="mid-line">
			<ul id="line">
				<li>商品详情</li>
				<li>本周餐单</li>
				<li>下周餐单</li>
				<li id="ques"><a href="http://www.baidu.com">常见问题</a></li>
			</ul>
			<div class="add-shop">
				<span class="iconfont icon-jiahao"></span> <span class="shopping">加入购物车</span>
				<div class="shop-title">
					<div class="shop-name">
						<div class="shop-fon">名称</div>
						<div class="shop-desc">专业健身减脂餐&nbsp;3日装</div>
					</div>
					<div class="shop-prices">
						<div class="price-fon">价格</div>
						<div class="price">
							￥<i>384</i>
						</div>
					</div>
					<div class="shop-kind">
						<div class="kind-fon">品类</div>
						<ul class="kind">
							<li class="kind-li"><img src="img/meal_3days.jpg" title=""
								alt="" /></li>
							<li class="kind-li"><img src="img/meal_week.jpg" title=""
								alt="" /></li>
							<li class="kind-li"><img src="img/meal_month2.jpg" title=""
								alt="" /></li>
							<li class="kind-li"><img src="img/meal_season.jpg" title=""
								alt="" /></li>
						</ul>
					</div>
					<div class="desc-peo">
						<span class="peo-man">男生版</span> <span class="peo-woman">女生版</span>
					</div>
					<div class="desc-num">
						<div class="desc-name">数量</div>
						<div class="num-chan">
							<div class="num-dec iconfont icon-jianhao" id="num-dec"></div>
							<input type="text" name="" value="1" class="num">
							<div class=" num-add iconfont icon-jiahao" id="num-add"></div>
						</div>
					</div>
					<div class="dialog-button">
						<a class="shopp"> 确定 </a> <a class="cancle"> 取消 </a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="content" id="content">
		<div class="content-1">
			<img src="img/meal_02.jpg"
				alt="纯悦生活purejoy - 轻体餐 - 健身餐 - 专业减脂餐 - Fitness Food减脂餐 瘦身餐 健身餐" />
			<img src="img/newmenu1000b.jpg"
				alt="纯悦生活purejoy - 轻体餐 - 健身餐 - 专业减脂餐 - Fitness Food减脂餐 瘦身餐 健身餐" />
			<img src="img/meal_05.jpg"
				alt="纯悦生活purejoy - 轻体餐 - 健身餐 - 专业减脂餐 - Fitness Food减脂餐 瘦身餐 健身餐" />
			<img src="img/meal_11.jpg"
				alt="纯悦生活purejoy - 轻体餐 - 健身餐 - 专业减脂餐 - Fitness Food减脂餐 瘦身餐 健身餐" />
			<div class="qa">
				<h1>
					Q<span>&</span>A
				</h1>
				<ol>
					<li>
						<p class="question">纯悦生活专业健身减脂餐适合哪些人群？</p>
						<p class="answer">适合一切有减脂、减重需求的人。俗话说：“七分吃，三分练”，合理膳食对于获得良好体态的重要性不言而喻；如果你恰好有每周规律健身
							1-3 次的好习惯，减脂塑形的效果会更好！</p>
					</li>
					<li>
						<p class="question">纯悦生活专业健身减脂餐适合哪些人群？</p>
						<p class="answer">适合一切有减脂、减重需求的人。俗话说：“七分吃，三分练”，合理膳食对于获得良好体态的重要性不言而喻；如果你恰好有每周规律健身
							1-3 次的好习惯，减脂塑形的效果会更好！</p>
					</li>
					<li>
						<p class="question">纯悦生活专业健身减脂餐适合哪些人群？</p>
						<p class="answer">适合一切有减脂、减重需求的人。俗话说：“七分吃，三分练”，合理膳食对于获得良好体态的重要性不言而喻；如果你恰好有每周规律健身
							1-3 次的好习惯，减脂塑形的效果会更好！</p>
					</li>
				</ol>
			</div>
		</div>
		<div class="content-2">
			<div class="section-title">
				<div class="name">本周餐单</div>
				<h2 class="title">
					<span>MOUDAY周一</span> <img src="img/male.png" />
				</h2>
				<p class="day-cal">总热量：1514.44kcal</p>
				<p class="day-cal">=微波中火加热一分钟(建议)</p>
				<p class="day-cal">请取出调料盒后再加热</p>
			</div>
			<div class="section-content">
				<div class="sec-left">
					<ul>
						<li>
							<p class="meal">早餐
							<p>
							<p class="meal-con">彩虹科布沙拉</p>
						</li>
						<li>
							<p class="meal">午餐
							<p>
							<p class="meal-con">煎龙利鱼配紫甘蓝与土豆</p>
						</li>
						<li>
							<p class="meal">晚餐
							<p>
							<p class="meal-con">鸡胸配鹰嘴豆与紫薯泥</p>
						</li>
						<li>
							<p class="meal">加餐
							<p>
							<p class="meal-con">蜂蜜烤吐司配腰果</p>
						</li>
					</ul>
				</div>
				<div class="sec-right">
					<table>
						<tr>
							<td class="heat">热量</td>
							<td class="heat">蛋白(g)</td>
							<td class="heat">脂肪(g)</td>
							<td class="heat">碳水(g)</td>
						</tr>
						<tr>
							<td><span class="number color-1">361</span></td>
							<td><span class="number color-1">34.8</span></td>
							<td><span class="number color-1">16.2</span></td>
							<td><span class="number color-1">18.3</span></td>
						</tr>
						<tr>
							<td><span class="number color-2">361</span></td>
							<td><span class="number color-2">34.8</span></td>
							<td><span class="number color-2">16.2</span></td>
							<td><span class="number color-2">18.3</span></td>
						</tr>
						<tr>
							<td><span class="number color-3">361</span></td>
							<td><span class="number color-3">34.8</span></td>
							<td><span class="number color-3">16.2</span></td>
							<td><span class="number color-3">18.3</span></td>
						</tr>
						<tr>
							<td><span class="number color-4">361</span></td>
							<td><span class="number color-4">34.8</span></td>
							<td><span class="number color-4">16.2</span></td>
							<td><span class="number color-4">18.3</span></td>
						</tr>
					</table>
				</div>
			</div>
			<div class="section-title">
				<div class="name">本周餐单</div>
				<h2 class="title">
					<span>MOUDAY周一</span> <img src="img/male.png" />
				</h2>
				<p class="day-cal">总热量：1514.44kcal</p>
				<p class="day-cal">=微波中火加热一分钟(建议)</p>
				<p class="day-cal">请取出调料盒后再加热</p>
			</div>
			<div class="section-content">
				<div class="sec-left">
					<ul>
						<li>
							<p class="meal">早餐
							<p>
							<p class="meal-con">彩虹科布沙拉</p>
						</li>
						<li>
							<p class="meal">午餐
							<p>
							<p class="meal-con">煎龙利鱼配紫甘蓝与土豆</p>
						</li>
						<li>
							<p class="meal">晚餐
							<p>
							<p class="meal-con">鸡胸配鹰嘴豆与紫薯泥</p>
						</li>
						<li>
							<p class="meal">加餐
							<p>
							<p class="meal-con">蜂蜜烤吐司配腰果</p>
						</li>
					</ul>
				</div>
				<div class="sec-right">
					<table>
						<tr>
							<td class="heat">热量</td>
							<td class="heat">蛋白(g)</td>
							<td class="heat">脂肪(g)</td>
							<td class="heat">碳水(g)</td>
						</tr>
						<tr>
							<td><span class="number color-1">361</span></td>
							<td><span class="number color-1">34.8</span></td>
							<td><span class="number color-1">16.2</span></td>
							<td><span class="number color-1">18.3</span></td>
						</tr>
						<tr>
							<td><span class="number color-2">361</span></td>
							<td><span class="number color-2">34.8</span></td>
							<td><span class="number color-2">16.2</span></td>
							<td><span class="number color-2">18.3</span></td>
						</tr>
						<tr>
							<td><span class="number color-3">361</span></td>
							<td><span class="number color-3">34.8</span></td>
							<td><span class="number color-3">16.2</span></td>
							<td><span class="number color-3">18.3</span></td>
						</tr>
						<tr>
							<td><span class="number color-4">361</span></td>
							<td><span class="number color-4">34.8</span></td>
							<td><span class="number color-4">16.2</span></td>
							<td><span class="number color-4">18.3</span></td>
						</tr>
					</table>
				</div>
			</div>
			<div class="section-title">
				<div class="name">本周餐单</div>
				<h2 class="title">
					<span>MOUDAY周一</span> <img src="img/male.png" />
				</h2>
				<p class="day-cal">总热量：1514.44kcal</p>
				<p class="day-cal">=微波中火加热一分钟(建议)</p>
				<p class="day-cal">请取出调料盒后再加热</p>
			</div>
			<div class="section-content">
				<div class="sec-left">
					<ul>
						<li>
							<p class="meal">早餐
							<p>
							<p class="meal-con">彩虹科布沙拉</p>
						</li>
						<li>
							<p class="meal">午餐
							<p>
							<p class="meal-con">煎龙利鱼配紫甘蓝与土豆</p>
						</li>
						<li>
							<p class="meal">晚餐
							<p>
							<p class="meal-con">鸡胸配鹰嘴豆与紫薯泥</p>
						</li>
						<li>
							<p class="meal">加餐
							<p>
							<p class="meal-con">蜂蜜烤吐司配腰果</p>
						</li>
					</ul>
				</div>
				<div class="sec-right">
					<table>
						<tr>
							<td class="heat">热量</td>
							<td class="heat">蛋白(g)</td>
							<td class="heat">脂肪(g)</td>
							<td class="heat">碳水(g)</td>
						</tr>
						<tr>
							<td><span class="number color-1">361</span></td>
							<td><span class="number color-1">34.8</span></td>
							<td><span class="number color-1">16.2</span></td>
							<td><span class="number color-1">18.3</span></td>
						</tr>
						<tr>
							<td><span class="number color-2">361</span></td>
							<td><span class="number color-2">34.8</span></td>
							<td><span class="number color-2">16.2</span></td>
							<td><span class="number color-2">18.3</span></td>
						</tr>
						<tr>
							<td><span class="number color-3">361</span></td>
							<td><span class="number color-3">34.8</span></td>
							<td><span class="number color-3">16.2</span></td>
							<td><span class="number color-3">18.3</span></td>
						</tr>
						<tr>
							<td><span class="number color-4">361</span></td>
							<td><span class="number color-4">34.8</span></td>
							<td><span class="number color-4">16.2</span></td>
							<td><span class="number color-4">18.3</span></td>
						</tr>
					</table>
				</div>
			</div>
			<div class="section-title">
				<div class="name">本周餐单</div>
				<h2 class="title">
					<span>MOUDAY周一</span> <img src="img/male.png" />
				</h2>
				<p class="day-cal">总热量：1514.44kcal</p>
				<p class="day-cal">=微波中火加热一分钟(建议)</p>
				<p class="day-cal">请取出调料盒后再加热</p>
			</div>
			<div class="section-content">
				<div class="sec-left">
					<ul>
						<li>
							<p class="meal">早餐
							<p>
							<p class="meal-con">彩虹科布沙拉</p>
						</li>
						<li>
							<p class="meal">午餐
							<p>
							<p class="meal-con">煎龙利鱼配紫甘蓝与土豆</p>
						</li>
						<li>
							<p class="meal">晚餐
							<p>
							<p class="meal-con">鸡胸配鹰嘴豆与紫薯泥</p>
						</li>
						<li>
							<p class="meal">加餐
							<p>
							<p class="meal-con">蜂蜜烤吐司配腰果</p>
						</li>
					</ul>
				</div>
				<div class="sec-right">
					<table>
						<tr>
							<td class="heat">热量</td>
							<td class="heat">蛋白(g)</td>
							<td class="heat">脂肪(g)</td>
							<td class="heat">碳水(g)</td>
						</tr>
						<tr>
							<td><span class="number color-1">361</span></td>
							<td><span class="number color-1">34.8</span></td>
							<td><span class="number color-1">16.2</span></td>
							<td><span class="number color-1">18.3</span></td>
						</tr>
						<tr>
							<td><span class="number color-2">361</span></td>
							<td><span class="number color-2">34.8</span></td>
							<td><span class="number color-2">16.2</span></td>
							<td><span class="number color-2">18.3</span></td>
						</tr>
						<tr>
							<td><span class="number color-3">361</span></td>
							<td><span class="number color-3">34.8</span></td>
							<td><span class="number color-3">16.2</span></td>
							<td><span class="number color-3">18.3</span></td>
						</tr>
						<tr>
							<td><span class="number color-4">361</span></td>
							<td><span class="number color-4">34.8</span></td>
							<td><span class="number color-4">16.2</span></td>
							<td><span class="number color-4">18.3</span></td>
						</tr>
					</table>
				</div>
			</div>
			<div class="section-title">
				<div class="name">本周餐单</div>
				<h2 class="title">
					<span>MOUDAY周一</span> <img src="img/male.png" />
				</h2>
				<p class="day-cal">总热量：1514.44kcal</p>
				<p class="day-cal">=微波中火加热一分钟(建议)</p>
				<p class="day-cal">请取出调料盒后再加热</p>
			</div>
			<div class="section-content">
				<div class="sec-left">
					<ul>
						<li>
							<p class="meal">早餐
							<p>
							<p class="meal-con">彩虹科布沙拉</p>
						</li>
						<li>
							<p class="meal">午餐
							<p>
							<p class="meal-con">煎龙利鱼配紫甘蓝与土豆</p>
						</li>
						<li>
							<p class="meal">晚餐
							<p>
							<p class="meal-con">鸡胸配鹰嘴豆与紫薯泥</p>
						</li>
						<li>
							<p class="meal">加餐
							<p>
							<p class="meal-con">蜂蜜烤吐司配腰果</p>
						</li>
					</ul>
				</div>
				<div class="sec-right">
					<table>
						<tr>
							<td class="heat">热量</td>
							<td class="heat">蛋白(g)</td>
							<td class="heat">脂肪(g)</td>
							<td class="heat">碳水(g)</td>
						</tr>
						<tr>
							<td><span class="number color-1">361</span></td>
							<td><span class="number color-1">34.8</span></td>
							<td><span class="number color-1">16.2</span></td>
							<td><span class="number color-1">18.3</span></td>
						</tr>
						<tr>
							<td><span class="number color-2">361</span></td>
							<td><span class="number color-2">34.8</span></td>
							<td><span class="number color-2">16.2</span></td>
							<td><span class="number color-2">18.3</span></td>
						</tr>
						<tr>
							<td><span class="number color-3">361</span></td>
							<td><span class="number color-3">34.8</span></td>
							<td><span class="number color-3">16.2</span></td>
							<td><span class="number color-3">18.3</span></td>
						</tr>
						<tr>
							<td><span class="number color-4">361</span></td>
							<td><span class="number color-4">34.8</span></td>
							<td><span class="number color-4">16.2</span></td>
							<td><span class="number color-4">18.3</span></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<div class="content-3">
			<div class="section-title">
				<div class="name">本周餐单</div>
				<h2 class="title">
					<span>MOUDAY周一</span> <img src="img/male.png" />
				</h2>
				<p class="day-cal">总热量：1514.44kcal</p>
				<p class="day-cal">=微波中火加热一分钟(建议)</p>
				<p class="day-cal">请取出调料盒后再加热</p>
			</div>
			<div class="section-content">
				<div class="sec-left">
					<ul>
						<li>
							<p class="meal">早餐
							<p>
							<p class="meal-con">彩虹科布沙拉</p>
						</li>
						<li>
							<p class="meal">午餐
							<p>
							<p class="meal-con">煎龙利鱼配紫甘蓝与土豆</p>
						</li>
						<li>
							<p class="meal">晚餐
							<p>
							<p class="meal-con">鸡胸配鹰嘴豆与紫薯泥</p>
						</li>
						<li>
							<p class="meal">加餐
							<p>
							<p class="meal-con">蜂蜜烤吐司配腰果</p>
						</li>
					</ul>
				</div>
				<div class="sec-right">
					<table>
						<tr>
							<td class="heat">热量</td>
							<td class="heat">蛋白(g)</td>
							<td class="heat">脂肪(g)</td>
							<td class="heat">碳水(g)</td>
						</tr>
						<tr>
							<td><span class="number color-1">361</span></td>
							<td><span class="number color-1">34.8</span></td>
							<td><span class="number color-1">16.2</span></td>
							<td><span class="number color-1">18.3</span></td>
						</tr>
						<tr>
							<td><span class="number color-2">361</span></td>
							<td><span class="number color-2">34.8</span></td>
							<td><span class="number color-2">16.2</span></td>
							<td><span class="number color-2">18.3</span></td>
						</tr>
						<tr>
							<td><span class="number color-3">361</span></td>
							<td><span class="number color-3">34.8</span></td>
							<td><span class="number color-3">16.2</span></td>
							<td><span class="number color-3">18.3</span></td>
						</tr>
						<tr>
							<td><span class="number color-4">361</span></td>
							<td><span class="number color-4">34.8</span></td>
							<td><span class="number color-4">16.2</span></td>
							<td><span class="number color-4">18.3</span></td>
						</tr>
					</table>
				</div>
			</div>
			<div class="section-title">
				<div class="name">本周餐单</div>
				<h2 class="title">
					<span>MOUDAY周一</span> <img src="img/male.png" />
				</h2>
				<p class="day-cal">总热量：1514.44kcal</p>
				<p class="day-cal">=微波中火加热一分钟(建议)</p>
				<p class="day-cal">请取出调料盒后再加热</p>
			</div>
			<div class="section-content">
				<div class="sec-left">
					<ul>
						<li>
							<p class="meal">早餐
							<p>
							<p class="meal-con">彩虹科布沙拉</p>
						</li>
						<li>
							<p class="meal">午餐
							<p>
							<p class="meal-con">煎龙利鱼配紫甘蓝与土豆</p>
						</li>
						<li>
							<p class="meal">晚餐
							<p>
							<p class="meal-con">鸡胸配鹰嘴豆与紫薯泥</p>
						</li>
						<li>
							<p class="meal">加餐
							<p>
							<p class="meal-con">蜂蜜烤吐司配腰果</p>
						</li>
					</ul>
				</div>
				<div class="sec-right">
					<table>
						<tr>
							<td class="heat">热量</td>
							<td class="heat">蛋白(g)</td>
							<td class="heat">脂肪(g)</td>
							<td class="heat">碳水(g)</td>
						</tr>
						<tr>
							<td><span class="number color-1">361</span></td>
							<td><span class="number color-1">34.8</span></td>
							<td><span class="number color-1">16.2</span></td>
							<td><span class="number color-1">18.3</span></td>
						</tr>
						<tr>
							<td><span class="number color-2">361</span></td>
							<td><span class="number color-2">34.8</span></td>
							<td><span class="number color-2">16.2</span></td>
							<td><span class="number color-2">18.3</span></td>
						</tr>
						<tr>
							<td><span class="number color-3">361</span></td>
							<td><span class="number color-3">34.8</span></td>
							<td><span class="number color-3">16.2</span></td>
							<td><span class="number color-3">18.3</span></td>
						</tr>
						<tr>
							<td><span class="number color-4">361</span></td>
							<td><span class="number color-4">34.8</span></td>
							<td><span class="number color-4">16.2</span></td>
							<td><span class="number color-4">18.3</span></td>
						</tr>
					</table>
				</div>
			</div>
			<div class="section-title">
				<div class="name">本周餐单</div>
				<h2 class="title">
					<span>MOUDAY周一</span> <img src="img/male.png" />
				</h2>
				<p class="day-cal">总热量：1514.44kcal</p>
				<p class="day-cal">=微波中火加热一分钟(建议)</p>
				<p class="day-cal">请取出调料盒后再加热</p>
			</div>
			<div class="section-content">
				<div class="sec-left">
					<ul>
						<li>
							<p class="meal">早餐
							<p>
							<p class="meal-con">彩虹科布沙拉</p>
						</li>
						<li>
							<p class="meal">午餐
							<p>
							<p class="meal-con">煎龙利鱼配紫甘蓝与土豆</p>
						</li>
						<li>
							<p class="meal">晚餐
							<p>
							<p class="meal-con">鸡胸配鹰嘴豆与紫薯泥</p>
						</li>
						<li>
							<p class="meal">加餐
							<p>
							<p class="meal-con">蜂蜜烤吐司配腰果</p>
						</li>
					</ul>
				</div>
				<div class="sec-right">
					<table>
						<tr>
							<td class="heat">热量</td>
							<td class="heat">蛋白(g)</td>
							<td class="heat">脂肪(g)</td>
							<td class="heat">碳水(g)</td>
						</tr>
						<tr>
							<td><span class="number color-1">361</span></td>
							<td><span class="number color-1">34.8</span></td>
							<td><span class="number color-1">16.2</span></td>
							<td><span class="number color-1">18.3</span></td>
						</tr>
						<tr>
							<td><span class="number color-2">361</span></td>
							<td><span class="number color-2">34.8</span></td>
							<td><span class="number color-2">16.2</span></td>
							<td><span class="number color-2">18.3</span></td>
						</tr>
						<tr>
							<td><span class="number color-3">361</span></td>
							<td><span class="number color-3">34.8</span></td>
							<td><span class="number color-3">16.2</span></td>
							<td><span class="number color-3">18.3</span></td>
						</tr>
						<tr>
							<td><span class="number color-4">361</span></td>
							<td><span class="number color-4">34.8</span></td>
							<td><span class="number color-4">16.2</span></td>
							<td><span class="number color-4">18.3</span></td>
						</tr>
					</table>
				</div>
			</div>
			<div class="section-title">
				<div class="name">本周餐单</div>
				<h2 class="title">
					<span>MOUDAY周一</span> <img src="img/male.png" />
				</h2>
				<p class="day-cal">总热量：1514.44kcal</p>
				<p class="day-cal">=微波中火加热一分钟(建议)</p>
				<p class="day-cal">请取出调料盒后再加热</p>
			</div>
			<div class="section-content">
				<div class="sec-left">
					<ul>
						<li>
							<p class="meal">早餐
							<p>
							<p class="meal-con">彩虹科布沙拉</p>
						</li>
						<li>
							<p class="meal">午餐
							<p>
							<p class="meal-con">煎龙利鱼配紫甘蓝与土豆</p>
						</li>
						<li>
							<p class="meal">晚餐
							<p>
							<p class="meal-con">鸡胸配鹰嘴豆与紫薯泥</p>
						</li>
						<li>
							<p class="meal">加餐
							<p>
							<p class="meal-con">蜂蜜烤吐司配腰果</p>
						</li>
					</ul>
				</div>
				<div class="sec-right">
					<table>
						<tr>
							<td class="heat">热量</td>
							<td class="heat">蛋白(g)</td>
							<td class="heat">脂肪(g)</td>
							<td class="heat">碳水(g)</td>
						</tr>
						<tr>
							<td><span class="number color-1">361</span></td>
							<td><span class="number color-1">34.8</span></td>
							<td><span class="number color-1">16.2</span></td>
							<td><span class="number color-1">18.3</span></td>
						</tr>
						<tr>
							<td><span class="number color-2">361</span></td>
							<td><span class="number color-2">34.8</span></td>
							<td><span class="number color-2">16.2</span></td>
							<td><span class="number color-2">18.3</span></td>
						</tr>
						<tr>
							<td><span class="number color-3">361</span></td>
							<td><span class="number color-3">34.8</span></td>
							<td><span class="number color-3">16.2</span></td>
							<td><span class="number color-3">18.3</span></td>
						</tr>
						<tr>
							<td><span class="number color-4">361</span></td>
							<td><span class="number color-4">34.8</span></td>
							<td><span class="number color-4">16.2</span></td>
							<td><span class="number color-4">18.3</span></td>
						</tr>
					</table>
				</div>
			</div>
			<div class="section-title">
				<div class="name">本周餐单</div>
				<h2 class="title">
					<span>MOUDAY周一</span> <img src="img/male.png" />
				</h2>
				<p class="day-cal">总热量：1514.44kcal</p>
				<p class="day-cal">=微波中火加热一分钟(建议)</p>
				<p class="day-cal">请取出调料盒后再加热</p>
			</div>
			<div class="section-content">
				<div class="sec-left">
					<ul>
						<li>
							<p class="meal">早餐
							<p>
							<p class="meal-con">彩虹科布沙拉</p>
						</li>
						<li>
							<p class="meal">午餐
							<p>
							<p class="meal-con">煎龙利鱼配紫甘蓝与土豆</p>
						</li>
						<li>
							<p class="meal">晚餐
							<p>
							<p class="meal-con">鸡胸配鹰嘴豆与紫薯泥</p>
						</li>
						<li>
							<p class="meal">加餐
							<p>
							<p class="meal-con">蜂蜜烤吐司配腰果</p>
						</li>
					</ul>
				</div>
				<div class="sec-right">
					<table>
						<tr>
							<td class="heat">热量</td>
							<td class="heat">蛋白(g)</td>
							<td class="heat">脂肪(g)</td>
							<td class="heat">碳水(g)</td>
						</tr>
						<tr>
							<td><span class="number color-1">361</span></td>
							<td><span class="number color-1">34.8</span></td>
							<td><span class="number color-1">16.2</span></td>
							<td><span class="number color-1">18.3</span></td>
						</tr>
						<tr>
							<td><span class="number color-2">361</span></td>
							<td><span class="number color-2">34.8</span></td>
							<td><span class="number color-2">16.2</span></td>
							<td><span class="number color-2">18.3</span></td>
						</tr>
						<tr>
							<td><span class="number color-3">361</span></td>
							<td><span class="number color-3">34.8</span></td>
							<td><span class="number color-3">16.2</span></td>
							<td><span class="number color-3">18.3</span></td>
						</tr>
						<tr>
							<td><span class="number color-4">361</span></td>
							<td><span class="number color-4">34.8</span></td>
							<td><span class="number color-4">16.2</span></td>
							<td><span class="number color-4">18.3</span></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="bottom.jsp"></jsp:include>
</body>
</html>