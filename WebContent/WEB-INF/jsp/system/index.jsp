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
	<title>区块筹（BCCF）基于现实需求激励、去中心化、非盈利的医疗互助应用平台</title>
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

		<!-- HERO SECTION -->
		<section id="home" class="hero-unit-fullscreen parallax-window" data-parallax="scroll" data-image-src="<%=basePath%>/images/fullscreen-bg.jpg">
			<div class="overlay"></div>
			<div class="container">
				<div class="hero-content">
					<h1 class="hero-heading">白皮书</h1>
					<p class="lead">不仅仅是一份白皮书，更是爱与责任宣言！</p>
					<span class="onepage-links"><a href="<%=basePath%>/system/overview" target="view_window" class="btn btn-lg btn-primary">点击详情</a></span>
				</div>
			</div>
		</section>
		<!-- END HERO SECTION -->
		<!-- FEATURES -->
		<section >
			<div class="container" id="features">
				<div class="section-heading">
					<h2 class="heading">发展历程</h2>
				</div>
				<div class="container">
					<div class="row feature-item">
						<div class="col-sm-12">
							<img src="<%=basePath%>/images/grouwth.png" class="img-responsive" alt="Feature">
						</div>
					</div>
					<div class="row feature-item">
						<div class="col-sm-7">
							<h3 class="section-heading"><i class="fa fa-line-chart"></i>大病医疗互助的概念</h3>
							<p class="lead">
								大病即重大疾病，是指医治花费巨大且在较长一段时间内严重影响患者及其家庭的正常工作和生
								活的疾病，一般包括：恶性肿瘤、严重心脑血管疾病、需要进行重大器官移植的手术、有可能造成终
								身残疾的伤病、晚期慢性病、深度昏迷、永久性瘫痪、严重脑损伤、严重帕金森病和严重精神病等。
								重大疾病对患者造成严重影响的同时，也给其家庭带来严重的精神和经济压力。					
							</p>
						</div>
						<div class="col-sm-5">
							<img src="<%=basePath%>/images/feature1.png" class="img-responsive" alt="Feature">
						</div>
					</div>
					<div class="row feature-item">
						<div class="col-sm-7">
							<h3 class="section-heading"><i class="fa fa-hospital-o"></i>区块链医疗互助原理</h3>
							<p class="lead">
								基于区块链的大病医疗互助，实现节点一方有难，链上八方支援。当客户发出求助信息后，客户
								身体状况、职业信息、体检、医疗等相关信息和数据将被记录并在全网内实时广播，并得到相关交易
								方的共同验证，确保信息真实有效。平台将求助信息发送给网络内的每一个节点，由所有节点共同验
								证形成“共识”，从而形成数据安全、信息公开透明、无须第三方介人的创新型信任机制。资金不经
								过受捐者，直接进入医院，便于客户直接住院治疗，真正实现一方有难，链上八方支援。						
							</p>
						</div>
						<div class="col-sm-5">
							<img src="<%=basePath%>/images/feature2.png" class="img-responsive" alt="Feature">
						</div>
					</div>
					<div class="row feature-item">
						<div class="col-sm-7">
							<h3 class="section-heading"><i class="fa fa-user-plus"></i>区块链医疗互助前景</h3>
							<p class="lead">
								区块链是融合点对点传输、分布式数据存储、加密算法、共识机制等计算机技术的新型应用模式。
								区块链系统通过共识机制实现不同节点之间建立信任、获取权益。区块链可以减少中心化网络的运营
								和信用成本，解决物联网安全性的弱点，提高运营效率和工业资产利用率，从而提升物联网系统的价
								值。同时，与物联网融合，有望发展出更多成熟的区块链应用，有助于拓展区块链产业规模，促进产
								业生态完善								
							</p>
						</div>
						<div class="col-sm-5">
							<img src="<%=basePath%>/images/feature3.png" class="img-responsive" alt="Feature">
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- END FEATURES -->
        
		<!-- TEAM -->
		<section id="team">
			<div class="container">
				<div class="section-heading">
					<h2 class="heading">团队介绍</h2>
				</div>
				<div class="row">
					<div class="col-md-4">
						<div class="team-member">
							<img src="<%=basePath%>/images/person1.png" class="img-responsive img-circle" alt="Person">
							<div class="member-info">
								<h3 class="name">Kyle Freeman</h3>
								<span class="title text-muted">Director</span>
								<p class="short-bio">Dramatically harness 2.0 products and leveraged sources. Dramatically drive intermandated expertise rather than clicks-and-mortar benefits.</p>
								<ul class="list-inline social-icons">
									<li><a href="#" class="qq-bg"><i class="fa fa-qq"></i></a></li>
									<li><a href="#" class="wechat-bg"><i class="fa fa-wechat"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="team-member">
							<img src="<%=basePath%>/images/person2.png" class="img-responsive img-circle" alt="Person">
							<div class="member-info">
								<h3 class="name">Samuel Collins</h3>
								<span class="title text-muted">Senior Manager</span>
								<p class="short-bio">Dramatically harness 2.0 products and leveraged sources. Dramatically drive intermandated expertise rather than clicks-and-mortar benefits.</p>
								<ul class="list-inline social-icons">
									<li><a href="#" class="qq-bg"><i class="fa fa-qq"></i></a></li>
									<li><a href="#" class="wechat-bg"><i class="fa fa-wechat"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="team-member">
							<img src="<%=basePath%>/images/person3.png" class="img-responsive img-circle" alt="Person">
							<div class="member-info">
								<h3 class="name">Diana Douglas</h3>
								<span class="title text-muted">Account Executive</span>
								<p class="short-bio">Dramatically harness 2.0 products and leveraged sources. Dramatically drive intermandated expertise rather than clicks-and-mortar benefits.</p>
								<ul class="list-inline social-icons">
									<li><a href="#" class="qq-bg"><i class="fa fa-qq"></i></a></li>
									<li><a href="#" class="wechat-bg"><i class="fa fa-wechat"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- END TEAM -->

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
						<a href="tencent://Message/?Uin=301446241&amp;websiteName=q-zone.qq.com&amp;Menu=yes" class="btn btn-default">JOIN IN</a>
						
					</div>
					<div class="pricing-table pricing-recommended">
						<span class="popular">最热</span>
						<h4 class="pricing-heading">推广共助</h4>
						<p class="package-info">群里都是满怀爱心♥之人</p>
						<div class="pricing">
<!-- 							<strong class="price">$64</strong>
 -->							<span class="price-info">点击下方加入我们</span>
						</div>
						<a href="tencent://Message/?Uin=301446241&amp;websiteName=q-zone.qq.com&amp;Menu=yes" class="btn btn-primary">JOIN IN</a>
					</div>
					<div class="pricing-table">
						<h4 class="pricing-heading">挖矿</h4>
						<p class="package-info">本群有详细教程，如何挖矿</p>
						<div class="pricing">
<!-- 							<strong class="price">$800</strong>
 -->							<span class="price-info">点击下方加入我们</span>
						</div>
						<a href="tencent://Message/?Uin=301446241&amp;websiteName=q-zone.qq.com&amp;Menu=yes" class="btn btn-default">JOIN IN</a>
					</div>
				</div>
			</div>
		</section>
		<!-- END PRICING -->


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
										<input type="text" class="form-control" name="contact-name" id="contact-name" placeholder="姓名 (必填)" required>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="form-group">
										<label for="contact-email" class="control-label sr-only">邮箱</label>
										<input type="email" class="form-control" name="contact-email" id="contact-email" placeholder="邮箱号 (必填)" required>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="contact-subject" class="control-label sr-only">主题</label>
								<div class="col-sm-12">
									<input type="text" class="form-control"  name="contact-subject"  id="contact-subject" placeholder="主题内容 ">
								</div>
							</div>
							<div class="form-group">
								<label for="contact-message" class="control-label sr-only">留言内容</label>
								<div class="col-sm-12">
									<textarea class="form-control" id="contact-message" name="contact-message" rows="5" cols="30" placeholder="留言内容 (我们将第一时间与您取得联系)" required></textarea>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<button type="submit" onclick="sendMail()" class="btn btn-primary">提交留言</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>
		<!-- END CONTACT -->

	<jsp:include page="../footer.jsp"></jsp:include>

	<!-- JAVASCRIPT -->
	<script src="<%=basePath%>/js/jquery-2.1.1.min.js"></script>
	<script src="<%=basePath%>/js/bootstrap.min.js"></script>
	<script src="<%=basePath%>/js/plugins/scrolling/jquery.scrollTo-1.4.3.1-min.js"></script>
	<script src="<%=basePath%>/js/plugins/scrolling/jquery.localscroll-1.2.7-min.js"></script>
	<script src="<%=basePath%>/js/plugins/parallax/parallax.min.js"></script>
	<script src="<%=basePath%>/js/plugins/owl-carousel/owl.carousel.min.js"></script>
	<script src="<%=basePath%>/js/landee.js"></script>
	<script src="<%=basePath%>/js/bootstrap/bootstrapValidator.js"></script>
	<script src="<%=basePath%>/js/bootstrap/bootstrapValidator.min.js"></script>
	<script src="<%=basePath%>/js/system/index.js"></script>
	
</body>

</html>