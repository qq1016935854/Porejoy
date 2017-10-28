$(function(){
	
	$(".shopping").on("click",function(ev){
			$(".shop-title").css("display","block");
			$(document).one("click",function(){
				$(".shop-title").css("display","none");
			})
			return false;
			
	})
	$(".shop-title").on("click",function(){
		return false;
	})
	$(".num-chan").on("click","div",function(){
		if($(this).attr("id") == "num-dec" && $(".num").val() > 1){
			$(".num").val(parseInt($(".num").val()) - 1);
		}
		if($(this).attr("id") == "num-add"){
			$(".num").val( parseInt($(".num").val()) + 1);
		}
	})
	$(".desc-peo").on("click","span",function(){
		$(".desc-peo").children().removeClass();
		$(this).addClass("peo-man");
	})
	$(".dest").on("click","li",function(){
		$(this).siblings().css({"border":"1px solid #ccc","padding":"4px"});
		$(this).css({"border":"2px solid #fdb523","padding":"3px"});
		$(".kind-context").children().css("border","none");
		$(".kind-context").children().eq($(this).index()).css("border","1px solid #fdb523");
		$("#big-img").children().css("display","none");
		$("#big-img").children().eq($(this).index()).css("display","block");
	})

	$("#line").on("click","li",function(){
		$("#line li").css("color","#ccc");
		$(this).css("color","#b3ce3e");
		$("#content").children().css("display","none");
		$("#content").children().eq($(this).index()).css("display","block");
		
	})
	$(window).scroll(function(){
		if($(window).scrollTop() >= 310){
			$(".back-top").css("display","block").click(function(){
				$('body,html').stop().animate({
					scrollTop : 0,
				},1000);
				return false;
			});
		}else{
			$(".back-top").css("display","none");
		}
		if($(window).scrollTop() >= 1018){
			$(".mid-line").css({
				"position":"fixed",
				"top":0,
			})
			$(".add-shop").css("display","block");
		}else{
			$(".mid-line").css({
				"position":"absolute",
				"top":0,
			})
			$(".add-shop").css("display","none");
		}
	})
})

