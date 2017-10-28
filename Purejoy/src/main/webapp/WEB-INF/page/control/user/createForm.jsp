<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.purejoy.model.User"%>
<%@ page import="java.util.List"%>
<div>
	<form method="post" class="form-x" id="woUserCreateForm">
<!-- 		<div class="form-group">
			<div class="label">
				<label for="id">ID</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="id" name="id" size="50"
					placeholder="请输入ID" data-validate="required:必填 " value="" />
			</div>
		</div> -->
		<div class="form-group">
			<div class="label">
				<label for="loginName">用户名</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="loginName" name="username"
					size="50" placeholder="请输入用户名"   data-validate="required:必填 "
					value="" />
			</div>
		</div>
		<div class="form-group">
			<div class="label">
				<label for="password">姓名</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="uname" name="uname"
					size="50" placeholder="请输入姓名" data-validate="required:必填 " value="" />
			</div>
		</div>
		<div class="form-group">
			<div class="label">
				<label for="password">密码</label>
			</div>
			<div class="field">
				<input type="password" class="input" id="password" name="password"
					size="50" placeholder="请输入密码" data-validate="required:必填 " value="" />
			</div>
		</div>
		
		<div class="form-group">
			<div class="label">
				<label for="password">性别</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="gender" name="gender"
					size="50" placeholder="请输入性别" data-validate="required:必填 " value="" />
			</div>
		</div>
		
		<div class="form-group">
			<div class="label">
				<label for="password">生日</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="birthday" name="birthday"
					size="50" placeholder="请输入生日"  value="" />
			</div>
		</div>
		
		<div class="form-button">
			<button class="button bg-main icon-save" type="button"
				onclick="Wobb.submitUserCreateForm();">保存</button>
			<button class="button bg-yellow icon-arrow-circle-right"
				type="button" onclick="WoKit.destroyMainFrame();">取消</button>
		</div>
	</form>
</div>