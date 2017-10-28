<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.purejoy.model.Menu"%>
<%@ page import="java.util.List"%>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
	List<Menu> menus = (List<Menu>) request.getAttribute("menus");
%>
<div class="panel" id="woMenuSearchPanel">
	<div class="panel-head" id="woMenuSearchPanelHeader">
		<span class='icon-times float-right rotate'></span>
		<h4 class="icon-search">&nbsp;查询</h4>
	</div>
	<div class="panel-body padding-small" id="woMenuSearchPanelBody">
		<form onsubmit="return false;" class="form-inline">
			<div class="form-group">
				<div class="label">
					<label for="name">&nbsp;&nbsp;&nbsp;&nbsp;菜单名</label>&nbsp;&nbsp;&nbsp;&nbsp;
				</div>
				<div class="field">
					<input type="text" class="input" id="name" name="name"
						maxlength="50" value="" placeholder="" />
				</div>
			</div>
			<button type="button" class="button button-small bg-main"
				onclick="Wobb.searchMenus()">
				<span class="icon-search text-white">&nbsp;查询</span>
			</button>
		</form>
	</div>
</div>
<div class="panel" id="woMenuListPanel">
	<div class="panel-head" id="woMenuListPanelHeader">
		<form onsubmit="return false;">
			<span class='icon-search float-right' id="woMenuListPanelShowSearch"></span>
			<h4>用户列表</h4>
		</form>
	</div>
	<div class="panel-body-little woPanelBody">
		<form method="post" id="woMenuListPanelHeaderForm">
			<div class="padding-small border-bottom">
				<input type="button" class="button button-small checkall"
					name="checkall" value="全选"
					onclick="'WoApp.checkAll(\'' + ${list.object.app.domId} + '\', this)'" />
				<button type="button"
					class="button button-small text-white bg-main icon-plus-circle" onclick="Wobb.loadMenuCreateForm();">
					<span>添加</span>
				</button>
				<button type="button"
					class="button button-small text-white bg-main icon-plus-circle" onclick="Wobb.loadMenuUpdateForm();">
					<span>修改</span>
				</button>
				<button type="button"
					class="button button-small text-white bg-yellow icon-minus-circle" onclick="Wobb.deleteMenus ();">
					<span>删除</span>
				</button>
			</div>
			<div id="woMenuListPanelBody">			
			<jsp:include page="search.jsp"></jsp:include>	
			</div>
		</form>
	</div>
</div>