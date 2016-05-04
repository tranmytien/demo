package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ThemNhanVien
 */
@WebServlet("/ThemNhanVien")
public class ThemNhanVien extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThemNhanVien() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAddEmployee(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAddEmployee(request, response);
	}
protected void doAddEmployee(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter write = response.getWriter();
		
		try {
			String id = request.getParameter("id");
			String hoten = request.getParameter("hoten");
			String email = request.getParameter("email");
			String sdt = request.getParameter("sodienthoai");
			String ngayvao = request.getParameter("ngayvao");
			String chucvu = request.getParameter("chucvu");
			String luong = request.getParameter("luong");
			
			ConnectSQL c = new ConnectSQL();
			int kq  = c.updateData("insert into nhanvien (id,hoten,email,sodienthoai, ngayvaolam, chucvu, luong) values ("+id+", '"+hoten+"', '"+email+"', '"+sdt+"', '"+ngayvao+"', '"+chucvu+"', "+luong+")");
			request.getRequestDispatcher("/admin/nhanvien.jsp").forward(request, response);
		} catch (Exception e) {
			Logger.getLogger(DeleteAdmin.class.getName()).log(Level.SEVERE,
					null, e);
			request.getRequestDispatcher("/admin/nhanvien.jsp").forward(request, response);
		}
		
	}

}