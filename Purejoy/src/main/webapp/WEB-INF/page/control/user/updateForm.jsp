<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.purejoy.model.User"%>
<%@ page import="java.util.List"%>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
	User u = (User) request.getAttribute("user");
%>

<div>
	<form method="post" class="form-x" id="woUserUpdateForm" >
	
	<input type="hidden" name="uid" value="<%=u.getUid() %>">
			<div class="form-group">
			<div class="label">
				<label for="loginName">用户名</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="loginName" name="username"
					size="50" placeholder="请输入姓名" data-validate="required:必填 "
					readonly="readonly" value="<%=u.getUsername()%>" />
			</div>
		</div>
		
		<div class="form-group">
			<div class="label">
				<label for="loginName">密码</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="loginName" name="password"
					size="50" placeholder="请输入密码" data-validate="required:必填 "
					value="<%=u.getUname()%>" />
			</div>
		</div>
		
		<div class="form-group">
			<div class="label">
				<label for="loginName">姓名</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="loginName" name="uname"
					size="50" placeholder="请输入姓名" data-validate="required:必填 "
					value="<%=u.getUname()%>" />
			</div>
		</div>
		<div class="form-group">
			<div class="label">
				<label for="loginName">性别</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="loginName" name="gender"
					size="50" placeholder="请输入性别" data-validate="required:必填 "
					value="<%=u.getGender()%>" />
			</div>
		</div>
		<div class="form-group">
			<div class="label">
				<label for="loginName">生日</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="loginName" name="birthday"
					size="50" placeholder="请输入姓名" data-validate="required:必填 "
					value="<%=u.getBirthday()%>" />
			</div>
		</div>	
		
		<div class="form-button">
			<button class="button bg-main icon-save" type="button"
				onclick="Wobb.submitUserUpdateForm();">保存</button>
			<button class="button bg-yellow icon-arrow-circle-right"
				type="button" onclick="WoKit.destroyMainFrame();">取消</button>
		</div>
	</form>
</div>