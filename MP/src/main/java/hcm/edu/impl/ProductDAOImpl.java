package hcm.edu.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import hcm.edu.dao.ProductDAO;
import hcm.edu.views.Product;

@Transactional
public class ProductDAOImpl implements ProductDAO {

	private SessionFactory sessionFactory;
	

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@SuppressWarnings("unchecked")
	public List<Product> listProduct() {
		Session session = this.sessionFactory.getCurrentSession();

				
		List<Product> list =session.createQuery("select * from PRODUCT").list();
		return list;
	}
public void createProduct(int id, String name, int price, String image, String description, String type){
	Product product = new Product();
	product.setPRODUCT_ID(id);
	product.setPRODUCT_NAME(name);
	product.setPRODUCT_PRICE(price);
	product.setPRODUCT_DESCRIPTION(description);
	product.setPRODUCT_TYPE(type);
	Session session = this.sessionFactory.getCurrentSession();
	session.persist(product);
	
}
	
}
