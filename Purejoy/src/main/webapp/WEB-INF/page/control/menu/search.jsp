<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.purejoy.model.Menu"%>
<%@ page import="java.util.List"%>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
	List<Menu> menus = (List<Menu>) request.getAttribute("menus");
%>
<form method="post" id="woChildMenuCreateForm">
<table class="table table-hover table-condensed">
					<tr>
						<th width="45" style="text-align: center">选择</th>
						<th th:width="200">ID</th>
						<th th:width="200">名称</th>
						<th th:width="*">URL</th>
						<th th:width="200">上级菜单</th>
						<th th:width="200">添加子菜单</th>
						
					</tr>
					<% 
						for (Menu m : menus) {
						
							String parentName = (m.getParent() == null)?"" : m.getParent().getName();
					%>
											
					
					<tr>
						<td style="text-align: center"><input type="checkbox" name="woSelectedIds"
							value="<%=m.getId()%>" id="woMenuListPanel_<%=m.getId()%>"/></td>
						<td class="woTableTd"><%=m.getId()%></td>
						<td class="woTableTd"><%=m.getName()%></td>
						<td class="woTableTd"><%=m.getUrl()%></td>
						<td class="woTableTd"><%=parentName%></td>
						<td class="woTableTd">
							<button type="button" class="button button-small text-white bg-main icon-plus-circle" onclick="Wobb.loadChildMenuCreateForm();"><span>添加</span>
							</button>
						</td>
				
					</tr>
					<% 
						}
					%>
				</table>
						</form>