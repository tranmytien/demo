package hcm.edu.vn;

import javax.servlet.http.HttpServletRequest;

import model.BenhNhan;
import model.DichVu;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.BenhNhanDAO;
import dao.DichVuDAO;

@Controller
@RequestMapping(value="/benhnhan")
public class BenhNhanController {
	BenhNhan bn;
	
	@RequestMapping(value = "/thembenhnhan", method = RequestMethod.POST)
    public ModelAndView thembenhnhan(@ModelAttribute("command")BenhNhan bn, ModelMap model) {
		
		if(BenhNhanDAO.themBN(bn)==true){
			model.addAttribute("benhnhan", "");
			return new ModelAndView("thanhcong", model);
			
		}
		return new ModelAndView("dangnhap");
    }
	@RequestMapping (value="/timkiemtheomabn", method= RequestMethod.GET)
	public String view(HttpServletRequest request) {
		String mabn = request.getParameter("mabn");
		request.setAttribute("benhnhan", BenhNhanDAO.danhSach(mabn));
		
		return "benhnhan";
	}
	@RequestMapping (value="/all", method= RequestMethod.GET)
	public String viewAll(HttpServletRequest request) {
		request.setAttribute("benhnhan", BenhNhanDAO.danhSachAll());
		return "adminxemhs";
	}
	

	@RequestMapping(value = "/suabenhnhanfinal", method = RequestMethod.POST)
    public ModelAndView suabenhnhan(@ModelAttribute("command")BenhNhan bn, ModelMap model) {
		if(BenhNhanDAO.suaBenhNhanu(bn)==true){
			model.addAttribute("benhnhan", "");
			return new ModelAndView("thanhcong", model);
			
		}
		return new ModelAndView("dangnhap", model);
    }
	@RequestMapping(value = "/xoabenhnhanfinal", method = RequestMethod.GET)
    public ModelAndView thembenhnhan(ModelMap model, HttpServletRequest request) {
		String mabn= request.getParameter("mabn");
		if(BenhNhanDAO.xoaBN(mabn)==true){
			request.setAttribute("benhnhan", BenhNhanDAO.danhSachAll());
			return new ModelAndView("adminxemhs", model);
			
		}
		return new ModelAndView("dangnhap", model);
    }
	@RequestMapping(value = "/them")
    public String themBenhNhan() {
		return "thembenhnhan";
	}
	
	@RequestMapping(value = "/datlich", method = RequestMethod.POST)
    public ModelAndView datL(@ModelAttribute("command") DichVu dv, ModelMap model) {
		
		if(DichVuDAO.datLich(dv)!=null){
			model.addAttribute("benhnhan", "");
			return new ModelAndView("thanhcong", model);
			
		}
		return new ModelAndView("dangnhap", model);
    }
	@RequestMapping(value = "/dangkitaikhoan", method = RequestMethod.POST)
    public ModelAndView dk(@ModelAttribute("command") BenhNhan bn, ModelMap model) {
		
		if(BenhNhanDAO.dangKiTaiKhoan(bn)==true){
			model.addAttribute("benhnhan", "");
			return new ModelAndView("thanhcong", model);
			
		}
		return new ModelAndView("dangnhap", model);
    }
	@RequestMapping(value = "/dangki")
    public String dKiTaiKhoan() {
		return "dangki";
	}
	
}
