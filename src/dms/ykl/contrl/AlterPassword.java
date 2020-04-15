package dms.ykl.contrl;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dms.ykl.dao.AlterPassDao;

@WebServlet("/AlterPassword")
public class AlterPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = (String) request.getSession().getAttribute("name");
		String table = (String) request.getSession().getAttribute("table");
		String oldpass = request.getParameter("oldpass");
		String newpass = request.getParameter("newpass");
		String newpass2 = request.getParameter("newpass2");
		if (oldpass == "" || newpass == "") {
			response.sendRedirect(request.getContextPath() + "/alterpassword.jsp?isnull=yes");
			return;
		} else if (!newpass.equals(newpass2)) {
			response.sendRedirect(request.getContextPath() + "/alterpassword.jsp?diffpass=yes");
			return;
		}
		AlterPassDao alterPassDao = new AlterPassDao();
		if (alterPassDao.checkPass(table, name, oldpass)) {
			alterPassDao.updatePass(table, name, newpass);
			response.sendRedirect(request.getContextPath() + "/alterpassword.jsp?success=yes");
		} else {
			response.sendRedirect(request.getContextPath() + "/alterpassword.jsp?wrongoldpass=yes");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
