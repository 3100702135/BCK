
function btnLogin(){
	debugger;
		var userName = $('#userName').val();
		var passWord = $('#passWord').val();
		$.ajax({url:"/user/login",
				data:{
					userName:userName,
					passWord: passWord
				},
				success:function(response, status){
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
				type:"post",
				dataType:"json"
		});
	}
