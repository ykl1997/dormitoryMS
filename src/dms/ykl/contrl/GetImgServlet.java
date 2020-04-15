package dms.ykl.contrl;

import java.awt.image.BufferedImage;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dms.ykl.model.ImageCode;

@WebServlet("/imgcode")
public class GetImgServlet extends HttpServlet {

	private static final long serialVersionUID = -566065865950603436L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 设置页面内容为image形式
		response.setContentType("image/jpg");
		// 防止乱码
		response.setCharacterEncoding("UTF-8");
		// 定义获取验证码的对象
		ImageCode imageCode = new ImageCode(4, 100, 50);
		// 得到图片缓冲区
		BufferedImage img = imageCode.getImage();
		// 得到文字验证码
		String code = imageCode.getCode();
		// 获得用户session
		HttpSession session = request.getSession();
		// 将文字验证码保存到客户端session,方便验证֤
		session.setAttribute("imgcode", code);
		// System.out.println("验证码为" + code);
		// 获得sevlet输出流
		ServletOutputStream outputStream = response.getOutputStream();
		// 写到客户端
		ImageIO.write(img, "jpg", outputStream);
		// 关闭输出流
		if (outputStream != null) {
			outputStream.close();
		}
	}
}
