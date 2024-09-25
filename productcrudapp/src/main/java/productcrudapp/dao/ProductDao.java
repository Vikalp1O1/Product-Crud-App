package productcrudapp.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import productcrudapp.model.Product;

@Component
public class ProductDao {
	
	@Autowired
	private HibernateTemplate hibt;
	
//	Create 
	@Transactional
	public void createProduct(Product product) {
		
		this.hibt.saveOrUpdate(product);
	}
	
//	Get all Products
	public List<Product> getProducts(){
		List<Product> products=this.hibt.loadAll(Product.class);
		return products;
		
	}
	
	@Transactional
//	Delete the Single product
	public void deleteProduct(int pid) {
		Product p=this.hibt.load(Product.class, pid);
		this.hibt.delete(p);
	}
//	Get the Single Product
	public Product getProduct(int pid) {
		return this.hibt.get(Product.class, pid);
	}

}
