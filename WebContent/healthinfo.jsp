<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="dms.ykl.DBtool.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/healthinfo.css">
</head>
<body>
	
		<div id="top">疫情就是命令        防控就是责任 </div>
		<table>
			<tr class="top">
				<td>学号</td>
				<td>姓名</td>
				<td>班级</td>
				<td>宿舍楼</td>
				<td>宿舍号</td>
				<td>体温</td>
				<td>状况</td>
				<td>时间</td>
			</tr>
			<%
				Connection con = DBCon.getCon();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT * FROM student_health");
				while (rs.next()) {
			%>
			<tr>
				<td><%=rs.getString("sno")%></td>
				<td><%=rs.getString("name")%></td>
				<td><%=rs.getString("class")%></td>
				<td><%=rs.getString("build")%></td>
				<td><%=rs.getString("room")%></td>
				<td><%=rs.getDouble("body_temperature")%>℃</td>
				<td><%=rs.getString("body_state")%></td>
				<td><%=rs.getString("time")%></td>
			</tr>
			<%
				}
			%>
		</table>

</body>
</html>