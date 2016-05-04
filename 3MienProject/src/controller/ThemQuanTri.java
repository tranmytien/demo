package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ThemQuanTri
 */
@WebServlet("/ThemQuanTri")
public class ThemQuanTri extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThemQuanTri() {
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
			String taikhoan = request.getParameter("taikhoan");
			String matkhau = request.getParameter("matkhau");
			String nhom = request.getParameter("nhom");
			
			ConnectSQL c = new ConnectSQL();
			int kq  = c.updateData("insert into admin (id,taikhoan,matkhau,nhom) values ("+id+", '"+taikhoan+"', '"+matkhau+"', "+nhom+")");
			request.getRequestDispatcher("/admin/quantri.jsp").forward(request, response);
		} catch (Exception e) {
			Logger.getLogger(DeleteAdmin.class.getName()).log(Level.SEVERE,
					null, e);
			request.getRequestDispatcher("/admin/quantri.jsp").forward(request, response);
		}
		
	}

}
