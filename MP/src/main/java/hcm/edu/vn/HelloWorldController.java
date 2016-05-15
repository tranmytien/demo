package hcm.edu.vn;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import hcm.edu.dao.ProductDAO;
import hcm.edu.views.Product;
 
@Controller
public class HelloWorldController {
	@Autowired
	private ProductDAO productDAO;
	private Product product;
 
   @RequestMapping("/index")
   public String hello(Model model) {
        
      // model.addAttribute("greeting");
        
       return "dangnhap";
        
   }
   @RequestMapping("/chitiet")
 public String chitietsanpham(Model model){
	 return "chitietsanpham";
 }
   @RequestMapping ({"/demohi"})
   public String productList(Model model){
	   productDAO.createProduct(product.getPRODUCT_ID(), product.getPRODUCT_NAME(),product.getPRODUCT_PRICE(),product.getPRODUCT_IMAGE(), product.getPRODUCT_DESCRIPTION(), product.getPRODUCT_TYPE());

	   List<Product> list = productDAO.listProduct();
	   for (Product pro : list){
		   System.out.println("pro: "+ pro.getPRODUCT_ID());
	   }
	   model.addAttribute("pr", list);
	return "demoview";
   }
   
}