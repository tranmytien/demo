package model;

public class AdminUser {
	private String adminten;
	private String adminmk;
	Database db = Database.create();
	public AdminUser(String adminten, String adminmk) {
		super();
		this.adminten = adminten;
		this.adminmk = adminmk;
	}
	public String getAdminten() {
		return adminten;
	}
	public void setAdminten(String adminten) {
		this.adminten = adminten;
	}
	public String getAdminmk() {
		return adminmk;
	}
	public void setAdminmk(String adminmk) {
		this.adminmk = adminmk;
	}
	public AdminUser() {
		// TODO Auto-generated constructor stub
	}
}
