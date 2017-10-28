<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.purejoy.model.Goods"%>
<%@ page import="java.util.List"%>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
	List<Goods> goodses = (List<Goods>) request.getAttribute("goodses");
%>
<div class="panel" id="woGoodsSearchPanel">
	<div class="panel-head" id="woGoodsSearchPanelHeader">
		<span class='icon-times float-right rotate'></span>
		<h4 class="icon-search">&nbsp;查询</h4>
	</div>
	<div class="panel-body padding-small" id="woGoodsSearchPanelBody">
		<form onsubmit="return false;" class="form-inline">
			<div class="form-group">
				<div class="label">
					<label for="loginName">&nbsp;&nbsp;&nbsp;&nbsp;食品名</label>&nbsp;&nbsp;&nbsp;&nbsp;
				</div>
				<div class="field">
					<input type="text" class="input" id="loginName" name="name"
						maxlength="50" value="" placeholder="" />
				</div>
			</div>
			<button type="button" class="button button-small bg-main"
				onclick="Wobb.searchGoods()">
				<span class="icon-search text-white">&nbsp;查询</span>
			</button>
		</form>
	</div>
</div>
<div class="panel" id="woGoodsListPanel">
	<div class="panel-head" id="woGoodsListPanelHeader">
		<form onsubmit="return false;">
			<span class='icon-search float-right' id="woGoodsListPanelShowSearch"></span>
			<h4>用户列表</h4>
		</form>
	</div>
	<div class="panel-body-little woPanelBody">
		<form method="post" id="woGoodsListPanelHeaderForm">
			<div class="padding-small border-bottom">
				<input type="button" class="button button-small checkall"
					name="checkall" value="全选"
					onclick="'WoApp.checkAll(\'' + ${list.object.app.domId} + '\', this)'" />
				<button type="button"
					class="button button-small text-white bg-main icon-plus-circle" onclick="Wobb.loadGoodsCreateForm();">
					<span>添加</span>
				</button>
				<button type="button"
					class="button button-small text-white bg-main icon-plus-circle" onclick="Wobb.loadGoodsUpdateForm();">
					<span>修改</span>
				</button>
				<button type="button"
					class="button button-small text-white bg-yellow icon-minus-circle" onclick="Wobb.deleteGoods();">
					<span>删除</span>
				</button>
			</div>
			<div id="woGoodsListPanelBody">
				
			<jsp:include page="search.jsp"></jsp:include>	
			</div>
		</form>
	</div>
</div>