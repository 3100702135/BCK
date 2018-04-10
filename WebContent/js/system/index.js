$(function() {
	var showUserName = $('#showUserName').text().replace(/^(\s|\u00A0)+/, '')
			.replace(/(\s|\u00A0)+$/, '');
	if (showUserName != null && showUserName != "") {
		document.getElementById("registerOrLogin").style.display = "none";
	}
	

});

function login_submit() {
	debugger; 
		var userName = $("*[name='userNameLogin']").val();;
		var passWord = $("*[name='passWordLogin']").val();;
		$.ajax({
			url : "system/toLogin",
			type : "post",
			dataType : "json",
			cache:false,
			async : false,
			data : {
				userName : userName,
				passWord : passWord
			},
			success : function(response) {
				debugger;
				var result = response.result;
				if (result == "success") {
					document.getElementById("registerOrLogin").style.display = "none";
					window.location.href = "system/index?"+"userName="+response.userName+"&userId="+response.userId;
				} else {
					alert("请检查用户名和密码或点击注册!");
				}
			},
			error : function(err) {
				debugger;
				// 导致出错的原因较多，以后再研究
				alert('error:' + JSON.stringify(err));
			}
		});

}

function register_submit() {
	debugger; 
		var userName = $("#userName").val();
		var passWord = $("#passWord").val();
		var mail = $("#mail").val();
		var tel = $("#tel").val();
		var ip = "";
		var user = {};/* 声明对象字面变量*/
		user.userName = userName;
		user.passWord = passWord;
		user.mail = mail;
		user.tel = tel;
		user.ip = ip;
		$.ajax({
			url : "system/toRegister",
			async : false,
			cache : false,
			type : "post",
			dataType : "json",
			data : {
				userName : userName,
				passWord : passWord,
				mail : mail,
				tel : tel,
				ip : ip
			},
			success : function(response) {
				debugger;
				var result = response.result;
				if (result == "success") {
					window.location.href = "system/index?"+"userName="+response.userName+"&userId="+response.userId;
				} else {
					alert("注册失败!");
				}
			},
			error : function(err) {
				debugger;
				// 导致出错的原因较多，以后再研究
				alert('error:' + JSON.stringify(err));
				window.location.href = "system/index";
			}
		});
}

$(function() {

});