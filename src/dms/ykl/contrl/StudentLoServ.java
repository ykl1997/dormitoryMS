package dms.ykl.contrl;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dms.ykl.dao.StudentDb;

@WebServlet("/LoginStu")
public class StudentLoServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private StudentDb s = new StudentDb();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		String name = request.getParameter("usename");
		byte[] b = name.getBytes("ISO-8859-1");
		name = new String(b, "UTF-8");
		String passwd = request.getParameter("passwd");
		String code = (String) request.getSession().getAttribute("imgcode");
		if (!code.toLowerCase().equals(request.getParameter("code").toLowerCase())) {
			response.sendRedirect(request.getContextPath() + "/login.jsp?wrongVerification=yes");
			return;
		}

		try {
			s.connection();
			if (!s.selectByname(name).equals(passwd) || s.isEmptyResult()) {
				request.getSession().setAttribute("path",
						request.getRequestURL().toString().replaceAll(request.getRequestURI(), "")
								+ "/dormitoryMS/login.jsp");
				response.sendRedirect(request.getContextPath() + "/login.jsp?isWrong=yes");
			} else {
				request.getSession().setAttribute("name", name);
				request.getSession().setAttribute("table", "student_login");
				request.getSession().setAttribute("loginstate", "logined");
				response.sendRedirect(request.getContextPath() + "/studentMain.jsp");
			}
			s.close();
		} catch (Exception e) {
			e.printStackTrace();
			request.getSession().setAttribute("path",
					request.getRequestURL().toString().replaceAll(request.getRequestURI(), "")
							+ "/dormitoryMS/login.jsp");
			response.sendRedirect(request.getContextPath() + "/login.jsp?isWrong=yes");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
