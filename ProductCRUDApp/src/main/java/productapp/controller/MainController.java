package productapp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.productapp.dao.ProductDao;
import com.productapp.model.Product;

@Controller
public class MainController {
	
	@Autowired
	private ProductDao productDao;
	

	/* get all products */
	@RequestMapping("/")
	public String home(Model m)
	{
		List<Product> products = productDao.getProducts();
		System.out.println("this is homee module....");
		m.addAttribute("pro", products);
		return "index";
	}
	
	//add product
	
	@RequestMapping("/add-product")
	public String addProduct(Model m)
	{
		m.addAttribute("title","Add Product");
		
		System.out.println("this is add product module");
		return "add_product";
	}
	
	@RequestMapping(name ="/show", method = RequestMethod.POST)
	public String handleProduct(@ModelAttribute Product product, HttpServletRequest request )
	{

		System.out.println(product);
		System.out.println("this is show page");
		String contextPath = request.getContextPath();
		System.out.println(contextPath);
		return "success";
	}
	
	
}
