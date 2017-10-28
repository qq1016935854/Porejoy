$(function() {
	$('#header_list li').mousemove(function() {
		$(this).addClass("active");
	})
	$('#header_list li').mouseleave(function() {
		$(this).removeClass("active");
	})
	$('#header_list li').click(function() {
		$(this).addClass("active");
		
	})
	
	
});


