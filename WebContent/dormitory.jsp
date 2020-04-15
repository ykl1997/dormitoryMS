<%@page import="dms.ykl.model.Dormitory"%>
<%@page import="java.util.List"%>
<%@page import="dms.ykl.DBtool.DBCon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/dormitory.css">
</head>
<body>
	<div class="form">
		<form action="/dormitoryMS/DormitoryQuery">
			<input type="text" placeholder="宿舍楼    [以#结束的两位数 ] " name="build">
			<input class="button" type="submit" value="查询" class="button">
		</form>
	</div>
	<table>
		<tr class="top">
			<td>宿舍楼</td>
			<td>宿舍号</td>
			<td>宿舍长</td>
			<td>宿舍类型</td>
			<td>宿舍长电话</td>
		</tr>
		<%			
			if (request.getSession().getAttribute("dormitorys")==null) {
				Connection con = DBCon.getCon();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT b.build_name,d.sushez,d.dormitory_type,d.dormitory_name,d.tel "
						+ "FROM dormitory d,build_info b WHERE d.building=build_id");
				while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString("build_name")%></td>
			<td><%=rs.getString("dormitory_name")%></td>
			<td><%=rs.getString("sushez")%></td>
			<td><%=rs.getString("dormitory_type")%></td>
			<td><%=rs.getString("tel")%></td>
		</tr>
		<%
			}
			} else {
				List<Dormitory> dormitorys = (List<Dormitory>) request.getSession().getAttribute("dormitorys");
				for (Dormitory d : dormitorys) {
		%>
		<tr>
			<td><%=d.getBuilding()%></td>
			<td><%=d.getDormitory_name()%></td>
			<td><%=d.getSushez()%></td>
			<td><%=d.getDormitory_type()%></td>
			<td><%=d.getTel()%></td>
		</tr>
		<%
			}
				request.getSession().removeAttribute("dormitorys");
			}
		%>
	</table>
</body>
</html>