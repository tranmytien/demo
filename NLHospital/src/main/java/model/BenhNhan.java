package model;


public class BenhNhan {

	private String tenbn;
	private String mabn;
	private String diachi;
	private double cannang;
	private String sdt;
	private String tinhtrangsk;
	private String phongbenh;
	private String khoadieutri;
	private String bacsidieutri;
	private String toathuoc;
	private String ngaykham;
	private String ngayxuatvien;
	private double vienphi;
	static Database db = Database.create();
	public static String matkhau;

	public BenhNhan() {
		super();
		// TODO Auto-generated constructor stub

	}

	public BenhNhan(String tenbn, String mabn, String diachi, double cannang,
			String sdt, String tinhtrangsk, String phongbenh,
			String khoadieutri, String bacsidieutri, String toathuoc,
			String ngaykham, String ngayxuatvien, double vienphi) {
		super();
		this.tenbn = tenbn;
		this.mabn = mabn;
		this.diachi = diachi;
		this.cannang = cannang;
		this.sdt = sdt;
		this.tinhtrangsk = tinhtrangsk;
		this.phongbenh = phongbenh;
		this.khoadieutri = khoadieutri;
		this.bacsidieutri = bacsidieutri;
		this.toathuoc = toathuoc;
		this.ngaykham = ngaykham;
		this.ngayxuatvien = ngayxuatvien;
		this.vienphi = vienphi;
	}

	public String getTenbn() {
		return tenbn;
	}

	public void setTenbn(String tenbn) {
		this.tenbn = tenbn;
	}

	public String getMabn() {
		return mabn;
	}

	public void setMabn(String mabn) {
		this.mabn = mabn;
	}

	public String getDiachi() {
		return diachi;
	}

	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}

	public double getCannang() {
		return cannang;
	}

	public void setCannang(double cannang) {
		this.cannang = cannang;
	}

	public String getSdt() {
		return sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}

	public String getTinhtrangsk() {
		return tinhtrangsk;
	}

	public void setTinhtrangsk(String tinhtrangsk) {
		this.tinhtrangsk = tinhtrangsk;
	}

	public String getPhongbenh() {
		return phongbenh;
	}

	public void setPhongbenh(String phongbenh) {
		this.phongbenh = phongbenh;
	}

	public String getKhoadieutri() {
		return khoadieutri;
	}

	public void setKhoadieutri(String khoadieutri) {
		this.khoadieutri = khoadieutri;
	}

	public String getBacsidieutri() {
		return bacsidieutri;
	}

	public void setBacsidieutri(String bacsidieutri) {
		this.bacsidieutri = bacsidieutri;
	}

	public String getToathuoc() {
		return toathuoc;
	}

	public void setToathuoc(String toathuoc) {
		this.toathuoc = toathuoc;
	}

	public String getNgaykham() {
		return ngaykham;
	}

	public void setNgaykham(String ngaykham) {
		this.ngaykham = ngaykham;
	}

	public String getNgayxuatvien() {
		return ngayxuatvien;
	}

	public void setNgayxuatvien(String ngayxuatvien) {
		this.ngayxuatvien = ngayxuatvien;
	}

	public double getVienphi() {
		return vienphi;
	}

	public void setVienphi(double vienphi) {
		this.vienphi = vienphi;
	}

}