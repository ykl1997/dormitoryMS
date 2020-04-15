package dms.ykl.contrl;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dms.ykl.dao.DormitoryDao;

@WebServlet("/DormitoryQuery")
public class DormitoryQuery extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		DormitoryDao dao = new DormitoryDao();
		request.getParameter("build");
		request.getSession().setAttribute("dormitorys", dao.findDormitoryBybuild(request.getParameter("build")));
		request.getRequestDispatcher("dormitory.jsp").forward(request, response);// 成功
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
