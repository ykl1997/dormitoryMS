<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dms.ykl.model.Student"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/studentinfo.css">
</head>

<body>
	<div class="form">
		<form action="/dormitoryMS/StuQuery">
			<input type="text" placeholder="学号" name="sno"> <input
				class="button" type="submit" value="查询"> <input type="text"
				placeholder="宿舍楼" name="build"> <input class="button"
				type="submit" value="查询">
				<a href="/dormitoryMS/studentform.jsp">添加</a>
		</form>
	</div>
	<table>
		<tr class="top">
			<td>学号</td>
			<td>姓名</td>
			<td>性别</td>
			<td>班级</td>
			<td>号码</td>
			<td>宿舍楼</td>
			<td>寝室号</td>
			<td>在寝状态</td>
			<td>操作</td>
		</tr>
		<%
			if (request.getAttribute("student") == null && session.getAttribute("students") == null) {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dormdb", "root", "123456");
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery("select * from student_info");
				while (rs.next()) {
		%><tr>
			<td><%=rs.getString("sno")%></td>
			<td><%=rs.getString("name")%></td>
			<td><%=rs.getString("sex")%></td>
			<td><%=rs.getString("class")%></td>
			<td><%=rs.getString("phone")%></td>
			<td><%=rs.getString("build")%></td>
			<td><%=rs.getString("room")%></td>
			<td><%=rs.getString("state")%></td>
			<td class="option"><a
				href="/dormitoryMS/studentformUpdate.jsp?sno=<%=rs.getString("sno")%>">修改</a> 
				<a class="delete" onclick="return confirm('该操作十分危险 您确认要删除吗？');"  href="/dormitoryMS/StuDelete?sno=<%=rs.getString("sno")%>">删除</a>
			</td>
		</tr>
		<%
			}
				rs.close();
				stmt.close();
				con.close();
			} else if (request.getAttribute("student") != null) {
				Student s = (Student) request.getAttribute("student");
		%>
		<tr>
			<td><%=s.getSno()%></td>
			<td><%=s.getName()%></td>
			<td><%=s.getSex()%></td>
			<td><%=s.getClass1()%></td>
			<td><%=s.getPhone()%></td>
			<td><%=s.getBuild()%></td>
			<td><%=s.getRoom()%></td>
			<td><%=s.getState()%></td>
			<td class="option"><a
				href="/dormitoryMS/studentformUpdate.jsp?sno=<%=s.getSno()%>">修改</a>
				 <a class="delete" onclick="return confirm('该操作十分危险 您确认要删除吗？');" href="/dormitoryMS/StuDelete?sno=<%=s.getSno()%>">删除</a>
			</td>
		</tr>
		<%
			request.removeAttribute("student");
		} else if(session.getAttribute("students")!=null){
				List<Student> students = (List<Student>) session.getAttribute("students");
				for (Student s : students) {
		%>
		<tr>
			<td><%=s.getSno()%></td>
			<td><%=s.getName()%></td>
			<td><%=s.getSex()%></td>
			<td><%=s.getClass1()%></td>
			<td><%=s.getPhone()%></td>
			<td><%=s.getBuild()%></td>
			<td><%=s.getRoom()%></td>
			<td><%=s.getState()%></td>
			<td class="option"><a
				href="/dormitoryMS/studentformUpdate.jsp?sno=<%=s.getSno()%>">修改</a>
				 <a class="delete" onclick="return confirm('该操作十分危险 您确认要删除吗？');" href="/dormitoryMS/StuDelete?sno=<%=s.getSno()%>">删除</a>
			</td>
		</tr>
		<%
			}
				session.removeAttribute("students");
			}
		%>
	</table>
</body>
<script type="text/javascript">
let add='<%=request.getParameter("addsuccess") %>'
if(add==="yes"){
	alert("插入成功！");
}
let modify='<%=request.getParameter("modifysuccess") %>'
	if(modify==="yes"){
		alert("修改成功！");
	}
let delect='<%=request.getParameter("deletesuccess") %>'
	if(delect==="yes"){
		alert("已删除！");
	}
</script>
</html>