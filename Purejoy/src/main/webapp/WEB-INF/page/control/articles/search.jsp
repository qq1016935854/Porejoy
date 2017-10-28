<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.purejoy.model.Articles"%>
<%@ page import="java.util.List"%>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
	List<Articles> articles = (List<Articles>) request.getAttribute("articles");
%>

<table class="table table-hover table-condensed">
					<tr>
						<th width="45" style="text-align: center">选择</th>
						<th th:width="200">ID</th>						
						<th th:width="200">文章标题</th>
						<th th:width="200">图片</th>
						<th th:width="200">文章链接</th>
					</tr>
					<% 
						for (Articles a : articles) {
					%>
					<tr>
						<td style="text-align: center"><input type="checkbox" name="woSelectedIds"
							value="<%=a.getId()%>" id="woArticlesListPanel_<%=a.getId()%>"/></td>
						<td class="woTableTd"><%=a.getId()%></td>
						<td class="woTableTd"><%=a.getTitle()%></td>						
						<td class="woTableTd"><%=a.getImg()%></td>
						<td class="woTableTd"><%=a.getUrl()%></td>
					</tr>
					<% 
						}
					%>
				</table>