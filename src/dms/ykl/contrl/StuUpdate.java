package dms.ykl.contrl;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dms.ykl.dao.StudentDao;
import dms.ykl.model.Student;

@WebServlet("/StuUpdate")
public class StuUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Student student = new Student();
		StudentDao studentDao = new StudentDao();
		student.setSno(request.getParameter("sno"));
		student.setName(request.getParameter("name"));
		if (request.getParameter("sex").equals("male")) {
			student.setSex("男");
		} else {
			student.setSex("女");
		}
		student.setPhone(request.getParameter("phone"));
		student.setClass1(request.getParameter("class"));
		student.setBuild(request.getParameter("build"));
		student.setRoom(request.getParameter("room"));
		student.setState(request.getParameter("state"));
		try {
			studentDao.modifyStudentBySno(student);
			if (request.getHeader("Referer").contains("studentupdate.jsp")) // 判断请求来自哪个页面对应返回
				response.sendRedirect(request.getContextPath() + "/studentupdate.jsp?modifysuccess=yes");// 学生转发到原页面
			else {
				response.sendRedirect(request.getContextPath() + "/studentInfo.jsp?modifysuccess=yes");// 管理员转发到学生列表
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
