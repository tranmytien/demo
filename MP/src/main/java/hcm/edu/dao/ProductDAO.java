package hcm.edu.dao;

import java.util.List;

import hcm.edu.views.*;
public interface ProductDAO {

	public List<Product> listProduct();
	public void createProduct(int id, String name, int price, String image, String description, String type);
}
