<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html lang="en">
<head>
	<title>Landee - Free Landing Page Template</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Free landing page website template">
	<meta name="author" content="The Develovers">

	<!-- CORE CSS -->
	<link href="<%=path%>/css/bootstrap.css" rel="stylesheet" type="text/css">
	<link href="<%=path%>/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	
	<!-- THEME CSS -->
	<link href="<%=path%>/css/main.css" rel="stylesheet" type="text/css">
	
	<!-- GOOGLE FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700%7CRoboto:300,400,700" rel="stylesheet">
	
	<!-- FAVICONS -->
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="<%=path%>/ico/landee144.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="<%=path%>/ico/landee114.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="<%=path%>/ico/landee72.png">
	<link rel="apple-touch-icon-precomposed" href="<%=path%>/ico/landee57.png">
	<link rel="shortcut icon" href="<%=path%>/ico/favicon.ico">
</head>
<body data-spy="scroll">
	
	<!-- WRAPPER -->
	<div id="wrapper">

		<!-- NAVBAR -->
		<nav id="main-navbar" class="navbar navbar-default navbar-fixed-top">
			<div class="container">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-nav-collapse">
					<span class="sr-only">Toggle Navigation</span>
					<i class="fa fa-bars"></i>
				</button>
				<a href="<%=path%>/system/index" class="navbar-brand">
					<img src="<%=path%>/images/logo.png" alt="Landee Logo">
				</a>
				<div id="main-nav-collapse" class="collapse navbar-collapse">
					<ul class="nav navbar-nav nav-onepage">
						<li class="active"><a href="<%=path%>/system/index">首页</a></li>
						<li><a href="<%=path%>/system/overview" target="view_window">白皮书</a></li>
						<li><a href="<%=path%>/system/features">发展历程</a></li>
						<li><a href="<%=path%>/system/team">团队介绍</a></li>
						<li><a href="<%=path%>/system/exchange"> 社区交流</a></li>
						<li><a href="<%=path%>/system/contact">联系我们</a></li>
						<li id="registerOrLogin" ><a data-toggle="modal" data-target="#register" href=""><span class="glyphicon glyphicon-user"></span>登录/注册</a></li>						
						<li class="dropdown"><a href="#" id="showUserName" class="dropdown-toggle" data-toggle="dropdown" >${user.userName} <b class="caret"></b>
					</a>
					<ul class="dropdown-menu">
						<li><a href="<%=path%>/#">个人中心</a></li>
						<li><a href="<%=path%>/#">我的消息</a></li>
						<li class="divider"></li>
						<li><a href="<%=path%>/#">退出登录</a></li>
					</ul></li>
				</ul>
			</div>
			</div>
		</nav>
		<!-- END NAVBAR -->
		<!-- HERO SECTION -->
		<section id="home" class="hero-unit-fullscreen parallax-window" data-parallax="scroll" data-image-src="<%=path%>/images/fullscreen-bg.jpg">
			<div class="overlay"></div>
			<div class="container">
				<div class="hero-content">
					<h1 class="hero-heading">白皮书</h1>
					<p class="lead">不仅仅是一份白皮书，是爱与责任！</p>
					<span class="onepage-links"><a href="<%=path%>/system/overview" target="view_window" class="btn btn-lg btn-primary">CHECK MORE</a></span>
				</div>
			</div>
		</section>
		<!-- END HERO SECTION -->
		<!-- CONTACT -->
		<section id="contact">
			<div class="container">
				<div class="section-heading">
					<h2 class="heading">联系我们</h2>
				</div>
				<div class="row">
					<div class="col-md-4">
						<p>
							<strong><i class="icon icon_pin_alt"></i> 联系地址：</strong>
							<br>
							<span>浙江省杭州市余杭区<br> XXX路XX号</span>
						</p>
						<br>
						<p>
							<strong><i class="icon icon_phone"></i> 联系电话</strong>
							<br>
							<span>热线 1: 1-(558) 968-0400 </span>
							<br>
							<span>热线 2: 1-(558) 968-1234 (备用)</span>
						</p>
						<br>
						<p>
							<strong><i class="icon icon_mail"></i> 邮箱：</strong>
							<br>
							<span>Email  : <a href="mailto:hello@yourdomain.com">hello@yourdomain.com</a></span>
						</p>
					</div>
					<div class="col-md-8">
						<form id="contact-form" class="form-horizontal form-minimal">
							<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
										<label for="contact-name" class="control-label sr-only">姓名</label>
										<input type="text" class="form-control" id="contact-name" placeholder="姓名 (必填)" required>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="form-group">
										<label for="contact-email" class="control-label sr-only">邮箱</label>
										<input type="email" class="form-control" id="contact-email" placeholder="邮箱号 (必填)" required>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="contact-subject" class="control-label sr-only">主题</label>
								<div class="col-sm-12">
									<input type="text" class="form-control" id="contact-subject" placeholder="主题内容 ">
								</div>
							</div>
							<div class="form-group">
								<label for="contact-message" class="control-label sr-only">留言内容</label>
								<div class="col-sm-12">
									<textarea class="form-control" id="contact-message" name="contact-message" rows="5" cols="30" placeholder="留言内容 (必填)" required></textarea>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<button type="submit" class="btn btn-primary">提交留言</button>
								</div>
							</div>
<!-- 					<pre name="code" class="html"><a href="Mailto:test@163.com?CC=test@163.com&BCC=test@163.com&Subject=Hello&Body=你好">给我发邮件</a></pre>
 -->						</form>
					</div>
				</div>
			</div>
		</section>
		<!-- END CONTACT -->

		<!-- FOOTER -->
		<footer class="footer-minimal">
			<div class="container">
				<nav>
					<ul class="list-unstyled list-inline margin-bottom-30px">
						<li><a href="<%=path%>/#">About</a></li>
						<li><a href="<%=path%>/#">Terms &amp; Condition</a></li>
						<li><a href="<%=path%>/#">Help</a></li>
					</ul>
				</nav>
				<ul class="list-inline social-icons social-icons-circle">
					<li><a href="<%=path%>/#"><i class="fa fa-facebook"></i></a></li>
					<li><a href="<%=path%>/#"><i class="fa fa-twitter"></i></a></li>
					<li><a href="<%=path%>/#"><i class="fa fa-rss"></i></a></li>
					<li><a href="<%=path%>/#"><i class="fa fa-youtube-play"></i></a></li>
					<li><a href="<%=path%>/#"><i class="fa fa-linkedin"></i></a></li>
				</ul>
				<p class="copyright-text">Designed &amp; Crafted by <a href="#" target="_blank">The Develovers</a> More Informations Please Tell Us </p>
			</div>
		</footer>
		<!-- END FOOTER -->

	</div>
	<!-- END WRAPPER -->
 <!-- 注册窗口 -->
     <div id="register" class="modal fade" tabindex="-1">
         <div class="modal-dialog">
             <div class="modal-content">
                 <div class="modal-body">
                     <button class="close" data-dismiss="modal">
                         <span>&times;</span>
                     </button>
                 </div>
                 <div class="modal-title">
                     <h1 class="text-center">注册</h1>
                 </div>
                 <div class="modal-body">
                     <form id="register_form" class="form-group" action="">
                             <div class="form-group">
                                 <label for="">用户名</label>
                                 <input id="userName" class="form-control" type="text" placeholder="6-15位字母或数字">
                             </div>
                             <div class="form-group">
                                 <label for="">密码</label>
                                 <input id="passWord" class="form-control" type="password" placeholder="至少6位字母或数字">
                             </div>
                             <div class="form-group">
                                 <label for="">再次输入密码</label>
                                 <input id="passWordCopy" class="form-control" type="password" placeholder="至少6位字母或数字">
                             </div>
                             <div class="form-group">
                                 <label for="">邮箱</label>
                                 <input id="mail" class="form-control" type="email" placeholder="例如:123@123.com">
                             </div>
                            <div class="form-group">
                                 <label for="">手机号</label>
                                 <input id="tel" class="form-control" type="tel" placeholder="例如:187........">
                             </div>
                             <div class="text-right">
                                 <button class="btn btn-primary" type="submit" onclick="register_submit()">提交</button>
                                 <button class="btn btn-danger" data-dismiss="modal">取消</button>
                             </div>
                             <a href="" data-toggle="modal" data-dismiss="modal" data-target="#login">已有账号？点我登录</a>
                     </form>
                 </div>
             </div>
         </div>
     </div>
     <!-- 登录窗口 -->
     <div id="login" class="modal fade">
         <div class="modal-dialog">
             <div class="modal-content">
                 <div class="modal-body">
                     <button class="close" data-dismiss="modal">
                         <span>&times;</span>
                     </button>
                 </div>
                 <div class="modal-title">
                     <h1 class="text-center">登录</h1>
                 </div>
                 <div class="modal-body">
                     <form id="login_form" name="login_form" class="form-group" action="">
                             <div class="form-group">
                                 <label for="">用户名</label>
                                 <input name="userName" class="form-control" type="text" placeholder="用户名">
                             </div>
                             <div class="form-group">
                                 <label for="">密码</label>
                                 <input name="passWord" class="form-control" type="password" placeholder="密码">
                             </div>
                             <div class="text-right">
                                 <button class="btn btn-primary" type="submit" onclick="login_submit()">登录</button>
                                 <button class="btn btn-danger" data-dismiss="modal">取消</button>
                             </div>
                             <a href="" data-toggle="modal" data-dismiss="modal" data-target="#register">还没有账号？点我注册</a>
                     </form>
                 </div>
             </div>
         </div>
     </div>
	<!-- JAVASCRIPT -->
	<script src="<%=path%>/js/jquery-2.1.1.min.js"></script>
	<script src="<%=path%>/js/bootstrap.min.js"></script>
	<script src="<%=path%>/js/plugins/scrolling/jquery.scrollTo-1.4.3.1-min.js"></script>
	<script src="<%=path%>/js/plugins/scrolling/jquery.localscroll-1.2.7-min.js"></script>
	<script src="<%=path%>/js/plugins/parallax/parallax.min.js"></script>
	<script src="<%=path%>/js/plugins/owl-carousel/owl.carousel.min.js"></script>
	<script src="<%=path%>/js/landee.js"></script>
	<script src="<%=path%>/js/system/index.js"></script>
	
</body>

</html>
</html>