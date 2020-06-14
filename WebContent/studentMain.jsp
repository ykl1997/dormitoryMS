<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String state = (String) request.getSession().getAttribute("loginstate");
	if (state != "student_logined") {
		response.sendRedirect((request.getContextPath() + "/login.jsp"));
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>主页</title>
<link rel="stylesheet" href="./css/adminMain.css">
<link rel="icon" href="./imgs/dormitory.png"  type="image/x-icon">  
 <link rel="stylesheet" type="text/css" href="//at.alicdn.com/t/font_1867563_3ar6vrncd0o.css">
<script src="./script/jquery-1.11.3.js"></script>
</head>
<body>
	<h1>
		<img src="https://www.axhu.edu.cn/images/logo.png" id="img">宿舍管理系统
		<span> 学生: ${name}</span>
	</h1>
	<div class="ui">
    	<div class="color" id="blue">
    	</div>
    	<div class="color" id="red">
    	</div>
    	<div class="color" id="black">
    	</div>
    	<div class="color" id="white">
    	</div>    	
    	<i class="iconfont icon-youjiantou"></i>
    </div>
	<ul id="menu">
		<li class="opt">个人信息修改</li>
		<li>忘带钥匙咯</li>
		<li>我要报修</li>
		<li>健康上报</li>
		<li>修改密码</li>
		<a href="/dormitoryMS/LogoutServlet"><li>退出</li></a>
	</ul>
	<div id="main">
		<div id="show">
			<h3>个人信息修改</h3>
			<iframe src="studentupdate.jsp" width="1100px" height="470px"
				frameborder="0" scrolling="auto"></iframe>
		</div>
		<div>
			<h3>忘带钥匙咯</h3>
			<iframe src="forgetform.jsp" width="1100px" height="470px"
				frameborder="0" scrolling="auto"></iframe>
		</div>
		<div>
			<h3>我要报修</h3>
			<iframe src="repairform.jsp" width="1100px" height="470px"
				frameborder="0" scrolling="auto"></iframe>
		</div>
		<div>
			<h3>健康上报</h3>
			<iframe src="healthform.jsp" width="1100px" height="470px"
				frameborder="0" scrolling="auto"></iframe>
		</div>
		<div>
			<h3>修改密码</h3>
			<iframe src="alterpassword.jsp" width="1100px" height="470px"
				frameborder="0" scrolling="auto"></iframe>
		</div>
	</div>
</body>
<script src="./script/adminMain.js"></script>
</html>