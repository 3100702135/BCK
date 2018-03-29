$(function() {
	debugger;
	var showUserName = $('#showUserName').text().replace(/^(\s|\u00A0)+/, '')
			.replace(/(\s|\u00A0)+$/, '');
	if (showUserName != null && showUserName != "") {
		document.getElementById("registerOrLogin").style.display = "none";
	}
});

function login_submit() {
	debugger;
	$("#login").bootstrapValidator('validate');//提交验证  
	if ($("#login").data('bootstrapValidator').isValid()) {//获取验证结果，如果成功，执行下面代码  
		var userName = $('#userName').val();
		var passWord = $('#passWord').val();
		$.ajax({
			url : "system/toLogin",
			type : "post",
			dataType : "json",
			data : {
				userName : userName,
				passWord : passWord
			},
			success : function(data) {
				debugger;
				var result = data;
				if (result.code != "01") {
					document.getElementById("registerOrLogin").hidden();
					window.location.href = "index.jsp";
				} else if (result.code == "100003") {
					alert("用户名或者密码错误!");
				} else if (result.code == "100004") {
					alert("该用户已离职,无法登陆!");
				} else if (result.code == "100009") {
					showModal("dialogDetail");
				} else {
					alert("该用户没有绑定角色信息,请联系管理员!");
				}
			},
			error : function(err) {
				debugger;
				// 导致出错的原因较多，以后再研究
				alert('error:' + JSON.stringify(err));
			}
		});
	}

}

function register_submit() {
	debugger;
	$("#register").bootstrapValidator('validate');//提交验证  
	if ($("#register").data('bootstrapValidator').isValid()) {//获取验证结果，如果成功，执行下面代码 
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
			success : function(response, status) {
				debugger;
				var result = response;
				if (result.code != "100003" && result.code != "100004"
						&& result.code != "100005" && result.code != "100009") {
					window.location.href = "index.jsp";
				} else if (result.code == "100003") {
					alert("用户名或者密码错误!");
				} else if (result.code == "100004") {
					alert("该用户已离职,无法登陆!");
				} else if (result.code == "100009") {
					showModal("dialogDetail");
				} else {
					alert("该用户没有绑定角色信息,请联系管理员!");
				}
			},
			error : function(err) {
				debugger;
				// 导致出错的原因较多，以后再研究
				alert('error:' + JSON.stringify(err));
			}
		});
	}
}

$(function() {
	$('register').bootstrapValidator({
		message : '请输入',
		feedbackIcons : {
			valid : 'glyphicon glyphicon-ok',
			invalid : 'glyphicon glyphicon-remove',
			validating : 'glyphicon glyphicon-refresh'
		},
		fields : {
			userName : {
				message : '用户名验证失败',
				validators : {
					notEmpty : {
						message : '用户名不能为空'
					},
					stringLength : {
						min : 6,
						max : 18,
						message : '用户名长度必须在6到18位之间'
					},
					regexp : {
						regexp : /^[a-zA-Z0-9_]+$/,
						message : '用户名只能包含大写、小写、数字和下划线'
					}
				}
			},
			passWord : {
				validators : {
					notEmpty : {
						message : '密码不能为空'
					},
					stringLength : {
						min : 6,
						max : 18,
						message : '用户名长度必须在6到18位之间'
					},
					regexp : {
						regexp : /^[a-zA-Z0-9_]+$/,
						message : '密码只能包含大写、小写、数字和下划线'
					}
				}
			},
			passWordCopy : {
				validators : {
					notEmpty : {
						message : '密码不能为空'
					},
					emailAddress : {
						message : '密码格式有误'
					}
				}
			},
			mail : {
				validators : {
					notEmpty : {
						message : '邮箱不能为空'
					},
					emailAddress : {
						message : '邮箱地址格式有误'
					}
				}
			},
			tel : {
				validators : {
					notEmpty : {
						message : '手机号不能为空'
					},
					stringLength : {
						min : 11,
						max : 18,
						message : '手机号长度必须在11到16位之间'
					},
					emailAddress : {
						message : '手机号格式有误'
					}
				}
			}
		}
	});

	$('login').bootstrapValidator({
		message : '请输入',
		feedbackIcons : {
			valid : 'glyphicon glyphicon-ok',
			invalid : 'glyphicon glyphicon-remove',
			validating : 'glyphicon glyphicon-refresh'
		},
		fields : {
			userName : {
				message : '用户名验证失败',
				validators : {
					notEmpty : {
						message : '用户名不能为空'
					}
				}
			},
			passWord : {
				validators : {
					notEmpty : {
						message : '邮箱地址不能为空'
					}
				}
			}
		}
	});
});