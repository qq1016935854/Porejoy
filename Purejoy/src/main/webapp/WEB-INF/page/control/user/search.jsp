<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.purejoy.model.User"%>
<%@ page import="java.util.List"%>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
	List<User> users = (List<User>) request.getAttribute("users");
%>

<table class="table table-hover table-condensed">
					<tr>
						<th width="45" style="text-align: center">选择</th>
						<th th:width="200">ID</th>						
						<th th:width="200">姓名</th>
						<th th:width="200">性别</th>
						<th th:width="200">生日</th>
					</tr>
					<% 
						for (User u : users) {
					%>
					<tr>
						<td style="text-align: center"><input type="checkbox" name="woSelectedIds"
							value="<%=u.getUid()%>" id="woUserListPanel_<%=u.getUid()%>"/></td>
						<td class="woTableTd"><%=u.getUid()%></td>
						<td class="woTableTd"><%=u.getUname()%></td>						
						<td class="woTableTd"><%=u.getGender()%></td>
						<td class="woTableTd"><%=u.getBirthday()%></td>
					</tr>
					<% 
						}
					%>
				</table>