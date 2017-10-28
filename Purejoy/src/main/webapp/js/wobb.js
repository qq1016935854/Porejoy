var Wobb = {};
//-----------------------------用户---------------------------------
Wobb.loadUserCreateForm = function() {
	WoKit.loadMainFrame({
		url : WoKit.basePath + 'control/user/loadCreateForm'
	});
};

Wobb.submitForm = function(cfg) {
	WoAjaxKit.submitForm(cfg.domSelector, {
		type : "post",
		dataType : "json",
		validateForm : false,
		url : WoKit.basePath + cfg.url,
		success : function(json) {
			WoKit.showInfo(json.msg);
			if (json.code == 1) {
				WoKit.destroyMainFrame();
				if (cfg.success) {
					cfg.success(json);
				}
			}
		},
		error : function(XmlHttpRequest, textStatus, errorThrown) {
			if (XmlHttpRequest.responseJSON) {
				WoKit.showWarn(XmlHttpRequest.responseJSON.message);
			} else {
				WoKit.showWarn('提交失败！');
			}
		}
	});
};


Wobb.submitUserCreateForm = function() {
	Wobb.submitForm({
		domSelector : '#woUserCreateForm',
		url : 'control/user/create',
		success : Wobb.searchUser
	});
};

Wobb.loadUserUpdateForm = function() {
	var id = WoKit.getListSelectedIds();
	if (WoKit.isEmpty(id) || id.indexOf(',') > 0) {
		WoKit.showWarn('请选择一个用户！');
		return;
	}
	WoKit.loadMainFrame({
		url : WoKit.basePath + 'control/user/loadUpdateForm?userId=' + id
	});
};

Wobb.submitUserUpdateForm = function() {
	Wobb.submitForm({
		domSelector : '#woUserUpdateForm',
		url : 'control/user/update',
		success : Wobb.searchUser
	});
};

Wobb.deleteUsers = function() {
	var ids = WoKit.getListSelectedIds();
	if (WoKit.isEmpty(ids)) {
		WoKit.showWarn('请选择至少一个用户！');
		return;
	}
	WoKit.showConfirm('确认删除选中的用户吗？', function() {
		WoAjaxKit.requestJson({
			url : WoKit.basePath + 'control/user/delete?userIds=' + ids,
			success : Wobb.searchUser
		});
	});
};


Wobb.searchUser = function() {

	var data = WoKit.getFormData();

	WoAjaxKit.load({
		domSelector : '#woUserListPanelBody',
		url : WoKit.basePath + 'control/user/search',
		data : data
	})

}


//----------------------------菜单-------------------------------

Wobb.setRoleRelatedMenus = function (roleId) {
	var menuIds = WoKit.getListSelectedIds('#woMenuListPanelHeaderForm');
	WoAjaxKit.requestJson({
		url : WoKit.basePath + 'sys/role/setRelatedMenus',
		data : {
			'menuIds' : menuIds,
			'roleId' : roleId
		},
		success : function () {
			WoKit.destroyMainFrame();
		}
	});
};



Wobb.loadRoleRelatedMenusList = function () {
	var id = WoKit.getListSelectedIds();
	if (WoKit.isEmpty(id) || id.indexOf(',') > 0) {
		WoKit.showWarn('请选择一个角色！');
		return;
	}
	WoKit.loadMainFrame({
		url : WoKit.basePath + 'sys/role/loadRoleRelatedMenusList?roleId=' + id
	});
};



Wobb.loadMenuCreateForm = function() {
	WoKit.loadMainFrame({
		url : WoKit.basePath + 'sys/menu/loadCreateForm'
	});
};



Wobb.submitMenuCreateForm = function() {
	Wobb.submitForm({
		domSelector : '#woMenuCreateForm',
		url : 'sys/menu/create',
		success : Wobb.searchMenu
	});
};

Wobb.loadMenuUpdateForm = function() {
	var id = WoKit.getListSelectedIds();
	if (WoKit.isEmpty(id) || id.indexOf(',') > 0) {
		WoKit.showWarn('请选择一个菜单！');
		return;
	}
	WoKit.loadMainFrame({
		url : WoKit.basePath + 'sys/menu/loadUpdateForm?id=' + id
	});
};

Wobb.submitMenuUpdateForm = function() {
	Wobb.submitForm({
		domSelector : '#woMenuUpdateForm',
		url : 'sys/menu/update',
		success : Wobb.searchMenu
	});
};

Wobb.deleteMenus = function() {
	var ids = WoKit.getListSelectedIds();
	if (WoKit.isEmpty(ids)) {
		WoKit.showWarn('请选择至少一个菜单！');
		return;
	}
	WoKit.showConfirm('确认删除选中的菜单吗？', function() {
		WoAjaxKit.requestJson({
			url : WoKit.basePath + 'sys/menu/delete?ids=' + ids,
			success : Wobb.searchMenu
		});
	});
};





Wobb.searchMenu = function() {

	var data = WoKit.getFormData();

	WoAjaxKit.load({
		domSelector : '#woMenuListPanelBody',
		url : WoKit.basePath + 'sys/menu/search',
		data : data
	})

}




Wobb.loadSubMenuCreateForm = function(id) {
	WoKit.loadMainFrame({
		url : WoKit.basePath + 'sys/menu/loadSubMenuCreateForm?id=' + id
	});
};



Wobb.submitSubMenuCreateForm = function() {
	Wobb.submitForm({
		domSelector : '#woSubMenuCreateForm',
		url : 'sys/menu/createSubMenu',
		success : Wobb.searchMenu
	});
};



//-----------------------------宝贝----------------------------------

Wobb.loadBabyCreateForm = function() {
	WoKit.loadMainFrame({
		url : WoKit.basePath + 'sys/baby/loadCreateForm'
	});
};



Wobb.submitBabyCreateForm = function() {
	Wobb.submitForm({
		domSelector : '#woBabyCreateForm',
		url : 'sys/baby/create',
		success : Wobb.searchBaby
	});
};

Wobb.loadBabyUpdateForm = function() {
	var id = WoKit.getListSelectedIds();
	if (WoKit.isEmpty(id) || id.indexOf(',') > 0) {
		WoKit.showWarn('请选择一个宝贝！');
		return;
	}
	WoKit.loadMainFrame({
		url : WoKit.basePath + 'sys/baby/loadUpdateForm?bid=' + id
	});
};

Wobb.submitBabyUpdateForm = function() {
	Wobb.submitForm({
		domSelector : '#woBabyUpdateForm',
		url : 'sys/baby/update',
		success : Wobb.searchBaby
	});
};

Wobb.deleteBabys = function() {
	var ids = WoKit.getListSelectedIds();
	if (WoKit.isEmpty(ids)) {
		WoKit.showWarn('请选择至少一个宝贝！');
		return;
	}
	WoKit.showConfirm('确认删除选中的宝贝吗？', function() {
		WoAjaxKit.requestJson({
			url : WoKit.basePath + 'sys/baby/delete?bids=' + ids,
			success : Wobb.searchBaby
		});
	});
};

Wobb.searchBaby = function() {

	var data = WoKit.getFormData();

	WoAjaxKit.load({
		domSelector : '#woBabyListPanelBody',
		url : WoKit.basePath + 'sys/baby/search',
		data : data
	});

};


//---------------------------卡---------------------------
Wobb.loadCardCreateForm = function() {
	WoKit.loadMainFrame({
		url : WoKit.basePath + 'sys/card/loadCreateForm'
	});
};



Wobb.submitCardCreateForm = function() {
	Wobb.submitForm({
		domSelector : '#woCardCreateForm',
		url : 'sys/card/create',
		success : Wobb.searchCard
	});
};

Wobb.loadCardUpdateForm = function() {
	var id = WoKit.getListSelectedIds();
	if (WoKit.isEmpty(id) || id.indexOf(',') > 0) {
		WoKit.showWarn('请选择一个卡！');
		return;
	}
	WoKit.loadMainFrame({
		url : WoKit.basePath + 'sys/card/loadUpdateForm?id=' + id
	});
};

Wobb.submitCardUpdateForm = function() {
	Wobb.submitForm({
		domSelector : '#woCardUpdateForm',
		url : 'sys/card/update',
		success : Wobb.searchCard
	});
};

Wobb.deleteCards = function() {
	var ids = WoKit.getListSelectedIds();
	if (WoKit.isEmpty(ids)) {
		WoKit.showWarn('请选择至少一个卡！');
		return;
	}
	WoKit.showConfirm('确认删除选中的卡吗？', function() {
		WoAjaxKit.requestJson({
			url : WoKit.basePath + 'sys/card/delete?ids=' + ids,
			success : Wobb.searchCard
		});
	});
};

Wobb.searchCard = function() {

	var data = WoKit.getFormData();

	WoAjaxKit.load({
		domSelector : '#woCardListPanelBody',
		url : WoKit.basePath + 'sys/card/search',
		data : data
	});
	
	
};

//--------------------------------角色---------------------------------
Wobb.loadRoleCreateForm = function() {
	WoKit.loadMainFrame({
		url : WoKit.basePath + 'sys/role/loadCreateForm'
	});
};



Wobb.submitRoleCreateForm = function() {
	Wobb.submitForm({
		domSelector : '#woRoleCreateForm',
		url : 'sys/role/create',
		success : Wobb.searchRole
	});
};

Wobb.loadRoleUpdateForm = function() {
	var id = WoKit.getListSelectedIds();
	if (WoKit.isEmpty(id) || id.indexOf(',') > 0) {
		WoKit.showWarn('请选择一个角色！');
		return;
	}
	WoKit.loadMainFrame({
		url : WoKit.basePath + 'sys/role/loadUpdateForm?id=' + id
	});
};

Wobb.submitRoleUpdateForm = function() {
	Wobb.submitForm({
		domSelector : '#woRoleUpdateForm',
		url : 'sys/role/update',
		success : Wobb.searchRole
	});
};

Wobb.deleteRoles = function() {
	var ids = WoKit.getListSelectedIds();
	if (WoKit.isEmpty(ids)) {
		WoKit.showWarn('请选择至少一个角色！');
		return;
	}
	WoKit.showConfirm('确认删除选中的角色吗？', function() {
		WoAjaxKit.requestJson({
			url : WoKit.basePath + 'sys/role/delete?ids=' + ids,
			success : Wobb.searchRole
		});
	});
};

Wobb.searchRole = function() {

	var data = WoKit.getFormData();

	WoAjaxKit.load({
		domSelector : '#woRoleListPanelBody',
		url : WoKit.basePath + 'sys/role/search',
		data : data
	});

};


/********************************************************/
Wobb.loadArticlesCreateForm = function() {
	WoKit.loadMainFrame({
		url : WoKit.basePath + 'control/articles/loadCreateForm'
	});
};



Wobb.submitArticlesCreateForm = function() {
	Wobb.submitForm({
		domSelector : '#woArticlesCreateForm',
		url : 'control/articles/create',
		success : Wobb.searchArticles
	});
};

Wobb.loadArticlesUpdateForm = function() {
	var id = WoKit.getListSelectedIds();
	if (WoKit.isEmpty(id) || id.indexOf(',') > 0) {
		WoKit.showWarn('请选择一个文章！');
		return;
	}
	WoKit.loadMainFrame({
		url : WoKit.basePath + 'control/articles/loadUpdateForm?articlesId=' + id
	});
};

Wobb.submitArticlesUpdateForm = function() {
	Wobb.submitForm({
		domSelector : '#woArticlesUpdateForm',
		url : 'control/articles/update',
		success : Wobb.searchArticles
	});
};

Wobb.deleteArticles = function() {
	var ids = WoKit.getListSelectedIds();
	if (WoKit.isEmpty(ids)) {
		WoKit.showWarn('请选择至少一个文章！');
		return;
	}
	WoKit.showConfirm('确认删除选中的文章吗？', function() {
		WoAjaxKit.requestJson({
			url : WoKit.basePath + 'control/articles/delete?articlesIds=' + ids,
			success : Wobb.searchArticles
		});
	});
};

Wobb.searchArticles = function() {

	var data = WoKit.getFormData();

	WoAjaxKit.load({
		domSelector : '#woArticlesListPanelBody',
		url : WoKit.basePath + 'control/articles/search',
		data : data
	});

};

/***********************************************************************************/

Wobb.loadRecipeCreateForm = function() {
	WoKit.loadMainFrame({
		url : WoKit.basePath + 'control/recipe/loadCreateForm'
	});
};



Wobb.submitRecipeCreateForm = function() {
	Wobb.submitForm({
		domSelector : '#woRecipeCreateForm',
		url : 'control/recipe/create',
		success : Wobb.searchRecipe
	});
};

Wobb.loadRecipeUpdateForm = function() {
	var id = WoKit.getListSelectedIds();
	if (WoKit.isEmpty(id) || id.indexOf(',') > 0) {
		WoKit.showWarn('请选择一个文章！');
		return;
	}
	WoKit.loadMainFrame({
		url : WoKit.basePath + 'control/recipe/loadUpdateForm?recipeId=' + id
	});
};

Wobb.submitRecipeUpdateForm = function() {
	Wobb.submitForm({
		domSelector : '#woRecipeUpdateForm',
		url : 'control/recipe/update',
		success : Wobb.searchRecipe
	});
};

Wobb.deleteRecipe = function() {
	var ids = WoKit.getListSelectedIds();
	if (WoKit.isEmpty(ids)) {
		WoKit.showWarn('请选择至少一个文章！');
		return;
	}
	WoKit.showConfirm('确认删除选中的文章吗？', function() {
		WoAjaxKit.requestJson({
			url : WoKit.basePath + 'control/recipe/delete?recipeIds=' + ids,
			success : Wobb.searchRecipe
		});
	});
};

Wobb.searchRecipe = function() {

	var data = WoKit.getFormData();

	WoAjaxKit.load({
		domSelector : '#woRecipeListPanelBody',
		url : WoKit.basePath + 'control/recipe/search',
		data : data
	});

};


/***********************************************************************************/

Wobb.loadFoodCreateForm = function() {
	WoKit.loadMainFrame({
		url : WoKit.basePath + 'control/food/loadCreateForm'
	});
};



Wobb.submitFoodCreateForm = function() {
	Wobb.submitForm({
		domSelector : '#woFoodCreateForm',
		url : 'control/food/create',
		success : Wobb.searchFood
	});
};

Wobb.loadFoodUpdateForm = function() {
	var id = WoKit.getListSelectedIds();
	if (WoKit.isEmpty(id) || id.indexOf(',') > 0) {
		WoKit.showWarn('请选择一个文章！');
		return;
	}
	WoKit.loadMainFrame({
		url : WoKit.basePath + 'control/food/loadUpdateForm?foodId=' + id
	});
};

Wobb.submitFoodUpdateForm = function() {
	Wobb.submitForm({
		domSelector : '#woFoodUpdateForm',
		url : 'control/food/update',
		success : Wobb.searchFood
	});
};

Wobb.deleteFood = function() {
	var ids = WoKit.getListSelectedIds();
	if (WoKit.isEmpty(ids)) {
		WoKit.showWarn('请选择至少一个文章！');
		return;
	}
	WoKit.showConfirm('确认删除选中的文章吗？', function() {
		WoAjaxKit.requestJson({
			url : WoKit.basePath + 'control/food/delete?foodIds=' + ids,
			success : Wobb.searchFood
		});
	});
};

Wobb.searchFood = function() {

	var data = WoKit.getFormData();

	WoAjaxKit.load({
		domSelector : '#woFoodListPanelBody',
		url : WoKit.basePath + 'control/food/search',
		data : data
	});

};
/***********************************************************************************/

Wobb.loadGoodsCreateForm = function() {
	WoKit.loadMainFrame({
		url : WoKit.basePath + 'control/goods/loadCreateForm'
	});
};



Wobb.submitGoodsCreateForm = function() {
	Wobb.submitForm({
		domSelector : '#woGoodsCreateForm',
		url : 'control/goods/create',
		success : Wobb.searchGoods
	});
};

Wobb.loadGoodsUpdateForm = function() {
	var id = WoKit.getListSelectedIds();
	if (WoKit.isEmpty(id) || id.indexOf(',') > 0) {
		WoKit.showWarn('请选择一个商品！');
		return;
	}
	WoKit.loadMainFrame({
		url : WoKit.basePath + 'control/goods/loadUpdateForm?goodsId=' + id
	});
};

Wobb.submitGoodsUpdateForm = function() {
	Wobb.submitForm({
		domSelector : '#woGoodsUpdateForm',
		url : 'control/goods/update',
		success : Wobb.searchGoods
	});
};

Wobb.deleteGoods = function() {
	var ids = WoKit.getListSelectedIds();
	if (WoKit.isEmpty(ids)) {
		WoKit.showWarn('请选择至少一个商品！');
		return;
	}
	WoKit.showConfirm('确认删除选中的商品吗？', function() {
		WoAjaxKit.requestJson({
			url : WoKit.basePath + 'control/goods/delete?goodsIds=' + ids,
			success : Wobb.searchGoods
		});
	});
};

Wobb.searchGoods = function() {

	var data = WoKit.getFormData();

	WoAjaxKit.load({
		domSelector : '#woGoodsListPanelBody',
		url : WoKit.basePath + 'control/goods/search',
		data : data
	});

};
