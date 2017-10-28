$(function(){
	//加hover事件=========================================================
	$(".ripper_cart_left_thumbnail,.ripper_cart_right .ripper_cart_right_classify_pic").on("click", "li", function(){

		$("[name=id]").val($(this).find("img").attr("id"));



		$(".ripper_cart_left_thumbnail li").css("border", "1px solid #d0d0d0").css("padding", "3px");
		$(this).css("border", "2px solid #fdb523").css("padding", '2px');

		$(".ripper_cart_left_bigpic img").css("display", "none");
		$(".ripper_cart_left_bigpic img").eq($(this).index()).css("display", "block");

		$(".ripper_cart_right_title_content span").css("display", "none");
		$(".ripper_cart_right_title_content span").eq($(this).index()).css("display", "block");

		$(".ripper_cart_right_txt_right span").css("display", "none");
		$(".ripper_cart_right_txt_right span").eq($(this).index()).css("display", "block");

		$(".ripper_cart_right_price .ripper_cart_right_txt span").css("display", "none");
		$(".ripper_cart_right_price .ripper_cart_right_txt span").eq($(this).index()).css("display", "block");

		$(".ripper_cart_right .ripper_cart_right_classify_pic li").css("border", "1px solid #d0d0d0");
		$(".ripper_cart_right .ripper_cart_right_classify_pic li").eq($(this).index()).css("border", "2px solid #fdb523") ;

		$(".ripper_cart_left_thumbnail li").css("border", '1px solid #d0d0d0').css("padding", "3px");
		$(".ripper_cart_left_thumbnail li").eq($(this).index()).css("border", "2px solid #fdb523").css("padding", "2px");
	})
	//顶部菜单中的hover
	
	//数量的增加和减少=========================================
	$(".ripper_cart_right_number_frame .plus").click(function(){
		$(".ripper_cart_right_number_frame .input_box").val(parseInt($(".ripper_cart_right_number_frame .input_box").val())+1);
		
		$("[name=count]").val($(".input_box").val());
	});
	$(".ripper_cart_right_number_frame .minus").click(function(){
		if(parseInt($(".ripper_cart_right_number_frame .input_box").val())>1){
			$(".ripper_cart_right_number_frame .input_box").val(parseInt($(".ripper_cart_right_number_frame .input_box").val())-1);
		$("[name=count]").val($(".input_box").val());

		}
		
	})
	//信息文本框渐入
	$(".ripper_side .ripper_side_icon a:eq(0)").hover(function(){
		$(".ripper_side .ripper_side_txt_1").stop().animate({left:-68, opacity:1},300, function(){})
	}, function(){
		$(".ripper_side .ripper_side_txt_1").stop().animate({left:-94, opacity:0},300, function(){})
	}) 
	$(".ripper_side .ripper_side_icon a:eq(2)").hover(function(){
		$(".ripper_side .ripper_side_txt_2").stop().animate({left:-68, opacity:1},300, function(){})
	}, function(){
		$(".ripper_side .ripper_side_txt_2").stop().animate({left:-94, opacity:0},300, function(){})
	}) 
	//购物车渐入
	$(".ripper_cart_right_button .shop_cart").click(function(){
		$(".ripper_side .enter_cart").stop().animate({right:40, opacity:1},500, function(){});
		$(".settle_accounts").css("background", "#f89a29").css("cursor", "pointer");
		return false;
		
	})

	$(".ripper_side .ripper_side_icon a").eq(1).click(function(){
		// alert(123);

		$('.ripper_side .enter_cart').stop().animate({right:40, opacity:1}, 500, function(){});
		return false;
	})
	$(document).click(function(){
		$(".ripper_side .enter_cart").stop().animate({right:80, opacity:0},300, function(){});
		
	})
	//给品类文本框加hover
	$(".ripper_cart_right_classify_pic_1").hover(function(){
		$(this).find("span").stop().animate({bottom:76, opacity:1},300,function(){});
	},function(){
		$(this).find("span").stop().animate({bottom:95, opacity:0},300,function(){});
	})
	$(".ripper_cart_right_classify_pic_2").hover(function(){
		$(this).find("span").stop().animate({bottom:76, opacity:1},300,function(){});
	},function(){
		$(this).find("span").stop().animate({bottom:95, opacity:0},300,function(){});
	})
	//给加入购物车按钮加hover时间
	$(".ripper_cart .ripper_cart_right_button .shop_cart").hover(function(){
		$(this).css("opacity", "0.9")
	},function(){
		$(this).css("opacity", "1")
	})

	//返回顶部=====================================
	$(window).scroll(function(){
		if($(this).scrollTop() > 800){
			$(".ripper_side .ripper_side_icon a:nth-of-type(3)").css("display" ,"block");
			$(".ripper_side .ripper_side_icon a:nth-of-type(3)").click(function(){
				$("body,html").stop().animate({
					scrollTop:0
				},500);
			})
		}else{
			$(".ripper_side .ripper_side_icon a:nth-of-type(3)").css("display" ,"none");
		}
	
	})
	
	 
	//顶部菜单
	$(window).scroll(function(){
		if($(this).scrollTop()> 700){ 
			$(".ripper_hang").css("display", "block");
			// var isTrue = false;
			$(".ripper_hang .ripper_hang_right span").click(function(){
				$(".ripper_hang .ripper_hang_detail").css("display", "block");



							$(".ripper_hang_detail .ripper_cart_right_classify_pic").on("click", "li", function(){
					$(".ripper_hang_detail .ripper_cart_right_title_content span").css("display", "none");
					$(".ripper_hang_detail .ripper_cart_right_title_content span").eq($(this).index()).css("display", "block");
					$(".ripper_hang_detail .ripper_cart_right_classify_pic li").css("border", "2px solid white");
					$(".ripper_hang_detail .ripper_cart_right_classify_pic li").eq($(this).index()).css("border", "2px solid #fdb523");
				})




				// var isTrue = true;
				return false;
			})
			/*if(!isTrue){
				$(".ripper_hang .ripper_hang_right span").click(function(){
				$(".ripper_hang .ripper_hang_detail").css("display", "block");
				
				return false;
				})
			}else{
				$(".ripper_hang .ripper_hang_right span").click(function(){
				$(".ripper_hang .ripper_hang_detail").css("display", "none");
				
				return false;
				})
			}*/
			$(document).click(function(){
				$(".ripper_hang .ripper_hang_detail").css("display", "none");
			})
		}else{
			$(".ripper_hang").css("display", "none");
		}
	})
 
		 
})