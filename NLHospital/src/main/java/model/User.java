package model;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMethod;

public abstract class User {

	public void logout(HttpSession session){
        session.removeAttribute("username");
        session.removeAttribute("actor");
        session.invalidate();
    }
	public boolean checkSession(HttpSession session){
		if (session.getAttribute("username")!=null) return true;
		return false;
	}

	public int login() {
		// TODO Auto-generated method stub
		return 0;
	}

	public abstract int doimatkhau();
	public int loginadmin() {
		// TODO Auto-generated method stub
		return 0;
	}

	
}
