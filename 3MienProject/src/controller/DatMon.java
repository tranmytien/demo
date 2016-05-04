package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Cart;
import datadao.SanPham;

/**
 * Servlet implementation class DatMon
 */
@WebServlet("/DatMon")
public class DatMon extends HttpServlet {
	static String name = null;
	static String loai = null;
	static int price = 0;
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DatMon() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try {
			toDo(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try {
			toDo(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void toDo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		HttpSession session = request.getSession();
		session.setAttribute("id", id);
		Cart cart = (Cart) session.getAttribute("cart");
		if(cart == null) cart = new Cart();
		SanPham sp = null;
		Connection conn = null;
		PreparedStatement pre;
		try {
			conn = ConnectSQL.getConnect();
			pre = conn.prepareStatement("select * from foods inner join kmai on foods.kmaiid = kmai.id where foods.food_id = "+id);
			ResultSet rs = pre.executeQuery();
			
			while (rs.next()) {
				if(rs.getString("logan").equals(null)){
					sp = new SanPham(rs.getString("food_id"), rs.getString("name"),
							rs.getString("image"), rs.getInt("price"),1,"khong co khuyen mai",1);
				} else{
				sp = new SanPham(rs.getString("food_id"), rs.getString("name"),
						rs.getString("image"), rs.getInt("price"),1,rs.getString("logan"),rs.getDouble("giamgia"));
				}
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
			if(sp!=null){
				cart.add(sp);
				session.setAttribute("cart", cart);
				System.out.println(sp.getImage());
				
			}
			response.sendRedirect("Cart.jsp");
		
		}
	
}
	
