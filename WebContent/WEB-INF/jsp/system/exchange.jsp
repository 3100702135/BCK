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

		<!-- PRICING -->
		<section id="pricing">
			<div class="container">
				<div class="section-heading">
					<h2 class="heading">社区交流</h2>
				</div>
				<P class="text-center lead">选择您对本项目感兴趣的方面. <br>赶快加入我们吧.</P>
				<div class="pricing-table-set">
					<div class="pricing-table">
						<h4 id="free-trial" class="pricing-heading">技术</h4>
						<p class="package-info">本群包含了本项目开发团队技术人员</p>
						<div class="pricing">
<!-- 							<strong class="price">$16</strong>
 -->							<span class="price-info">点击下方加入我们</span>
						</div>
						<a href="tencent://Message/?Uin=624709552&amp;websiteName=q-zone.qq.com&amp;Menu=yes" class="btn btn-default">JOIN IN</a>
						
					</div>
					<div class="pricing-table pricing-recommended">
						<span class="popular">最热</span>
						<h4 class="pricing-heading">推广共助</h4>
						<p class="package-info">群里都是满怀爱心♥之人</p>
						<div class="pricing">
<!-- 							<strong class="price">$64</strong>
 -->							<span class="price-info">点击下方加入我们</span>
						</div>
						<a href="tencent://Message/?Uin=624709552&amp;websiteName=q-zone.qq.com&amp;Menu=yes" class="btn btn-primary">JOIN IN</a>
					</div>
					<div class="pricing-table">
						<h4 class="pricing-heading">挖矿</h4>
						<p class="package-info">本群有详细教程，如何挖矿</p>
						<div class="pricing">
<!-- 							<strong class="price">$800</strong>
 -->							<span class="price-info">点击下方加入我们</span>
						</div>
						<a href="tencent://Message/?Uin=624709552&amp;websiteName=q-zone.qq.com&amp;Menu=yes" class="btn btn-default">JOIN IN</a>
					</div>
				</div>
			</div>
		</section>
		<!-- END PRICING -->

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