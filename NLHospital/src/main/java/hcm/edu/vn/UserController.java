package hcm.edu.vn;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import model.Admin;
import model.AdminUser;
import model.BenhNhan;
import model.BenhNhanUser;
import model.GeneralUser;
import model.User;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.BenhNhanDAO;


@Controller
@RequestMapping(value="/user")
public class UserController {

	private User user;
	@RequestMapping(value="/login", method=RequestMethod.GET)
	
	public String login(ModelMap mm, HttpServletRequest request){
		user = new GeneralUser();
		if(user.checkSession(request.getSession()))
			return "admin";
		return "dangnhap";
	}
	@RequestMapping (value="/xulydangnhap", method = RequestMethod.POST)
	public String hello( HttpServletRequest request, @RequestParam(value="username") String username, @RequestParam (value="password") String password){
		HttpSession session = request.getSession();
		
		BenhNhan bn = new BenhNhan();
		bn.setMabn(username);;
		user = new BenhNhanUser(bn, password);

		 
		if (user.login() != 0) {
			session.setAttribute(username, password);
			session.setAttribute("actor", "bn");
			request.setAttribute("list", bn.getPhongbenh());
			return "truyvan";
			
		}else if(user.loginadmin()!=0){
			request.setAttribute("benhnhan", BenhNhanDAO.danhSachAll());
		return "adminxemhs";
		}
		return "dangnhap";
		
		}
	
	@RequestMapping(value = "/pw", method = RequestMethod.GET)
	public String pw(HttpServletRequest request) {
		user = new GeneralUser();
		if (user.checkSession(request.getSession())) {
			return "password";
		} else {
			return "dangnhap";
		}

	}
	@RequestMapping(value = "/password", method = RequestMethod.POST)
	public String password(HttpSession session, HttpServletRequest request) {
		String type = (String) session.getAttribute("actor");
		String newpw = request.getParameter("newpw");
		String username = request.getParameter("username");
		System.out.println(username);
		String confirm = request.getParameter("confirm");
		User user = null;
		if (newpw.equals(confirm)) {
			
			} else if (type.equals("bn")) {
				BenhNhan bn = new BenhNhan();
				bn.setMabn(username);
				user = new BenhNhanUser(bn, newpw);
			
		}
		try {
			user.doimatkhau();
			return logout(session);
		} catch (Exception e) {
			request.setAttribute("message",
					"XÃ¡c nháº­n máº­t kháº©u khÃ´ng chÃ­nh xÃ¡c!");
			return pw(request);
		}

	}
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		user = new GeneralUser();
		user.logout(session);
		return "dangnhap";
	}
	@RequestMapping(value = "/trangchu", method = RequestMethod.GET)
	public String trangchu(HttpSession session){
		return "trangchu";
	}
	@RequestMapping(value = "/xemhoso", method = RequestMethod.GET)
	public String xemhosoba(HttpSession session){
		return "truyvan";
	}
	@RequestMapping(value = "/gioithieu", method = RequestMethod.GET)
	public String giothieu(HttpSession session){
		return "gioithieu";
	}
	@RequestMapping(value = "/bacsi", method = RequestMethod.GET)
	public String bacsi(HttpSession session){
		return "bacsi";
	}
	@RequestMapping(value = "/ttsk", method = RequestMethod.GET)
	public String ttsk(HttpSession session){
		return "ttsk";
	}
	@RequestMapping(value = "/datlich", method = RequestMethod.GET)
	public String datlich(HttpSession session){
		return "datlich";
	}
	@RequestMapping(value = "/tuvan", method = RequestMethod.GET)
	public String tuvan(HttpSession session){
		return "tuvan";
	}
	@RequestMapping(value = "/lienhe", method = RequestMethod.GET)
	public String lienhe(HttpSession session){
		return "lienhe";
	}
	@RequestMapping(value = "/dangnhap", method = RequestMethod.GET)
	public String dangnhap(HttpSession session) {
		user = new GeneralUser();
		user.logout(session);
		return "dangnhap";
	}
	
}
