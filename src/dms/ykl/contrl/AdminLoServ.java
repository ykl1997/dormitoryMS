package dms.ykl.contrl;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dms.ykl.dao.AdminDb;

@WebServlet("/AdminLoServ")
public class AdminLoServ extends HttpServlet {
	private static final long serialVersionUID = 2L;
	private AdminDb s = new AdminDb();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		String name = request.getParameter("usename");
		String passwd = request.getParameter("passwd");
		String code = (String) request.getSession().getAttribute("imgcode");
		if (!code.toLowerCase().equals(request.getParameter("code").toLowerCase())) {
			response.sendRedirect(request.getContextPath() + "/login.jsp?wrongVerification=yes");
			return;
		}
		try {
			s.connection();
			if (!s.selectByname(name).equals(passwd) || s.isEmptyResult()) {
				response.sendRedirect(request.getContextPath() + "/login.jsp?isWrong=yes");
			} else {
				request.getSession().setAttribute("name", name);
				request.getSession().setAttribute("table", "admin_login");
				request.getSession().setAttribute("loginstate", "admin_logined");
				response.sendRedirect(request.getContextPath() + "/adminMain.jsp");
			}
			s.close();
		} catch (Exception e) {
			response.sendRedirect(request.getContextPath() + "/login.jsp?isWrong=yes");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
