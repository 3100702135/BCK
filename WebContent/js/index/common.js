
function clickLogin(){
	debugger;
		$.ajax({url:"/index/clickLogin",
				success:function(response, status){
					var result = response;
					if(result.code != "100003" && result.code !="100004" && result.code !="100005"&&result.code!="100009"){
						window.location.href="login.html";
					}
					else{
						alert("该用户没有绑定角色信息,请联系管理员!");
					}
				},
				type:"post",
				dataType:"json"
		});
	}
