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
	<title>xxxx</title>
	<link rel="stylesheet" href="./css/buildInfo.css">
</head>

<body>
	<div>
		<img src="./imgs/build.png" alt="">
		<table>
			<tr class="top">
				<td>id</td>
				<td>名称</td>
				<td>类型</td>
				<td>操作</td>
			</tr>
			<%
			Connection con = DBCon.getCon();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from build_info");
			while (rs.next()) {
		%>
			<tr>
				<td><%=rs.getString("build_id")%></td>
				<td><%=rs.getString("build_name")%></td>
				<td><%=rs.getString("build_type")%></td>
				<td class="option"><a href="/dormitoryMS/buildform.jsp?id=<%=rs.getString("build_id")%>">修改</a></td>
			</tr>
			<%
			}
		%>
		</table>
	</div>

</body>
<script type="text/javascript">
var modify="<%=request.getParameter("modifysuccess")%>";
if(modify==="yes"){
	alert("修改成功");
}
</script>
</html>