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
 * Servlet implementation class UpdateEmployee
 */
@WebServlet("/UpdateEmployee")
public class UpdateEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateEmployee() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doUpEmployee(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doUpEmployee(request, response);
	}
	protected void doUpEmployee(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	try {
		String id = request.getParameter("id");
		String hoten = request.getParameter("hoten");
		String email = request.getParameter("email");
		String sdt = request.getParameter("sdt");
		String ngayvao = request.getParameter("ngayvao");
		String chucvu = request.getParameter("chucvu");
		String luong = request.getParameter("luong");
		
		ConnectSQL c = new ConnectSQL();
		int kq = c.updateData("update nhanvien set id ="+id+", hoten='"+hoten+"', email='"+email+ "', sodienthoai='"+sdt+"', ngayvaolam='"+ngayvao+"', chucvu='"+chucvu+"', luong="+luong+"  where id="+id);
		request.getRequestDispatcher("/admin/nhanvien.jsp").forward(request, response);
	} catch (Exception e) {
		Logger.getLogger(DeleteAdmin.class.getName()).log(Level.SEVERE,
				null, e);
		System.out.println("no");
	}
	
}

}


