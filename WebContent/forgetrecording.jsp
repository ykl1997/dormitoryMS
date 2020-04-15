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
<style>
*{
	margin:0;
	padding:0;
}
table {
	margin: 0px auto;
	border-collapse: collapse;
	color: white;
	font-family: STHeiti;
    border-right: 2px black solid;
    border-bottom: 2px black solid;
}
table td {
	text-align: center;
	padding: 2px 35px;
	border-left: 2px black solid;
}

tr {
	background-color: #142C38;
	margin: 0;
}

.top {
	background-color: #2787D3;
}
</style>
</head>
<body>
<table>
		<tr class="top">
			<td>填报人</td>
			<td>宿舍楼</td>
			<td>宿舍号</td>
			<td>填报日期</td>
			<td>填报时间</td>
			<td>联系电话</td>
		</tr>
		<%			
				Connection con = DBCon.getCon();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT * FROM forget_recording");
				while (rs.next()) {		%>
		<tr>
			<td><%=rs.getString("recorder_name")%></td>
			<td><%=rs.getString("build")%></td>
			<td><%=rs.getString("room")%></td>
			<td><%=rs.getString("record_date")%></td>
			<td><%=rs.getTime("record_time")%></td>
			<td><%=rs.getString("phone")%></td>
		</tr>
		<%
				}
		%>
		</table>
</body>
</html>