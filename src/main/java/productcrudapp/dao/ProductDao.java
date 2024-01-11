package productcrudapp.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import productcrudapp.model.Product;

@Component
public class ProductDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	//Create or update data
	@Transactional
	public void createProduct(Product product) {
		this.hibernateTemplate.save(product);
	}
	
	//update data
	@Transactional	
	public void updateProduct(Product product) {
		this.hibernateTemplate.update(product);
	}
	
	//Get all products
	public List<Product> getProducts(){
		List<Product> products = this.hibernateTemplate.loadAll(Product.class);
		return products;
	}
	
	//delete single product
	@Transactional
	public void deleteProduct(int pid) {
		Product p = this.hibernateTemplate.load(Product.class,pid);
		this.hibernateTemplate.delete(p);
	}
	
	//get a single product
	public Product getProduct(int pid) {
		return this.hibernateTemplate.get(Product.class, pid);
	}
}
