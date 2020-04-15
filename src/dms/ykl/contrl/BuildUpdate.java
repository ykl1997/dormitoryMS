package dms.ykl.contrl;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dms.ykl.dao.BuildDao;
import dms.ykl.model.Build;

@WebServlet("/BuildUpdate")
public class BuildUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Build build = new Build();
		BuildDao buildDao = new BuildDao();
		build.setId(Integer.parseInt(request.getParameter("id")));
		build.setName(request.getParameter("name"));
		build.setType(request.getParameter("type"));
		buildDao.modifyBuildById(build);
		response.sendRedirect(request.getContextPath() + "/buildInfo.jsp?modifysuccess=yes");

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
