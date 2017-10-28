<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.purejoy.model.Food"%>
<%@ page import="java.util.List"%>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
	List<Food> foods = (List<Food>) request.getAttribute("foods");
%>

<table class="table table-hover table-condensed">
					<tr>
						<th width="45" style="text-align: center">选择</th>
						<th th:width="200">ID</th>						
						<th th:width="200">名称</th>
						<th th:width="200">卡路里</th>
						<th th:width="200">蛋白质</th>
						<th th:width="200">脂肪</th>
						<th th:width="200">糖</th>
					</tr>
					<% 
						for (Food f : foods) {
					%>
					<tr>
						<td style="text-align: center"><input type="checkbox" name="woSelectedIds"
							value="<%=f.getId()%>" id="woFoodListPanel_<%=f.getId()%>"/></td>
						<td class="woTableTd"><%=f.getId()%></td>
						<td class="woTableTd"><%=f.getName()%></td>						
						<td class="woTableTd"><%=f.getCalories()%></td>
						<td class="woTableTd"><%=f.getProtein()%></td>
						<td class="woTableTd"><%=f.getFat()%></td>
						<td class="woTableTd"><%=f.getCarbohydrate()%></td>
					</tr>
					<% 
						}
					%>
				</table>