package model;

public class Admin {
 private String adminten;
 private String adminmk;
 private int nhom;
 public Admin() {
	// TODO Auto-generated constructor stub
}
public Admin(String adminten, String adminmk, int nhom) {
	super();
	this.adminten = adminten;
	this.adminmk = adminmk;
	this.nhom = nhom;
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
public int getNhom() {
	return nhom;
}
public void setNhom(int nhom) {
	this.nhom = nhom;
}
 
}
