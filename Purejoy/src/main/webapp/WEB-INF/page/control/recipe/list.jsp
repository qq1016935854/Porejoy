<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.purejoy.model.Recipe"%>
<%@ page import="java.util.List"%>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
	List<Recipe> recipes = (List<Recipe>) request.getAttribute("recipes");
%>
<div class="panel" id="woRecipeSearchPanel">
	<div class="panel-head" id="woRecipeSearchPanelHeader">
		<span class='icon-times float-right rotate'></span>
		<h4 class="icon-search">&nbsp;查询</h4>
	</div>
	<div class="panel-body padding-small" id="woRecipeSearchPanelBody">
		<form onsubmit="return false;" class="form-inline">
			<div class="form-group">
				<div class="label">
					<label for="loginName">&nbsp;&nbsp;&nbsp;&nbsp;周几</label>&nbsp;&nbsp;&nbsp;&nbsp;
				</div>
				<div class="field">
					<input type="text" class="input" id="loginName" name="recipe_weekday"
						maxlength="50" value="" placeholder="" />
				</div>
			</div>
			<button type="button" class="button button-small bg-main"
				onclick="Wobb.searchRecipe()">
				<span class="icon-search text-white">&nbsp;查询</span>
			</button>
		</form>
	</div>
</div>
<div class="panel" id="woRecipeListPanel">
	<div class="panel-head" id="woRecipeListPanelHeader">
		<form onsubmit="return false;">
			<span class='icon-search float-right' id="woRecipeListPanelShowSearch"></span>
			<h4>用户列表</h4>
		</form>
	</div>
	<div class="panel-body-little woPanelBody">
		<form method="post" id="woRecipeListPanelHeaderForm">
			<div class="padding-small border-bottom">
				<input type="button" class="button button-small checkall"
					name="checkall" value="全选"
					onclick="'WoApp.checkAll(\'' + ${list.object.app.domId} + '\', this)'" />
				<button type="button"
					class="button button-small text-white bg-main icon-plus-circle" onclick="Wobb.loadRecipeCreateForm();">
					<span>添加</span>
				</button>
				<button type="button"
					class="button button-small text-white bg-main icon-plus-circle" onclick="Wobb.loadRecipeUpdateForm();">
					<span>修改</span>
				</button>
				<button type="button"
					class="button button-small text-white bg-yellow icon-minus-circle" onclick="Wobb.deleteRecipe();">
					<span>删除</span>
				</button>
			</div>
			<div id="woRecipeListPanelBody">
				
			<jsp:include page="search.jsp"></jsp:include>	
			</div>
		</form>
	</div>
</div>