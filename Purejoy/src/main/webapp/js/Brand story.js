$(function(){
	window.onscroll = function(){
		var scrollTop = document.body.scrollTop|| document.documentElement.scrollTop;
		if(scrollTop > 200){
			$(".left-side-nav").css("position","fixed");
			$(".left-side-nav").css("top","0");
		}
		if(scrollTop < 200){
			$(".left-side-nav").css("position","");

		}
	}
	$("#nav1").click(function(){
		$("body,html").stop().animate({
			scrollTop:246
		},500)
	})
	$("#nav2").click(function(){
		$("body,html").stop().animate({
			scrollTop:451
		},500)
	})
	$("#nav3").click(function(){
		$("body,html").stop().animate({
			scrollTop:628
		},500)
	})

// 246 451 628
})







