package hcm.edu.vn;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
 
@Controller
public class HelloWorldController {
 
   @RequestMapping("/index")
   public String hello(Model model) {
        
      // model.addAttribute("greeting");
        
       return "index";
        
   }
   @RequestMapping("/chitiet")
 public String chitietsanpham(Model model){
	 return "chitietsanpham";
 }
}