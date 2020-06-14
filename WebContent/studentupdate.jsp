<%@page import="dms.ykl.model.Student"%>
<%@page import="dms.ykl.dao.StudentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--本页面用于学生身份更改自己个人信息 -->
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
    form{
        margin-top: 80px;
    }
    </style>
    <%
    	StudentDao studentDao=new StudentDao();
		Student student=studentDao.findStudentBySno((String)request.getSession().getAttribute("name"));
    %>
</head>
<body>
    <form action="/dormitoryMS/StuUpdate">
        <input class="sno" type="text" name="sno" placeholder="学号" value="${name}" readonly="true"> <input type="text"
            name="name" placeholder="姓名" value="<%=student.getName() %>"> <br> <br> <select name="sex">
            <option value="male">男</option>
            <option value="female">女</option>
        </select> <input type="text" name="class" placeholder="班级" value="<%=student.getClass1() %>"> <br> <br>
        <input type="text" name="phone" placeholder="电话" value="<%=student.getPhone() %>"> 
        <input type="text" name="build" placeholder="宿舍楼" value="<%=student.getBuild() %>"> <br> <br>
        <input type="text" name="room" placeholder="寝室号" value="<%=student.getRoom() %>">
         <input type="text" name="state" placeholder="入住状态" value="<%=student.getState() %>"> <br> <br>
        <input type="submit" value="提交" class="button">
    </form>
</body>
<script>
let modify='<%=request.getParameter("modifysuccess") %>'
	if(modify==="yes"){
		alert("修改成功！");
	}
</script>
</html>