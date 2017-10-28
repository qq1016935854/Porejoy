$(function(){
	$(".slideregistor").click(function(){
		$(".loginin").animate({left:-300,opacity:0},function(){
			
		})
		$('.registorin').animate({left:0,opacity:1},function(){
			
		})
	})
	$(".slidelogin").click(function(){
		$('.registorin').animate({left:300,opacity:0},function(){
			
		})
		$(".loginin").animate({left:0,opacity:1},function(){
			
		})
	})


	/*$(".submit").click(function(){
		var str = $(".username").val();
		var pattern = /^1[3|4|5|7|8][0-9]{9}$/ ;
		var re = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;

		var str1 = $(".password").val();
		var pattern1 = /^([0-9]|[a-zA-Z]){6,16}$/;
		if(pattern.test(str) || re.test(str)){
			
		}else{
			$(".check").css("display","block");
			$(".allcolor").css("display","block");
		}
		if(pattern1.test(str1)){

		}else{
			$(".check").css("display","block");
			$(".allcolor").css("display","block");
		}
		if(pattern.test(str) || re.test(str) && pattern1.test(str1)){
			alert("登陆成功")
		}
	})
	$(".submit1").click(function(){
		var str2 = $(".username1").val();
		var re1 = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;
		var str1 = $(".password1").val();
		var pattern1 = /^([0-9]|[a-zA-Z]){6,16}$/;
		if(re1.test(str2)){

		}else{
			$(".check").css("display","block");
			$(".allcolor").css("display","block");
		}
		if(pattern1.test(str1)){

		}else{
			$(".check").css("display","block");
			$(".allcolor").css("display","block");			
		}

		// if(!$(".confirm-password").val()){
		// 	$(".check").css("display","block");
		// 	$(".allcolor").css("display","block");
		// 	$(".check").find("p").html("请输入确认密码")
		// }

		// if(!$(".password1").val()){
		// 	$(".check").css("display","block");
		// 	$(".allcolor").css("display","block");
		// 	$(".check").find("p").html("请输入密码")
		// }

		if(!$(".username1").val()){
			$(".check").css("display","block");
			$(".allcolor").css("display","block");
			$(".check").find("p").html("请输入用户名")
		}else if(!$(".password1").val()){
			$(".check").css("display","block");
			$(".allcolor").css("display","block");
			$(".check").find("p").html("请输入密码")
		}else if(!$(".confirm-password").val()){
			$(".check").css("display","block");
			$(".allcolor").css("display","block");
			$(".check").find("p").html("请输入确认密码")			
		}else{
			
		}


		if($(".confirm-password").val() == $(".password1").val()){

		}else{
			$(".check").css("display","block");
			$(".allcolor").css("display","block");

		}
		if(re1.test(str2) && pattern1.test(str1) && $(".confirm-password").val() == $(".password1").val()){
			$(".registor").submit();
		}
	})*/


	$(".confirmbtn").click(function(){
		$(".check").css("display","none");
		$(".allcolor").css("display","none");
	})
	$(".delete").click(function(){
		$(".check").css("display","none");
		$(".allcolor").css("display","none");
	})
})