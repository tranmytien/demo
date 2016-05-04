package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Food;
import datadao.FoodDAO;

/**
 * Servlet implementation class MenuServlet
 */
@WebServlet("/menuservlet")
public class MenuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void processRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String type = request.getParameter("type");
		String query = "INNER JOIN foodDetail ON foods.food_id=foodDetail.food_id WHERE foodDetail.type_id=";
		if (type != null) {
			switch (type) {
			case "bac":
				query += "1";
				break;
			case "trung":
				query += "2";
				break;
			case "nam":
				query += "3";
				break;
			case "khaivi":
				query += "4";
				break;
			case "main":
				query += "5";
				break;
			case "trangmieng":
				query += "6";
				break;
			default: // all
				type = "all";
				query = "";
			}
		} else {
			query = "";
		}

		/* start paging */
		// default value of page
		int cPage = 0;
		try {
			cPage = Integer.parseInt(request.getParameter("p"));
		} catch (NumberFormatException e) {
			cPage = 0;
		} catch (Exception e) {
			e.printStackTrace();
			cPage = 0;
		}
		if (cPage < 0) {
			cPage = 0;
		}

		// 9 picture every page
		int size = 9;

		// calulating sum of page
		int sumFood = FoodDAO.getSumFood("SELECT count(*) FROM foods " + query);
		// error read database
		if (sumFood < 1) {
			// chuyen qua trang bao loi
			request.setAttribute("err", "Hiện tại chưa có danh sách thực đơn");
			request.getRequestDispatcher("/ThucDon").forward(request, response);
			return;
		}
		int sumPage = sumFood / size;
		if (sumFood % size != 0)
			sumPage++;

		// user input page is incorrect
		if (cPage >= sumPage)
			cPage = sumPage - 1;

		Connection conn = null;
		PreparedStatement pre;
		try {
			conn = ConnectSQL.getConnect();
			pre = conn.prepareStatement("select * from foods inner join kmai on foods.kmaiid = kmai.id " + query
					+ " LIMIT ?,?");
			pre.setInt(1, cPage * size);
			pre.setInt(2, size);
			ResultSet rs = pre.executeQuery();

			ArrayList<Food> foods = new ArrayList<>();
			while (rs.next()) {
				Food f = new Food(rs.getInt("food_id"), rs.getString("name"),
						rs.getString("image"), rs.getLong("price"),rs.getDouble("giamgia"));
				foods.add(f);
			}
			request.setAttribute("foods", foods);
			request.setAttribute("cPage", cPage);
			request.setAttribute("sumPage", sumPage);
			request.setAttribute("type", type);
			request.getRequestDispatcher("/ThucDon").forward(request, response);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
		
		
	}
	}