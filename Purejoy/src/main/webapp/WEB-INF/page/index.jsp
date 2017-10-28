<%@page pageEncoding="UTF-8"%>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
%>
<html>
<head>
<meta charset="utf-8" />

<title></title>
<link rel="stylesheet" href="css/shouye.css" />
<script src="js/jquery-1.11.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/shouye.js" type="text/javascript" charset="utf-8"></script>
</head>
<body>
	<!-------  header   --------------->
	<jsp:include page="jsp/head.jsp"></jsp:include>
	<!--<div id="banner">
			<img src="img/new_banner2.jpg"/>
			<div class="inner">
				<div class="title">专业健身减脂餐</div>
				<img src="/images/new-home/heart2.png" width="55" height="46" alt="纯悦生活purejoy - 轻体餐 - 健身餐 - 专业减脂餐 - Fitness Food" class="heart">
				<div class="slogan">告别多余脂肪，享瘦也享受</div>
				<a href="/product/meal" class="buynow link">立即订购</a>
			</div>
		
		</div>-->
	<section id="banner">
		<img src="<%=basePath %>img/new_banner2 (1).jpg" class="banner-img">
		<div class="inner">
			<div class="title">专业健身减脂餐</div>
			<img src="<%=basePath %>img/heart2.png" width="55" height="46"
				alt="纯悦生活purejoy - 轻体餐 - 健身餐 - 专业减脂餐 - Fitness Food" class="heart">
			<div class="slogan">告别多余脂肪，享瘦也享受</div>
			<a href="${pageContext.request.contextPath }/goods/chicken" class="buynow link">立即订购</a>
		</div>
	</section>
	<p id="s_text">
		一份真正满足减脂需求的<br /> 专业餐单
	</p>
	<div id="type">
		<ul class="good-parts-ul">
			<li class="left">
				<div class="img-wrap">
					<img src="<%=basePath %>img/good-part1.jpg" height="198" class="img">
				</div>
				<p class="title">专业研发</p>
				<p class="desc">五星级酒店厨师</p>
				<p class="descm">+</p>
				<p class="desc">专业营养师的完美搭配</p>
				<p class="desc m">=</p>
				<p class="desc">最专业美味的营养餐</p>
			</li>
			<li class="middle">
				<div class="img-wrap">
					<img src="<%=basePath %>img/good-part2.jpg" width="198" height="198" class="img">
				</div>
				<p class="title">专业生产</p>
				<p class="desc">优质蛋白 优质脂肪</p>
				<p class="desc">低碳水</p>
				<p class="desc">新鲜肉类 应季蔬菜</p>
				<p class="desc">低糖水果 全麦面包 通通有</p>
			</li>
			<li class="right">
				<div class="img-wrap">
					<img src="<%=basePath %>img/good-part3.jpg" width="198" height="198" class="img">
				</div>
				<p class="title">专业配送</p>
				<p class="desc">专业配送团队</p>
				<p class="desc">每天新鲜送到家</p>
				<p class="desc">一周5天</p>
				<p class="desc">美味餐单不重样</p>
			</li>
		</ul>
	</div>

	<section id="section_entry">
		<div class="bg"></div>
		<img src="<%=basePath %>img/home-left-new.jpg" width="593" height="574"
			alt="纯悦生活purejoy - 轻体餐 - 健身餐 - 专业减脂餐 - Fitness Food" class="img">
		<div class="border_lt"></div>
		<div class="border_r"></div>
		<div class="border_lb"></div>
		<div class="inner">
			<h3 class="title">专业健身减脂餐</h3>
			<h4 class="title_en">
				Fitness Fo<span class="b">o</span>d
			</h4>
			<p class="desc">
				每天包括早中晚加餐4顿。<br>食材主要包括：三文鱼、牛肉、坚果、全麦面包、鸡胸肉、鸡蛋、混合生菜、粗粮等。
				当天采购新鲜食材，科学配比、精心烹调，严格控制每份餐的卡路里数，做您健康减脂路上最贴心的帮手。
			</p>
			<a href="${pageContext.request.contextPath }/goods/chicken" class="buynow">查看详情</a>
		</div>
	</section>


	<!---------      footer     --------------------------->
	<jsp:include page="jsp/bottom.jsp"></jsp:include>

</body>
</html>