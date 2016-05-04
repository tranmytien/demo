package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import datadao.FoodDAO;
import beans.Food;

/**
 * Servlet implementation class FoodServlet
 */
@WebServlet("/FoodServlet")
public class FoodServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

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

	private void processRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String cmd = request.getParameter("cmd");

		if (cmd != null) {
			switch (cmd) {
			case "view": // view detail food
				break;
			case "insert": // insert new food
				try {
					String foodName = request.getParameter("txtNameFood");
					String attribute = request.getParameter("attribute");
					long price = Long.parseLong(request
							.getParameter("txtPrice"));

					// upload image
					// to something

					Food food = new Food(foodName, "", price);
					boolean result = FoodDAO.insert(food);

					if (result)
						request.setAttribute("notify", "Thêm thành công");
					else
						request.setAttribute("notify", "Không thể thêm");
					request.getRequestDispatcher("/admin/thucdon.jsp")
							.forward(request, response);
				} catch (NumberFormatException e) {
					e.printStackTrace();
				}
				break;
			case "update": // update food
				break;
			case "delete": // delete food
				break;
			}
		}
	}

}
