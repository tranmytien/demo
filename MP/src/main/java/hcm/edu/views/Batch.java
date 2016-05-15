package hcm.edu.views;

import java.util.Set;

public class Batch {

	Integer id;
	String name;
	Set<Product> product;
	public Batch(Integer id, String name, Set<Product> product) {
		super();
		this.id = id;
		this.name = name;
		this.product = product;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Set<Product> getProduct() {
		return product;
	}
	public void setProduct(Set<Product> product) {
		this.product = product;
	}
	
	
}
