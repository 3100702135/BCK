<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String path = request.getContextPath();
System.out.print(path);
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
System.out.print(basePath);
%>
<html lang="en">
<head>
	<title>区块筹（BCF）基于现实需求激励、去中心化、非盈利的医疗互助应用平台</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Free landing page website template">
	<meta name="author" content="The Develovers">

	<!-- CORE CSS -->
	<link href="<%=basePath%>/css/bootstrap.css" rel="stylesheet" type="text/css">
	<link href="<%=basePath%>/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	
	<!-- THEME CSS -->
	<link href="<%=basePath%>/css/main.css" rel="stylesheet" type="text/css">
	
	<!-- GOOGLE FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700%7CRoboto:300,400,700" rel="stylesheet">
	
	<!-- FAVICONS -->
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="<%=basePath%>/ico/landee144.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="<%=basePath%>/ico/landee114.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="<%=basePath%>/ico/landee72.png">
	<link rel="apple-touch-icon-precomposed" href="<%=basePath%>/ico/landee57.png">
	<link rel="shortcut icon" href="<%=basePath%>/ico/favicon.ico">
</head>
<body data-spy="scroll">
	<!-- WRAPPER -->
	<div id="wrapper">
	<jsp:include page="../head.jsp"></jsp:include>	
			<br>
		<!-- FEATURES -->
		<section id="features">
			<div class="container">
				<div class="section-heading">
					<h2 class="heading">白皮书</h2>
				</div>
				<div class="container">
					<div class="row feature-item">
						<div class="col-sm-12">
					<iframe src="<%=basePath%>/images/whiteBook.pdf"  width="100%"  height="1000PX" ></iframe>
						</div>
					</div>
				</div>
			</div>
		</section>
		
		
		<!-- FOOTER -->
		<footer class="footer-minimal">
			<div class="container">
				<nav>
					<ul class="list-unstyled list-inline margin-bottom-30px">
						<li><a href="<%=basePath%>/#">About</a></li>
						<li><a href="<%=basePath%>/#">Terms &amp; Condition</a></li>
						<li><a href="<%=basePath%>/#">Help</a></li>
					</ul>
				</nav>
				<ul class="list-inline social-icons social-icons-circle">
					<li><a href="<%=basePath%>/#"><i class="fa fa-facebook"></i></a></li>
					<li><a href="<%=basePath%>/#"><i class="fa fa-twitter"></i></a></li>
					<li><a href="<%=basePath%>/#"><i class="fa fa-rss"></i></a></li>
					<li><a href="<%=basePath%>/#"><i class="fa fa-youtube-play"></i></a></li>
					<li><a href="<%=basePath%>/#"><i class="fa fa-linkedin"></i></a></li>
				</ul>
				<p class="copyright-text">Designed &amp; Crafted by <a href="#" target="_blank">The Develovers</a> More Templates <a href="<%=basePath%>/http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="<%=basePath%>/http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
			</div>
		</footer>
		<!-- END FOOTER -->

	</div>
	<!-- END WRAPPER -->
	<!-- JAVASCRIPT -->
	<script src="<%=basePath%>/js/jquery-2.1.1.min.js"></script>
	<script src="<%=basePath%>/js/bootstrap.min.js"></script>
	<script src="<%=basePath%>/js/plugins/scrolling/jquery.scrollTo-1.4.3.1-min.js"></script>
	<script src="<%=basePath%>/js/plugins/scrolling/jquery.localscroll-1.2.7-min.js"></script>
	<script src="<%=basePath%>/js/plugins/parallax/parallax.min.js"></script>
	<script src="<%=basePath%>/js/plugins/owl-carousel/owl.carousel.min.js"></script>
	<script src="<%=basePath%>/js/landee.js"></script>
	<script src="<%=basePath%>/js/system/index.js"></script>
	
</body>

</html>
</html>