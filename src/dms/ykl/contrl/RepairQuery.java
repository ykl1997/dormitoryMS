package dms.ykl.contrl;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RepairQuery")
public class RepairQuery extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String sqlCondition = request.getParameter("con");
		String sql = "SELECT * FROM repair_record";
		if (sqlCondition.equals("having")) {
			sql = "SELECT * FROM repair_record where repair_state='未修'";

		} else if (sqlCondition.equals("haved")) {
			sql = "SELECT * FROM repair_record where repair_state='已修'";
		} else {
			sql = "SELECT * FROM repair_record";
		}
		request.setAttribute("sql", sql);
		request.getRequestDispatcher("repair.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
