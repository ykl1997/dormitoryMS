<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
*{
        margin: 0;
        padding: 0;
    }
    body{
        background: url(./imgs/health.jpg) no-repeat center;
        background-size: cover;
    }
    form{
        padding-top:5px;
        padding-bottom:10px;
        margin: 20px auto;
        width: 350px;
        border-radius: 3px;
        text-align: center;
        box-shadow: 1px 1px 10px 2px black;
        font-size:12px;
    }
    input{
        width: 200px;
        height: 30px;
        border-radius: 3px;
        border: 1px black solid;
        display: block;
        margin: 0 auto;
        margin-top: 20px;
    }
    .button{
        background-color: rgba(91,139,52,0.5);
    }
</style>
</head>
<body>
<form action="/dormitoryMS/HealthServlet">
    <input type="text" name="sno" placeholder="学号">
    <input type="text" name="name" placeholder="姓名">
    <input type="text" name="class" placeholder="专业班级">
    <input type="text" name="build" placeholder="宿舍楼">
    <input type="text" name="room" placeholder="宿舍号">
    <input type="number" name="body_temperature" placeholder="体温">
    <input type="text" name="body_state" placeholder="状况">
    <input type="submit" value="提交" class="button">
</form>
</body>
<script type="text/javascript">
var success="<%=request.getParameter("success")%>";
if(success==="yes"){
	alert("信息已提交");
}</script>
</html>