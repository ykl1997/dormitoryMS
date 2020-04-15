package dms.ykl.contrl;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dms.ykl.dao.StudentDao;
import dms.ykl.model.Student;

@WebServlet("/StuQuery")
public class StuQuery extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		StudentDao studentDao = new StudentDao();
		Student student = null;
		List<Student> students = null;
		String sno = request.getParameter("sno"); // 获取studeninfo页面传来的学号
		String build = request.getParameter("build"); // 获取页面传来的宿舍楼号
		if (sno == "" && build == "") {
			response.sendRedirect(request.getContextPath() + "/studentInfo.jsp");
			return;
		}

		try {
			students = (List<Student>) studentDao.findStudentByBuild(build);
			student = studentDao.findStudentBySno(sno); // 取出查询结果并判断是否成功
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (student == null && students.size() == 0) {
			response.sendRedirect(request.getContextPath() + "/findfail.jsp");
			return;
		}

		if (student != null) {
			request.setAttribute("student", student);
		} else {
			request.getSession().setAttribute("students", students);
		}
		request.getRequestDispatcher("studentInfo.jsp").forward(request, response);// 成功
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
