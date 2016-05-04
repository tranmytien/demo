package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.ConnectSQL;
import datadao.TaiKhoan;
import datadao.TaiKhoangDao;


/**
 * Servlet implementation class Login
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		toDo(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		toDo(request, response);
	}
	protected void toDo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/xlm");
		String taikhoan = request.getParameter("taikhoan");
		String matkhau = request.getParameter("matkhau");
		String ghinhomk = request.getParameter("nhom");
		String err_user = "Bạn chưa nhập tên đăng nhập";
		String err_matkhau = "báº¡n chÆ°a nháº­p mk ";

		boolean baoloi = false;
		if (taikhoan == "") {
			request.setAttribute("err_user", "Tên đăng nhập không đúng");
			baoloi = true;
		} else {
			request.setAttribute("taikhoan", taikhoan);
		}
		if (matkhau == "") {
			request.setAttribute("err_matkhau", "Mật khẩu không đúng");
			baoloi = true;
		} else {
			request.setAttribute("matkhau", matkhau);
		}
		PreparedStatement sta = null;
		ResultSet rs = null;
		try {
			String sql = "select * from admin where taikhoan=? and matkhau=?;";
			try {// kiem tra ten dang nhap voi mat khau
				sta = ConnectSQL.getConnect().prepareStatement(sql);
				sta.setString(1, taikhoan);
				sta.setString(2, matkhau);
				rs = sta.executeQuery();
				rs.last();
				int i = rs.getRow();
				if (rs != null && i == 1) {
					TaiKhoan tk = new TaiKhoan();
					rs.first();
					tk.setid(rs.getInt(1));
					tk.settaikhoan(rs.getString(2));
					tk.setmatkhau(rs.getString(3));
					int g = rs.getInt(4);
					tk.setSodutk(rs.getInt(5));
					HttpSession session = request.getSession();
					session.setAttribute("tk", tk);
					session.setAttribute("DangNhap", "1");
					if (g == 2) {
						response.sendRedirect("index.jsp");
						TaiKhoangDao tkd= new TaiKhoangDao();
						TaiKhoan tk1 = new TaiKhoan(tk.getid(),tk.gettaikhoan(),tk.getmatkhau(),tk.getSodutk()
						);
						tkd.addTk(tk1);
						session.setAttribute("tk", tk1);
					} else {
						response.sendRedirect("admin/index1.jsp");
					}
					request.setAttribute("taikhoan", taikhoan);
					request.setAttribute("matkhau", matkhau);
					Cookie cookie = new Cookie("taikhoan", taikhoan);
					Cookie cookiepass = new Cookie("cookiepass", matkhau);
					if (ghinhomk != null) {
						cookie.setMaxAge(30 * 24 * 60 * 60);
						cookiepass.setMaxAge(30 * 24 * 60 * 60);
					} else {
						cookie.setMaxAge(0);
						cookiepass.setMaxAge(0);
					}
					response.addCookie(cookie);
					response.addCookie(cookiepass);
					sta.setString(1, taikhoan);
					sta.setString(2, matkhau);
					rs.beforeFirst();
					String name = null;
					while (rs.next()) {
						name = rs.getString("");
						request.getSession(true).setAttribute("ten", name);
					}
					System.out.println("tim kiem thanh cong" + name);
				} else {

					request.getRequestDispatcher("Login.jsp").forward(
							request, response);
				}
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
				System.out.println("loi lien ket");

				response.sendRedirect("Login.jsp");

			}

			catch (Exception e) {
				e.printStackTrace();
			}

		} finally {
			try {
				sta.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

}
