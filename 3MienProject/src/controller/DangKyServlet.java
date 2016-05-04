package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import datadao.KhachHangDAO;
import datadao.TaiKhoanDAO;

/**
 * Servlet implementation class DangKyServlet
 */
@WebServlet("/DangKyServlet")
public class DangKyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private int day, month, year;
	private String s_day, s_month, s_year;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DangKyServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		toDo(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		toDo(request, response);
	}

	protected void toDo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ResultSet rs = null;
		Connection con = null;
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		// TaiKhoanDAO tk = new TaiKhoanDAO();
		try {
			String id = request.getParameter("id");
			// int id = tk.taikhoan();
			String tendn = request.getParameter("tendn");
			String matkhau = request.getParameter("matkhau");
			String re_matkhau = request.getParameter("re_matkhau");
			String ten = request.getParameter("ten");
			String email = request.getParameter("email");
			String sodienthoai = request.getParameter("sodienthoai");
			// String ngaysinh = request.getParameter("ngaysinh");
			String gioitinh = request.getParameter("gioitinh");
			String s_day = request.getParameter("day");
			String s_month = request.getParameter("month");
			String s_year = request.getParameter("year");
			String nghenghiep = request.getParameter("nghenghiep");
			String quocgia = request.getParameter("quocgia");
			String diachi = request.getParameter("diachi");
			day = Integer.parseInt(request.getParameter("day"));
			month = Integer.parseInt(request.getParameter("month"));
			year = Integer.parseInt(request.getParameter("year"));

			boolean baoloi = false;

			String err_tendn = "";
			if (tendn == "") {
				err_tendn += "Bạn chưa nhập tên đăng nhập";
				baoloi = true;
			} else {
				tendn = tendn.trim();
				String sql = "SELECT * FROM ho";
				try {
					rs = ConnectSQL.connect().executeQuery(sql);
					rs.beforeFirst();
					while (rs.next()) {
						if (rs.getString(2).equals(tendn)) {
							err_tendn += "Tên đăng nhập đã tồn tại, vui lòng chọn tên khác";
							baoloi = true;
						}
					}
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} finally {
					try {
						rs.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
			}
			if (!baoloi) {
				s_day = String.valueOf(day);
				s_month = String.valueOf(month);
				s_year = String.valueOf(year);
				String ngaysinh = "";
				if (day >= 10 && month >= 10) {
					ngaysinh = s_year + s_month + s_day;
					System.out.println("Ngày sinh: " + ngaysinh);
				} else if (day >= 10 && month < 10) {
					ngaysinh = s_year + "0" + s_month + s_day;
					System.out.println("Ngày sinh: " + ngaysinh);
				} else if (day < 10 && month >= 10) {
					ngaysinh = s_year + s_month + "0" + s_day;
					System.out.println("Ngày sinh: " + ngaysinh);
				} else {
					ngaysinh = s_year + "0" + s_month + "0" + s_day;
					System.out.println("Ngày sinh: " + ngaysinh);
				}
				KhachHangDAO.insertKhachHang(id, ten, email, sodienthoai,
						ngaysinh, gioitinh, nghenghiep, quocgia, diachi);
				TaiKhoanDAO.insertTaiKhoan(id, tendn, matkhau);

				request.getRequestDispatcher("/index.jsp").forward(request,
						response);
				// }
			} else {
				request.getRequestDispatcher("/DangKy.jsp").forward(request,
						response);
			}
		} catch (Exception e) {
			request.getRequestDispatcher("/DangKy.jsp").forward(request,
					response);
		}
	}
}
