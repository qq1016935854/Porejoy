<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.purejoy.model.Articles"%>
<%@ page import="java.util.List"%>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
	Articles a = (Articles) request.getAttribute("articles");
%>

<div>
	<form method="post" class="form-x" id="woArticlesUpdateForm" >
	
			<div class="form-group">
			<div class="label">
				<label for="loginName">文章ID</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="loginName" name="id"
					size="50" placeholder="请输入姓名" data-validate="required:必填 "
					readonly="readonly" value="<%=a.getId()%>" />
			</div>
		</div>
		
		<div class="form-group">
			<div class="label">
				<label for="loginName">文章标题</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="loginName" name="title"
					size="50" placeholder="请输入密码" data-validate="required:必填 "
					value="<%=a.getTitle()%>" />
			</div>
		</div>
		
		<div class="form-group">
			<div class="label">
				<label for="loginName">图片</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="loginName" name="img"
					size="50" placeholder="请输入姓名" data-validate="required:必填 "
					value="<%=a.getImg()%>" />
			</div>
		</div>
		<div class="form-group">
			<div class="label">
				<label for="loginName">文章链接</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="loginName" name="url"
					size="50" placeholder="请输入性别" data-validate="required:必填 "
					value="<%=a.getUrl()%>" />
			</div>
		</div>
		
		
		<div class="form-button">
			<button class="button bg-main icon-save" type="button"
				onclick="Wobb.submitArticlesUpdateForm();">保存</button>
			<button class="button bg-yellow icon-arrow-circle-right"
				type="button" onclick="WoKit.destroyMainFrame();">取消</button>
		</div>
	</form>
</div>