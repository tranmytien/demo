package hcm.edu.views;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
 
@Entity
@Table(name = "PRODUCT")
public class Product {
 
   private Integer PRODUCT_ID;
   private String PRODUCT_NAME;
   private Integer PRODUCT_PRICE;
   private String PRODUCT_IMAGE;
   private String PRODUCT_DESCRIPTION;
   private String PRODUCT_TYPE;
 
   public Product() {
   }

public Product(Integer pRODUCT_ID, String pRODUCT_NAME, Integer pRODUCT_PRICE, String pRODUCT_IMAGE,
		String pRODUCT_DESCRIPTION, String PRODUCT_TYPE) {
	super();
	PRODUCT_ID = pRODUCT_ID;
	PRODUCT_NAME = pRODUCT_NAME;
	PRODUCT_PRICE = pRODUCT_PRICE;
	PRODUCT_IMAGE = pRODUCT_IMAGE;
	PRODUCT_DESCRIPTION = pRODUCT_DESCRIPTION;
	
}

@Id
@Column(name = "PRODUCT_ID")
public Integer getPRODUCT_ID() {
	return PRODUCT_ID;
}

public void setPRODUCT_ID(Integer pRODUCT_ID) {
	PRODUCT_ID = pRODUCT_ID;
}

@Column(name = "PRODUCT_NAME", length = 255, nullable = false)
public String getPRODUCT_NAME() {
	return PRODUCT_NAME;
}

public void setPRODUCT_NAME(String pRODUCT_NAME) {
	PRODUCT_NAME = pRODUCT_NAME;
}

@Column(name = "PRODUCT_PRICE")
public Integer getPRODUCT_PRICE() {
	return PRODUCT_PRICE;
}

public void setPRODUCT_PRICE(Integer pRODUCT_PRICE) {
	PRODUCT_PRICE = pRODUCT_PRICE;
}

public String getPRODUCT_IMAGE() {
	return PRODUCT_IMAGE;
}

public void setPRODUCT_IMAGE(String pRODUCT_IMAGE) {
	PRODUCT_IMAGE = pRODUCT_IMAGE;
}

@Column(name = "PRODUCT_DESCRIPTION", length = 255, nullable = false)
public String getPRODUCT_DESCRIPTION() {
	return PRODUCT_DESCRIPTION;
}

public void setPRODUCT_DESCRIPTION(String pRODUCT_DESCRIPTION) {
	PRODUCT_DESCRIPTION = pRODUCT_DESCRIPTION;
}
public void setPRODUCT_TYPE(String pRODUCT_TYPE) {
	PRODUCT_IMAGE = pRODUCT_TYPE;
}

@Column(name = "PRODUCT_TYPE", length = 10, nullable = false)
public String getPRODUCT_TYPE() {
	return PRODUCT_TYPE;
}
}