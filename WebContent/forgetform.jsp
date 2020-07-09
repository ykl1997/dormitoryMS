<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="dms.ykl.DBtool.DBCon"%>
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
        background: url(./imgs/bgv.JPG) no-repeat center;
        background-size:cover;
    }
    form{
        padding-top: 30px;
        margin: 70px auto;
        width: 300px;
        height: 300px;
        border-radius: 3px;
        text-align: center;
        box-shadow: 1px 1px 10px 2px black;
    }
    input{
        width: 200px;
        height: 30px;
        border-radius: 3px;
        border: 1px black solid;
        display: block;
        margin: 0 auto;
        margin-top: 20px ;
    }
    .button{
        background-color: rgba(64, 224, 208, 0.555);
    }
</style>
</head>
<body><%
String name=(String)request.getSession().getAttribute("name");
Connection con = DBCon.getCon();
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery("select * from student_info where sno='"+name+"'");
rs.next();
%>
<form action="/dormitoryMS/ForgetServlet">
   <input type="text" name="recorder_name" placeholder="姓名" value="<%=rs.getString("name")%>" readonly="readonly">
   <input type="text" name="build" placeholder="宿舍楼" value="<%=rs.getString("build")%>" readonly="readonly">
   <input type="text" name="room" placeholder="宿舍号" value="<%=rs.getString("room")%>" readonly="readonly">
   <input type="text" name="phone" placeholder="电话" >
    <input type="submit" value="提交" class="button">
</form>
</body>
<%rs.close(); %>
<script type="text/javascript">
var success="<%=request.getParameter("success")%>";
if(success==="yes"){
	alert("提交成功，请到宿管处领取钥匙");
}</script>
</html>