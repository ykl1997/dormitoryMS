<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>登录</title>
<link rel="stylesheet" href="./css/login.css">
<link rel="icon" href="./imgs/dormitory.png"  type="image/x-icon">  
<script src="./script/jquery-1.11.3.js"></script>
</head>
<body>
	<span id="float"></span>
	<h1>宿舍管理系统</h1>
	<form action="/dormitoryMS/DecideIdf" method="post">	
		<select name="identity">
			<option value="student">学生</option>
			<option value="admin">管理员</option>			
		</select>	
		<div id='input1p'>
			<input id="input1" type="text" name="usename" placeholder="学号/教职工号" >
		</div>		
		<div id="input2p">
			<input id="input2" type="password" name="passwd" placeholder="密码" >
		</div>
		<div class="tupian">
			<input id="input3" type="text" placeholder="验证码" name="code"> <img
				id="captcha" alt="" src="/dormitoryMS/imgcode"
				onclick="reLoadCaptcha()">		
		</div>
		<input type="submit" value="登录" id="login">
	</form>
</body>
<script type="text/javascript" src="./script/login.js"></script>
<script type="text/javascript">
//密码错误回到登录界面
let pwd='<%=request.getParameter("isWrong")%>';
if(pwd==='yes'){
	alert("账号或密码错误！！！");
	location='<%=request.getSession().getAttribute("path")%>';

}
//验证码错误回到登录界面
let Verification ='<%=request.getParameter("wrongVerification")%>';
if(Verification==='yes'){   
        let parent = document.querySelector('.tupian');
        let em = document.querySelector('#input3');
        if (!em.value) {
                let hint = document.createElement("div");
                hint.innerHTML = "验证码错误";
                if (parent.childElementCount < 3) {
                        parent.appendChild(hint);
                }
        } else {
                if (parent.childElementCount > 2) {
                        parent.removeChild(parent.lastChild);
                }
           }    
}
</script>
</html>