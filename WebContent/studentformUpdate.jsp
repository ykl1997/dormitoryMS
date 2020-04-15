<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>xxx</title>
    <link rel="stylesheet" href="./css/stundentform.css">
    <style>
    .sno{
    	background-color:#b1b1b1;
    }
    </style>
</head>

<body>
    <div>
        <a href="/dormitoryMS/studentInfo.jsp"><img src="./imgs/返回.png" alt=""> </a>
    </div>
    <form action="/dormitoryMS/StuUpdate">
        <input class="sno" type="text" name="sno" placeholder="学号" value="<%=request.getParameter("sno")%>" readonly="true"> <input type="text"
            name="name" placeholder="姓名"> <br> <br> <select name="sex">
            <option value="male">男</option>
            <option value="female">女</option>
        </select> <input type="text" name="class" placeholder="班级"> <br> <br>
        <input type="text" name="phone" placeholder="电话"> <input type="text" name="build" placeholder="宿舍楼"> <br> <br>
        <input type="text" name="room" placeholder="寝室号"> <input type="text" name="state" placeholder="入住状态"> <br> <br>
        <input type="submit" value="提交" class="button">
    </form>
</body>

</html>