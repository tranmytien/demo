package datadao;

public class SanPham {
	private String id;
	private String name;
	private String image;
	private int price;
	private int count;
	private String logan;
	private double giamgia;
	public SanPham(String id, String name, String image, int price, int count,String logan,double giamgia) {
		super();
		this.id = id;
		this.name = name;
		this.image = image;
		this.price = price;
		this.count = count;
		this.logan = logan;
		this.giamgia = giamgia;
	}

	public String getLogan() {
		return logan;
	}

	public void setLogan(String logan) {
		this.logan = logan;
	}

	public double getGiamgia() {
		return giamgia;
	}

	public void setGiamgia(double giamgia) {
		this.giamgia = giamgia;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	
	

}
