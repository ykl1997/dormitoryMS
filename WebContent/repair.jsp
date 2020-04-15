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
<link rel="stylesheet" href="./css/repair.css">
</head>
<body>
	<div>
		<a href="/dormitoryMS/RepairQuery?con=haved">查看已修</a> <a
			href="/dormitoryMS/RepairQuery?con=having">查看未修</a> <a
			href="/dormitoryMS/RepairQuery?con=all">查看全部</a>
	</div>
	<table>

		<tr class="top">
			<td>宿舍楼</td>
			<td>宿舍号</td>
			<td>报修人</td>
			<td>报修类型</td>
			<td>保修时间</td>
			<td>预约修理时间</td>
			<td>状态</td>
		</tr>
		<%
			Connection con = DBCon.getCon();
			Statement stmt = con.createStatement();
			String sql = (String) request.getAttribute("sql");
			if (sql == null) {
				sql = "SELECT * FROM repair_record";
			}
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString("build")%></td>
			<td><%=rs.getString("room")%></td>
			<td><%=rs.getString("from_repair_name")%></td>
			<td><%=rs.getString("repair_type")%></td>
			<td><%=rs.getDate("from_repair_time")%></td>
			<td><%=rs.getDate("to_repair_time")%></td>
			<td><%=rs.getString("repair_state")%></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>