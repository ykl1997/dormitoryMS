package dms.ykl.contrl;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dms.ykl.DBtool.DBCon;

@WebServlet("/HealthServlet")
public class HealthServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String sno = request.getParameter("sno");
		String name = request.getParameter("name");
		String class1 = request.getParameter("class");
		String build = request.getParameter("build");
		String room = request.getParameter("room");
		String body_temperature = request.getParameter("body_temperature");
		String body_state = request.getParameter("body_state");
		Connection con = DBCon.getCon();
		String sql = "INSERT INTO student_health (sno,name,class,build,room,body_temperature,time,body_state) "
				+ "VALUES(?,?,?,?,?,?,now(),?)";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, sno);
			ps.setString(2, name);
			ps.setString(3, class1);
			ps.setString(4, build);
			ps.setString(5, room);
			ps.setDouble(6, Double.parseDouble(body_temperature));
			ps.setString(7, body_state);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return;
		}
		response.sendRedirect("/dormitoryMS/healthform.jsp?success=yes");

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
