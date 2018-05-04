<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String path = request.getContextPath();
System.out.print(path);
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
System.out.print(basePath);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
</head>
<body data-spy="scroll">
	<div class="row">
		<!-- FOOTER -->
		<footer class="footer-minimal">
			<div class="container">
				<ul class="list-inline social-icons social-icons-circle">
					<li><a href="#" class="qq-bg"><i class="fa fa-qq"></i></a></li>
					<li><a href="#" class="wechat-bg"><i class="fa fa-wechat"></i></a></li>
					<li><a href="#" class="linkedin-bg"><i class="fa fa-linkedin"></i></a></li>
				</ul>
				<div class="right">
    				<a id="qq" style="background-image:url('<%=basePath%>/images/wechat.jpg')" class="btn" data-toggle="popover" data-placement="bottom"></a>
    				<a id="weixin" style="background-image:url('<%=basePath%>/images/wechat.jpg')" class="btn" data-toggle="popover" data-placement="bottom"></a>
				</div>
				<p class="copyright-text">Designed &amp; Crafted by <a href="#" target="_blank">The IBCCF Team</a> More Informations Please Tell Us Copyright © 2018 , WELTMEISTER All Rights Reserved 浙ICP备16010249号   </p>
			</div>

		</footer>
		<!-- END FOOTER -->

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
                                 <input id="userName" name="userName" class="form-control" type="text" placeholder="6-15位字母或数字" required>
                             </div>
                             <div class="form-group">
                                 <label for="">密码</label>
                                 <input id="passWord" name="passWord" class="form-control" type="password" placeholder="至少6位字母或数字" required>
                             </div>
                             <div class="form-group">
                                 <label for="">再次输入密码</label>
                                 <input id="passWordCopy" class="form-control" type="password" placeholder="至少6位字母或数字" required>
                             </div>
                             <div class="form-group">
                                 <label for="">邮箱</label>
                                 <input id="mail" name="mail" class="form-control" type="email" placeholder="例如:123@123.com" >
                             </div>
                            <div class="form-group">
                                 <label for="">手机号</label>
                                 <input id="tel" name="tel" class="form-control" type="tel" placeholder="例如:187........" required>
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
                                 <input  name="userNameLogin" class="form-control" type="text" placeholder="用户名" required>
                             </div>
                             <div class="form-group">
                                 <label for="">密码</label>
                                 <input name="passWordLogin" class="form-control" type="password" placeholder="密码" required>
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
	</div>
		
	<script src="<%=basePath%>/js/common/common.js"></script>
	<script src="<%=basePath%>/js/common/footer.js"></script>
</body>
</html>