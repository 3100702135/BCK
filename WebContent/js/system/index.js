$(function() {
	debugger;
	var showUserName = $('#showUserName').text().replace(/^(\s|\u00A0)+/,'').replace(/(\s|\u00A0)+$/,'');
	if(showUserName!=null && showUserName!="" )
	{
		 document.getElementById("registerOrLogin").style.display = "none";
	}
});


function login_submit(){
	debugger;
	var userName = $('#userName').val();
	var passWord = $('#passWord').val();
	$.ajax({
		url:"system/toLogin",
		type:"post",
		dataType:"json",
		data:{
			userName:userName,
			passWord:passWord
		},
		success:function(data){
			debugger;
			var result = data;
			if(result.code != "01"){
				 document.getElementById("registerOrLogin").hidden();
				window.location.href="index.jsp";
			}else if(result.code =="100003"){
				alert("用户名或者密码错误!");
			}else if(result.code =="100004") {
				alert("该用户已离职,无法登陆!");
			}else if(result.code =="100009") {
				showModal("dialogDetail");
			}else{
				alert("该用户没有绑定角色信息,请联系管理员!");
			}
		},
	  error: function(err) {
		  debugger;
	   	// 导致出错的原因较多，以后再研究
	  	alert('error:' + JSON.stringify(err));
	  }
	});
	}

function register_submit(){
	debugger;
		var userName = $("#userName").val();
		var passWord = $("#passWord").val();
		var mail = $("#mail").val();
		var tel = $("#tel").val();
		var ip = "";
		var user={};/* 声明对象字面变量*/
		user.userName= userName;
		user.passWord= passWord;
		user.mail= mail;
		user.tel= tel;
		user.ip= ip;
		$.ajax({
		url:"system/toRegister",
		async : false,
		cache : false,
		type : "post",
		dataType:"json",
		data:{
			userName:userName,
			passWord:passWord,
			mail:mail,
			tel:tel,
			ip:ip
			},
		success:function(response, status){
			debugger;
			var result = response;
			if(result.code != "100003" && result.code !="100004" && result.code !="100005"&&result.code!="100009"){
				window.location.href="index.jsp";
			}else if(result.code =="100003"){
				alert("用户名或者密码错误!");
			}else if(result.code =="100004") {
				alert("该用户已离职,无法登陆!");
			}else if(result.code =="100009") {
				showModal("dialogDetail");
			}else{
				alert("该用户没有绑定角色信息,请联系管理员!");
			}
		},
	   error: function(err) {
		  debugger;
	   	// 导致出错的原因较多，以后再研究
	  	alert('error:' + JSON.stringify(err));
	  }
		});
	}
