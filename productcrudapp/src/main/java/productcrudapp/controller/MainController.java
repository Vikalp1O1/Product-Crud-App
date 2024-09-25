package productcrudapp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import productcrudapp.dao.ProductDao;
import productcrudapp.model.Product;

@Controller
public class MainController {
	
	@Autowired
	private ProductDao productDao;
	
	
	@RequestMapping("/")
	public String home(Model m){
	List<Product> products=	productDao.getProducts();
		m.addAttribute("product", products);
		return "index";
	}
	
	@RequestMapping("/addProduct")
	public String addProduct(Model m) {
		m.addAttribute("title","Add Product" );
		return "addProductform";
	}
	
	@RequestMapping(value="/handleproduct", method=RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product product,HttpServletRequest request) {
		System.out.println(product);
		productDao.createProduct(product);
		RedirectView review=new RedirectView();
		
		review.setUrl(request.getContextPath()+"/");
		return review;
		
	}
	
	@RequestMapping("/delete/{productId}")
	public RedirectView deleteProduct(@PathVariable("productId") int productId,HttpServletRequest request) {
       
		this.productDao.deleteProduct(productId);
		RedirectView review=new RedirectView();
		review.setUrl(request.getContextPath()+"/");
		return review;
	}
	
	@RequestMapping("/update/{productId}")
	public String updateForm(@PathVariable("productId") int pid,Model m) {
		Product product=this.productDao.getProduct(pid);
		m.addAttribute("product", product);
		return"updateform";
	}
	

}
