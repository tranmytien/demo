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
 * Servlet implementation class EditMenu
 */
@WebServlet("/EditMenu")
public class EditMenu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditMenu() {
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
			
			ConnectSQL c = new ConnectSQL();
			ResultSet re = c.getData("SELECT foods.food_id, foods.name, foods.price, foods.image, foodtype.description from fooddetail inner join foods on fooddetail.food_id =foods.food_id inner join foodtype on fooddetail.type_id=foodtype.typeid where foods.food_id="+id);
			re.next();
			request.setAttribute("menu", re);
			request.getRequestDispatcher("/admin/suaMenu.jsp").forward(request, response);
		} catch (Exception e) {
			Logger.getLogger(DeleteAdmin.class.getName()).log(Level.SEVERE,
					null, e);
			System.out.println("no");
		}
		
	}

}

