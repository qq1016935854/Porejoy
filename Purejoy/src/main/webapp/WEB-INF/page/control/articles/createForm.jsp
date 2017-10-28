<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.purejoy.model.Articles"%>
<%@ page import="java.util.List"%>

<div>
	<form method="post" class="form-x" id="woArticlesCreateForm">
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
				<label for="loginName">文章标题</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="loginName" name="title"
					size="50" placeholder="请输入用户名文章标题 "  data-validate="required:必填 "
					value="" />
			</div>
		</div>
		<div class="form-group">
			<div class="label">
				<label for="password">图片</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="uname" name="img"
					size="50" placeholder="请上传图片" data-validate="required:必填 " value="" />
			</div>
		</div>
		<div class="form-group">
			<div class="label">
				<label for="password">链接</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="password" name="url"
					size="50" placeholder="请输入文章链接" data-validate="required:必填 " value="" />
			</div>
		</div>		
		<div class="form-button">
			<button class="button bg-main icon-save" type="button"
				onclick="Wobb.submitArticlesCreateForm();">保存</button>
			<button class="button bg-yellow icon-arrow-circle-right"
				type="button" onclick="WoKit.destroyMainFrame();">取消</button>
		</div>
	</form>
</div>