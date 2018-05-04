<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String path = request.getContextPath();
System.out.print(path);
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
System.out.print(basePath);

	HttpSession httpSession=request.getSession();
	String userId = (String)httpSession.getAttribute("userId");
	String userName = (String)httpSession.getAttribute("userName");
	String passWord = (String)httpSession.getAttribute("passWord");

    session.setAttribute("userId", userId); 
    session.setAttribute("userName", userName);
    session.setAttribute("passWord", passWord); 
    Cookie cookieName=new Cookie("userName",userName); 
    Cookie cookieWord=new Cookie("passWord",passWord);  
    response.addCookie(cookieName); 
    response.addCookie(cookieWord); 
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
</head>
<body data-spy="scroll">
	<div class="row">
		<!-- NAVBAR -->
		<nav id="main-navbar" class="navbar navbar-default navbar-fixed-top navbar-solid-color">
			<div class="container">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-nav-collapse">
					<span class="sr-only">Toggle Navigation</span>
					<i class="fa fa-bars"></i>
				</button>
				<a href="<%=basePath%>/system/index" class="navbar-brand">
					<img src="<%=basePath%>/images/logo.png" alt="Landee Logo">
				</a>
				<div id="main-nav-collapse" class="collapse navbar-collapse">
					<ul class="nav navbar-nav nav-onepage">
						<li class="active"><a href="<%=basePath%>/system/index">首页</a></li>
						<li><a href="<%=basePath%>/system/overview" target="view_window">白皮书</a></li>
						<li><a href="<%=basePath%>/system/features">发展历程</a></li>
						<li><a href="<%=basePath%>/system/team">团队介绍</a></li>
						<li><a href="<%=basePath%>/system/exchange"> 社区交流</a></li>
						<li><a href="<%=basePath%>/system/contact">联系我们</a></li>
						<li id="registerOrLogin" ><a data-toggle="modal" data-target="#register" href=""><span class="glyphicon glyphicon-user"></span>登录/注册</a></li>						
						<li class="dropdown"><a href="#" id="showUserName" class="dropdown-toggle" data-toggle="dropdown" >${userName} <b class="caret"></b>
					</a>
					<ul class="dropdown-menu">
						<li><a href="<%=basePath%>/system/userCenter">个人中心</a></li>
						<li><a href="<%=basePath%>/system/userMessage">我的消息</a></li>
						<li class="divider"></li>
						<li><a href="<%=basePath%>/system/loginOut">退出登录</a></li>
					</ul></li>
				</ul>
			</div>
			</div>
		</nav>
		<!-- END NAVBAR -->
	</div>
		
	<script src="<%=basePath%>/js/common/common.js"></script>
</body>
</html>