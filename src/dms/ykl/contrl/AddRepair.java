package dms.ykl.contrl;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dms.ykl.DBtool.DBCon;

@WebServlet("/AddRepair")
public class AddRepair extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String build = request.getParameter("build");
		String room = request.getParameter("room");
		String from_repair_name = request.getParameter("from_repair_name");
		String repair_type = request.getParameter("repair_type");
		String to_repair_time = request.getParameter("to_repair_time");
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		Connection con = DBCon.getCon();
		String sql = "INSERT INTO repair_record (build,room,from_repair_name,repair_type,from_repair_time,to_repair_time,repair_state) "
				+ "VALUES(?,?,?,?,now(),?,'未修')";
		try {
			java.util.Date date2 = formatter.parse(to_repair_time);
			Date date = new Date(date2.getTime()); // 将java.util.Date转java.sql.Date
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, build);
			ps.setString(2, room);
			ps.setString(3, from_repair_name);
			ps.setString(4, repair_type);
			ps.setDate(5, date);
			ps.executeUpdate();
		} catch (SQLException | ParseException e) {
			e.printStackTrace();
		}
		response.sendRedirect("/dormitoryMS/repairform.jsp?success=yes");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
