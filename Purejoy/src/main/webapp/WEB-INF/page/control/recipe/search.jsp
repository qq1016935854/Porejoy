<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.purejoy.model.Recipe"%>
<%@ page import="java.util.List"%>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
	List<Recipe> recipes = (List<Recipe>) request.getAttribute("recipes");
%>

<table class="table table-hover table-condensed">
					<tr>
						<th width="45" style="text-align: center">选择</th>
						<th th:width="10%">ID</th>	
						<th th:width="10%">时间</th>												
						<th th:width="10%">建议</th>
						<th th:width="10%">操作方法</th>
						<th th:width="10%">早餐</th>
						<th th:width="10%">午餐</th>
						<th th:width="10%">晚餐</th>
						<th th:width="10%">加餐</th>
						<th th:width="10%">男生女生</th>					
					</tr>
					<% 
						for (Recipe r : recipes) {
					%>
					<tr>
						<td style="text-align: center"><input type="checkbox" name="woSelectedIds"
							value="<%=r.getId()%>" id="woRecipeListPanel_<%=r.getId()%>"/></td>
						<td class="woTableTd"><%=r.getId()%></td>
						<td class="woTableTd"><%=r.getRecipe_weekday()%></td>
						<td class="woTableTd"><%=r.getRecipe_advice()%></td>						
						<td class="woTableTd"><%=r.getRecipe_operation()%></td>
						<td class="woTableTd"><%=r.getRecipe_breakfast()%></td>
						<td class="woTableTd"><%=r.getRecipe_lunch()%></td>
						<td class="woTableTd"><%=r.getRecipe_dinner()%></td>
						<td class="woTableTd"><%=r.getRecipe_extra()%></td>
						<td class="woTableTd"><%=r.getRecipe_type()%></td>
					</tr>
					<% 
						}
					%>
				</table>