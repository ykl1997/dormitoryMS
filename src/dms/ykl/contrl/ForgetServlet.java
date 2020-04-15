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

@WebServlet("/ForgetServlet")
public class ForgetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String recorder_name = request.getParameter("recorder_name");
		String build = request.getParameter("build");
		String room = request.getParameter("room");
		String phone = request.getParameter("phone");
		Connection con = DBCon.getCon();
		String sql = "INSERT INTO forget_recording (recorder_name,build,room,record_date,record_time,phone) "
				+ "VALUES(?,?,?,now(),now(),?)";
		try {
			PreparedStatement statement = con.prepareStatement(sql);
			statement.setString(1, recorder_name);
			statement.setString(2, build);
			statement.setString(3, room);
			statement.setString(4, phone);
			statement.executeUpdate();
			statement.close();
			DBCon.closeCon();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		response.sendRedirect("/dormitoryMS/forgetform.jsp?success=yes");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
