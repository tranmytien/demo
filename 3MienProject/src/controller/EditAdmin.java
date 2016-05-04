package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddAdminEdit
 */
@WebServlet("/EditAdmin")
public class EditAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doEdit(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doEdit(request, response);
	}
	protected void doEdit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter write = response.getWriter();
		
		try {
			String id = request.getParameter("id");
			/*
			String taikhoan = request.getParameter("taikhoan");
			String matkhau = request.getParameter("matkhau");
			String nhom = request.getParameter("nhom");
			ConnectSQL c = new ConnectSQL();
			int kq = c.updateData("update admin set id ="+id+", taikhoan='"+taikhoan+"', matkhau='"+matkhau+ "',nhom="+nhom);*/
			ConnectSQL c = new ConnectSQL();
			ResultSet re = c.getData("select * from admin where id ="+id);
			re.next();
			request.setAttribute("admin", re);
			request.getRequestDispatcher("/admin/suaAdmin.jsp").forward(request, response);
		} catch (Exception e) {
			Logger.getLogger(DeleteAdmin.class.getName()).log(Level.SEVERE,
					null, e);
			System.out.println("no");
		}
		
	}

}