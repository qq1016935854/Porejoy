<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.purejoy.model.Goods"%>
<%@ page import="java.util.List"%>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
	List<Goods> goodses = (List<Goods>) request.getAttribute("goodses");
%>

<table class="table table-hover table-condensed">
					<tr>
						<th width="45" style="text-align: center">选择</th>
						<th th:width="200">ID</th>						
						<th th:width="200">商品名称</th>
						<th th:width="200">类型</th>
						<th th:width="200">价格</th>
						<th th:width="200">图片</th>
						<th th:width="200">运送周期</th>
						<th th:width="200">商品描述</th>
						<th th:width="200">男生女生版</th>
						<th th:width="200">缩略图</th>
						
					</tr>
					<% 
						for (Goods g : goodses) {
					%>
					<tr>
						<td style="text-align: center"><input type="checkbox" name="woSelectedIds"
							value="<%=g.getId()%>" id="woGoodsListPanel_<%=g.getId()%>"/></td>
						<td class="woTableTd"><%=g.getId()%></td>
						<td class="woTableTd"><%=g.getName()%></td>						
						<td class="woTableTd"><%=g.getType()%></td>
						<td class="woTableTd"><%=g.getPrice()%></td>
						<td class="woTableTd"><img class="icon" width="200px" src="<%=basePath + g.getImg()%>"
					class="radius" alt="暂无图片"></img></td>
						<td class="woTableTd"><%=g.getCycle()%></td>
						<td class="woTableTd"><%=g.getDescription()%></td>
						<td class="woTableTd"><%=g.getGender()%></td>
						<td class="woTableTd"><img class="icon" width="200px" src="<%=basePath + g.getThumb_img()%>"
					class="radius" alt="暂无图片"></img></td>
					</tr>
					<% 
						}
					%>
				</table>