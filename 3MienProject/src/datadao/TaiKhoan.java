package datadao;

public class TaiKhoan {
	private int id;
	private String taikhoan;
	private String matkhau;
private int sodutk;
	public TaiKhoan() {
		super();
	}
	
	public int getSodutk() {
		return sodutk;
	}
	public void setSodutk(int sodutk) {
		this.sodutk = sodutk;
	}
	public TaiKhoan(int id, String taikhoan, String matkhau, int sodutk) {
		
		this.id = id;
		this.taikhoan = taikhoan;
		this.matkhau = matkhau;
		this.sodutk = sodutk;
	
	}

	public int getid() {
		return id;
	}

	public void setid(int id) {
		this.id = id;
	}

	public String gettaikhoan() {
		return taikhoan;
	}

	public void settaikhoan(String taikhoan) {
		this.taikhoan = taikhoan;
	}

	public String getmatkhau() {
		return matkhau;
	}

	public void setmatkhau(String matkhau) {
		this.matkhau = matkhau;
	}


}
