
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

function getRootPath_web() {
	 //获取当前网址，如： http://localhost:8083/uimcardprj/share/meun.jsp
	 var curWwwPath = window.document.location.href;
	 //获取主机地址之后的目录，如： uimcardprj/share/meun.jsp
	 var pathName = window.document.location.pathname;
	 var pos = curWwwPath.indexOf(pathName);
	 //获取主机地址，如： http://localhost:8083
	 var localhostPaht = curWwwPath.substring(0, pos);
	 //获取带"/"的项目名，如：/uimcardprj
	 var projectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);
	 return (localhostPaht + projectName);
	}
