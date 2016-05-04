package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MailUtil;

import org.apache.jasper.tagplugins.jstl.core.Out;

import model.*;

/**
 * Servlet implementation class LienHeServlet
 */
@WebServlet("/LienHeServlet")
public class LienHeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LienHeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String name_ct = request.getParameter("name_ct");
		String chonluayeucau = request.getParameter("chonluayeucau");
		String email_ct = request.getParameter("email_ct");
		String tieudehoi = request.getParameter("tieudehoi");
		String body_ct = request.getParameter("body_ct");
		
		String url = "/LienHe.jsp";
		try {
			String smtpServer = "smtp.gmail.com";
			String to = request.getParameter("email_ct");
			String from = "mytientestmail";
			String password = "mytiennonglam";
			for (int i = 0; i < 1; i++){
			String subject = "Thư liên hệ của khách";

			body_ct = "Khách hàng:" + name_ct + "\n" + "Có yêu cầu:" + chonluayeucau + "\n"
					+ "Tiêu đ�?: " + tieudehoi + "\n" + "Nội dung là: " +  body_ct;
			MailUtil.send(smtpServer, to, from, password, subject, body_ct);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}
}
