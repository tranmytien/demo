package beans;

public class Food {
	private int id;
	private String name;
	private String image;
	private long price;
	double giamgia;

	public Food() {
	}

	public Food(String name, String image, long price) {
		this.name = name;
		this.image = image;
		this.price = price;
	}

	public Food(int id, String name, String image, long price,double giamgia) {
		this.id = id;
		this.name = name;
		this.image = image;
		this.price = price;
		this.giamgia = giamgia;
	}

	public double getGiamgia() {
		return giamgia;
	}

	public void setGiamgia(double giamgia) {
		this.giamgia = giamgia;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
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

	public long getPrice() {
		return price;
	}

	public void setPrice(long price) {
		this.price = price;
	}
	public int getFinalPrice(double i){
		return (int)(i);
	}
}
