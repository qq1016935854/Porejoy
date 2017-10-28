<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.purejoy.model.Goods"%>
<%@ page import="java.util.List"%>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
	Goods g = (Goods) request.getAttribute("goods");
%>

<div>
	<form method="post" class="form-x" id="woGoodsUpdateForm" >
	
			 <div class="form-group">
			<div class="label">
				<label for="id">ID</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="id" name="id" size="50"
					placeholder="请输入商品ID" data-validate="required:必填 " 
					readonly="readonly" value="<%=g.getId() %>" />
			</div>
		</div>
		<div class="form-group">
			<div class="label">
				<label for="loginName">商品名</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="loginName" name="name"
					size="50" placeholder="请输入名称"  data-validate="required:必填 "
					value="<%=g.getName() %>" />
			</div>
		</div>
		<div class="form-group">
			<div class="label">
				<label for="password">类型</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="uname" name="type"
					size="50" placeholder="请输入商品类型" data-validate="required:必填 " value="<%=g.getType()%>" />
			</div>
		</div>
		<div class="form-group">
			<div class="label">
				<label for="password">价格</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="password" name="price"
					size="50" placeholder="请输入商品价格" data-validate="required:必填 " value="<%=g.getPrice() %>" />
			</div>
		</div>
	<%-- 	
		<div class="form-group">
			<div class="label">
				<label for="headImageFile">图片</label>
			</div>
			<div class="field">
				<a class='x12' href="<%=basePath + g.getImg()%>"
					target="_blank"> <img width="400px" class="icon" src="<%=basePath + g.getImg()%>"
					class="radius" alt="暂无图片"></img>
				</a><a class="button input-file" onclick="$(this).next().val('-1');">+浏览图片<input
					size="200" type="file" name="img" id="headImageFile" />
				</a> <input type="hidden" name="img" value="" />
			</div>
		</div> --%>
		
		<div class="form-group">
			<div class="label">
				<label for="password">运送周期</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="password" name="cycle"
					size="50" placeholder="请输入运送周期" data-validate="required:必填 " value="<%=g.getCycle() %>" />
			</div>
		</div>	
		
		<div class="form-group">
			<div class="label">
				<label for="password">商品描述</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="password" name="description"
					size="50" placeholder="请输入商品描述" data-validate="required:必填 " value="<%=g.getDescription() %>" />
			</div>
		</div>
			<div class="form-group">
			<div class="label">
				<label for="password">男生女生</label>
			</div>
			<div class="field">
				<input type="text" class="input" id="password" name="gender"
					size="50" placeholder="请输入商品描述" data-validate="required:必填 " value="<%=g.getGender() %>" />
			</div>
		</div>
		
		
		<div class="form-button">
			<button class="button bg-main icon-save" type="button"
				onclick="Wobb.submitGoodsUpdateForm();">保存</button>
			<button class="button bg-yellow icon-arrow-circle-right"
				type="button" onclick="WoKit.destroyMainFrame();">取消</button>
		</div>
	</form>
</div>