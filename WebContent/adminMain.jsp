<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
		String state=(String)request.getSession().getAttribute("loginstate");
		if(state!="admin_logined"){
			response.sendRedirect((request.getContextPath() + "/login.jsp"));
		} 
	%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>主页</title>
    <link rel="stylesheet" href="./css/adminMain.css">
    <link rel="stylesheet" type="text/css" href="//at.alicdn.com/t/font_1867563_3ar6vrncd0o.css">
    <link rel="icon" href="./imgs/dormitory.png"  type="image/x-icon">  
    <script src="./script/jquery-1.11.3.js"></script>
    
</head>
<body>
    <h1>
        <img src="https://www.axhu.edu.cn/images/logo.png" id="img">宿舍管理系统
        <span>管理员: ${name}</span>
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
            <li class="opt">学生管理</li>      
            <li>宿舍楼管理</li>      
            <li>寝室信息</li>      
            <li>遗忘钥匙记录</li>      
            <li>报修情况</li>       
            <li>学生健康状况</li>      
            <li>修改密码</li>      
            <a href="/dormitoryMS/LogoutServlet"><li>退出</li></a>        
    </ul>
    <div id="main">
        <div id="show">
            <h3>学生管理</h3>            
            <iframe src="studentInfo.jsp" width="1100px" height="470px" frameborder="0" scrolling="auto"></iframe>
        </div>
        <div>
            <h3>宿舍楼管理</h3>
             <iframe src="buildInfo.jsp" width="1100px" height="470px" frameborder="0" scrolling="auto"></iframe>
        </div>
        <div>
            <h3>寝室信息</h3>
             <iframe src="dormitory.jsp" width="1100px" height="470px" frameborder="0" scrolling="auto"></iframe>
        </div>
        <div>
            <h3>遗忘钥匙记录</h3>
             <iframe src="forgetrecording.jsp" width="1100px" height="470px" frameborder="0" scrolling="auto"></iframe>
        </div>
        <div>
            <h3>报修情况</h3>
             <iframe src="repair.jsp" width="1100px" height="470px" frameborder="0" scrolling="auto"></iframe>
        </div>
        <div>
            <h3>学生健康状况</h3>
             <iframe src="healthinfo.jsp" width="1100px" height="470px" frameborder="0" scrolling="auto"></iframe>
        </div>
        <div>
            <h3>修改密码</h3>
              <iframe src="alterpassword.jsp" width="1100px" height="470px" frameborder="0" scrolling="auto"></iframe>
        </div>
    </div>
</body>
<script src="./script/adminMain.js"></script>
</html>