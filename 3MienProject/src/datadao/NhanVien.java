package datadao;

public class NhanVien {
	private int id;
	private String name;
	private String email;
	private String sdt;
	private String ngayl;
	private String chucvu;
	private int luong;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSdt() {
		return sdt;
	}
	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	public String getNgayl() {
		return ngayl;
	}
	public void setNgayl(String ngayl) {
		this.ngayl = ngayl;
	}
	public String getChucvu() {
		return chucvu;
	}
	public void setChucvu(String chucvu) {
		this.chucvu = chucvu;
	}
	public int getLuong() {
		return luong;
	}
	public void setLuong(int luong) {
		this.luong = luong;
	}
	public NhanVien(int id, String name, String email, String sdt,
			String ngayl, String chucvu, int luong) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.sdt = sdt;
		this.ngayl = ngayl;
		this.chucvu = chucvu;
		this.luong = luong;
	}

	

}
