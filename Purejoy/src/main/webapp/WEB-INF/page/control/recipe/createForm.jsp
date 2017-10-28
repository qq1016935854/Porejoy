<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.purejoy.model.Recipe"%>
<%@ page import="java.util.List"%>

<div>
	<form method="post" class="form-x" id="woRecipeCreateForm">
    	<div class="form-group">
			<div class="label">
				<label for="loginName">ID</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="loginName" name="id"
					size="50" placeholder="请输入ID" data-validate="required:必填 "
					 value="" />
			</div>
		</div>
		
		<div class="form-group">
			<div class="label">
				<label for="loginName">时间</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="loginName" name="recipe_weekday"
					size="50" placeholder="请输入具体时间" data-validate="required:必填 "
					value="" />
			</div>
		</div>
		<div class="form-group">
			<div class="label">
				<label for="loginName">建议</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="loginName" name="recipe_advice"
					size="50" placeholder="请输入建议" data-validate="required:必填 "
					value="" />
			</div>
		</div>
		<div class="form-group">
			<div class="label">
				<label for="loginName">操作方法</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="loginName" name="recipe_operation"
					size="50" placeholder="请输入操作方法" data-validate="required:必填 "
					value="" />
			</div>
		</div>
		<div class="form-group">
			<div class="label">
				<label for="loginName">早餐</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="loginName" name="recipe_breakfast"
					size="50" placeholder="请输入早餐信息" data-validate="required:必填 "
					value="" />
			</div>
		</div>
		<div class="form-group">
			<div class="label">
				<label for="loginName">午餐</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="loginName" name="recipe_lunch"
					size="50" placeholder="请输入午餐信息" data-validate="required:必填 "
					value="" />
			</div>
		</div>
		<div class="form-group">
			<div class="label">
				<label for="loginName">晚餐</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="loginName" name="recipe_dinner"
					size="50" placeholder="请输入晚餐信息" data-validate="required:必填 "
					value="" />
			</div>
		</div>
		<div class="form-group">
			<div class="label">
				<label for="loginName">加餐</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="loginName" name="recipe_extra"
					size="50" placeholder="请输入加餐信息" data-validate="required:必填 "
					value="" />
			</div>
		</div>
		<div class="form-group">
			<div class="label">
				<label for="loginName">男生女生</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="loginName" name="recipe_type"
					size="50" placeholder="请输入男生女生" data-validate="required:必填 "
					value="" />
			</div>
		</div>
		
		<div class="form-button">
			<button class="button bg-main icon-save" type="button"
				onclick="Wobb.submitRecipeCreateForm();">保存</button>
			<button class="button bg-yellow icon-arrow-circle-right"
				type="button" onclick="WoKit.destroyMainFrame();">取消</button>
		</div>
	</form>
</div>