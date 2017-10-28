<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.purejoy.model.Recipe"%>
<%@ page import="java.util.List"%>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
	Recipe r = (Recipe) request.getAttribute("recipe");
%>

<div>
	<form method="post" class="form-x" id="woRecipeUpdateForm" >
	
			<div class="form-group">
			<div class="label">
				<label for="loginName">ID</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="loginName" name="id"
					size="50" placeholder="请输入姓名" data-validate="required:必填 "
					readonly="readonly" value="<%=r.getId()%>" />
			</div>
		</div>
		
		<div class="form-group">
			<div class="label">
				<label for="loginName">时间</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="loginName" name="recipe_weekday"
					size="50" placeholder="请输入密码" data-validate="required:必填 "
					value="<%=r.getRecipe_weekday()%>" />
			</div>
		</div>
		<div class="form-group">
			<div class="label">
				<label for="loginName">建议</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="loginName" name="recipe_advice"
					size="50" placeholder="请输入密码" data-validate="required:必填 "
					value="<%=r.getRecipe_advice()%>" />
			</div>
		</div>
		<div class="form-group">
			<div class="label">
				<label for="loginName">操作方法</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="loginName" name="recipe_operation"
					size="50" placeholder="请输入密码" data-validate="required:必填 "
					value="<%=r.getRecipe_operation()%>" />
			</div>
		</div>
		<div class="form-group">
			<div class="label">
				<label for="loginName">早餐</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="loginName" name="recipe_breakfast"
					size="50" placeholder="请输入密码" data-validate="required:必填 "
					value="<%=r.getRecipe_breakfast()%>" />
			</div>
		</div>
		<div class="form-group">
			<div class="label">
				<label for="loginName">午餐</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="loginName" name="recipe_lunch"
					size="50" placeholder="请输入密码" data-validate="required:必填 "
					value="<%=r.getRecipe_lunch()%>" />
			</div>
		</div>
		<div class="form-group">
			<div class="label">
				<label for="loginName">晚餐</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="loginName" name="recipe_dinner"
					size="50" placeholder="请输入密码" data-validate="required:必填 "
					value="<%=r.getRecipe_dinner()%>" />
			</div>
		</div>
		<div class="form-group">
			<div class="label">
				<label for="loginName">加餐</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="loginName" name="recipe_extra"
					size="50" placeholder="请输入密码" data-validate="required:必填 "
					value="<%=r.getRecipe_extra()%>" />
			</div>
		</div>
		<div class="form-group">
			<div class="label">
				<label for="loginName">男生女生</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="loginName" name="recipe_type"
					size="50" placeholder="请输入密码" data-validate="required:必填 "
					value="<%=r.getRecipe_type()%>" />
			</div>
		</div>
		
		
		
		<div class="form-button">
			<button class="button bg-main icon-save" type="button"
				onclick="Wobb.submitRecipeUpdateForm();">保存</button>
			<button class="button bg-yellow icon-arrow-circle-right"
				type="button" onclick="WoKit.destroyMainFrame();">取消</button>
		</div>
	</form>
</div>