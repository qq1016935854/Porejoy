<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.purejoy.model.Food"%>
<%@ page import="java.util.List"%>

<div>
	<form method="post" class="form-x" id="woFoodCreateForm">
    	 <div class="form-group">
			<div class="label">
				<label for="id">ID</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="id" name="id" size="50"
					placeholder="请输入文章ID" data-validate="required:必填 " value="" />
			</div>
		</div>
		<div class="form-group">
			<div class="label">
				<label for="loginName">名称</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="loginName" name="name"
					size="50" placeholder="请输入名称"  data-validate="required:必填 "
					value="" />
			</div>
		</div>
		<div class="form-group">
			<div class="label">
				<label for="password">卡路里</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="uname" name="calories"
					size="50" placeholder="请输入" data-validate="required:必填 " value="" />
			</div>
		</div>
		<div class="form-group">
			<div class="label">
				<label for="password">蛋白质</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="password" name="protein"
					size="50" placeholder="请输入文章链接" data-validate="required:必填 " value="" />
			</div>
		</div>
		
		<div class="form-group">
			<div class="label">
				<label for="password">脂肪</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="password" name="fat"
					size="50" placeholder="请输入文章链接" data-validate="required:必填 " value="" />
			</div>
		</div>	
		
		<div class="form-group">
			<div class="label">
				<label for="password">糖分</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="password" name="carbohydrate"
					size="50" placeholder="请输入文章链接" data-validate="required:必填 " value="" />
			</div>
		</div>					
		<div class="form-button">
			<button class="button bg-main icon-save" type="button"
				onclick="Wobb.submitFoodCreateForm();">保存</button>
			<button class="button bg-yellow icon-arrow-circle-right"
				type="button" onclick="WoKit.destroyMainFrame();">取消</button>
		</div>
	</form>
</div>