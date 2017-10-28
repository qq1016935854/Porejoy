$(".order_1_delete").click(function(){
	$(this).parent().remove();
})

 
$(".num a").eq(0).click(function(){
	if($(".num span").html()>1){
		$(this).next().html(parseInt($(".num span").html())-1);
		/*$(".order_1_sum").html($(this).next().html()* $(".unitprice").html());*/
	}
	return false;
})


$(".num a").eq(1).click(function(){
	$(this).prev().html(parseInt($(".num span").html())+1);
	/*$(".order_1_sum").html($(this).prev().html()* $(".unitprice").html());*/
	return false;
})