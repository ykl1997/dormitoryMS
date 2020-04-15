<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>xxxx</title>
<style>
body {
	background: linear-gradient(to right, rgba(27, 137, 226, 0.582),
		rgba(166, 25, 231, 0.541));
}

form {
	padding: 10px 0;
	margin: 0px auto;
	box-shadow: 1px 2px 10px 2px #98a0a7;
	width: 300px;
	text-align: center;
	border-radius: 3px;
}

input {
	display: block;
	width: 200px;
	height: 30px;
	margin: 30px auto;
	border: 1px solid black;
	border-radius: 3px;
}

#one {
	background-color: #98a0a7;
}

.button {
	background-color: aqua;
	border: 1px solid aqua;
}
img{
    width: 50px;
    height: 50px;
}
</style>
</head>

<body>
	<div>
		<a href="/dormitoryMS/buildInfo.jsp"><img src="./imgs/返回.png"
			alt=""> </a>
	</div>
	<form action="/dormitoryMS/BuildUpdate">
		<h3>修改</h3>
		<input name="id" id="one" type="text"
			value="<%=request.getParameter("id")%>" readonly="readonly">
		<input name="name" type="text" placeholder="名称"> <input
			name="type" type="text" placeholder="类型"> <input
			type="submit" value="提交" class="button">
	</form>
</body>

</html>