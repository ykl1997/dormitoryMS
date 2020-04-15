<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/alterpassword.css">
<script src="./script/jquery-1.11.3.js"></script>
</head>
<body>
	<form action="/dormitoryMS/AlterPassword">
		<div id="input1p">
			原 密 码 ：<input id="input1" type="text" name="oldpass">
		</div>
		<div id="input2p">
			新 密 码 ：<input id="input2" type="password" name="newpass">
		</div>
		<div id="input3p">
			确认密码：<input id="input3" type="password" name="newpass2">
		</div>
		<div>
			<input type="submit" value="提交" id="button">
		</div>
	</form>
</body>
<script src="./script/alterpassword.js"></script>
<script type="text/javascript">
var wrongoldpass='<%=request.getParameter("wrongoldpass")%>';
	if (wrongoldpass === "yes") {
		let parent = document.querySelector("#input1p");
		let em = document.querySelector("#input1");
		let hint = document.createElement("div");
		hint.innerHTML = "原密码不正确！";
		if (parent.childElementCount < 2) {
			parent.appendChild(hint);
		}
	} else {
		if (parent.childElementCount > 1) {
			parent.removeChild(parent.lastChild);
		}
	}
var success='<%=request.getParameter("success")%>';
if(success==="yes"){
	alert("修改成功");
}
var isnull='<%=request.getParameter("isnull")%>';
if(isnull==="yes"){
	alert("请填写完整");
}
var diffpass='<%=request.getParameter("diffpass")%>';
if(diffpass==="yes"){
	let parent = document.querySelector("#input3p");
	let em = document.querySelector("#input3");
	let hint = document.createElement("div");
	hint.innerHTML = "两次密码不一致！";
	if (parent.childElementCount < 2) {
		parent.appendChild(hint);
	}
} else {
	if (parent.childElementCount > 1) {
		parent.removeChild(parent.lastChild);
	}
}
</script>
</html>