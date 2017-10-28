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

<link rel="stylesheet" href="<%=basePath%>css/shouye.css" />
<script src="<%=basePath%>js/jquery-1.11.1.js" type="text/javascript" charset="utf-8"></script>
<script src="<%=basePath%>js/shouye.js" type="text/javascript" charset="utf-8"></script>
</head>

<body>
	<div id="footer">
		<div id="footer_center">
			<div id="footer_top">
				<img src="<%=basePath%>img/footer_title.png" />
			</div>
			<div id="footer_mid">
				<div class="fotmid_left">
					<ul id="fotleft_ul">
						<li>
							<p class="footlist_title">快捷导航</p>
							<p class="footlist_ctent">
								<a href="${pageContext.request.contextPath }/goods/fitnessfood">减脂餐</a>
							</p>
							<p class="footlist_ctent">
								<a href="${pageContext.request.contextPath }/goods/chicken">撕裂者</a>
							</p>
							<p class="footlist_ctent">
								<a href="${pageContext.request.contextPath }/recipe/list">食谱</a>
							</p>
							<p class="footlist_ctent">
								<a href="${pageContext.request.contextPath }/food/list">食品</a>
							</p>
						</li>
						<li>
							<p class="footlist_title">常见问题</p>
							<p class="footlist_ctent">
								<a href="#">配送范围及费用</a>
							</p>
							<p class="footlist_ctent">
								<a href="#">产品保存提示</a>
							</p>
							<p class="footlist_ctent">
								<a href="#">订单修改及取消</a>
							</p>
							<p class="footlist_ctent">
								<a href="#">签收须知</a>
							</p>
						</li>
						<li>
							<p class="footlist_title footlist_titlehi">快捷导航</p>
							<p class="footlist_ctent">
								<a href="#">咨询减脂餐</a>
							</p>
							<p class="footlist_ctent">
								<a href="#">意见反馈</a>
							</p>
						</li>
						<li>
							<p class="footlist_title">联系我们</p>
							<p class="footlist_ctent">
								<a href="#">客服中心</a>
							</p>
							<p class="footlist_ctent">
								<a href="#">服务及隐私条款</a>
							</p>
							<p class="footlist_ctent">
								<a href="#">关于我们</a>
							</p>
						</li>
					</ul>
				</div>
				<div class="fotmid_cen">
					<p class="footlist_title footlist_titlehi">联系我们</p>
					<p class="footlist_ctentm">
						<a href="#">合作：info@lovepurejoy.com</a>
					</p>
					<p class="footlist_ctentm">
						<a href="#">应聘：hr@lovepurejoy.com</a>
					</p>
					<p class="footlist_ctentm">中文客服热线：4000-550-306 /</p>
					<p class="footlist_ctentm">15910200673</p>
					<p class="footlist_ctentm">客服时间：周一至周五 9:00 ~ 18:00</p>
					<p class="footlist_ctentm">在线客服：请关注微信公众号"纯悦生活"</p>
				</div>
				<div class="fotmid_right">
					<div class="footerimg">
						<div class="footerimgl">
							<a href="#"><img src="<%=basePath%>img/wbo.png" /></a>
						</div>
						<div class="footerimgr">
							<a href="#">微博</a>
						</div>
					</div>
					<div class="footerimg">
						<div class="footerimgl">
							<a href="#"><img src="<%=basePath%>img/wxin.png" /></a>
						</div>
						<div class="footerimgr">
							<a href="#">微信</a>
						</div>
					</div>
				</div>
			</div>
			<div id="footer_bot">
				<p class="foobot_p">“纯悦生活”隶属于北京市纯悦网络科技有限公司</p>
				<p class="foobot_p">京ICP备14044739号-1 | 京公网安备11010802016241号 |
					Copyright © 2014-2017 ®纯悦生活</p>
			</div>
		</div>
	</div>

</body>
</html>
