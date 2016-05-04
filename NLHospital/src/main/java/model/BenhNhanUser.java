package model;

import java.sql.ResultSet;
import java.sql.SQLException;

public class BenhNhanUser extends User {

	private BenhNhan bn;
	private String matkhau;
	Database db = Database.create();
	public BenhNhanUser(BenhNhan bn, String matkhau) {
		super();
		this.bn = bn;
		this.matkhau = matkhau;
	}
	public BenhNhan getBn() {
		return bn;
	}
	public void setBn(BenhNhan bn) {
		this.bn = bn;
	}
	public String getMatkhau() {
		return matkhau;
	}
	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}
	@Override
	public int login() {
		int check =0;
		  String command = "select * from taikhoanbenhnhan where mabn = "+bn.getMabn()+" and nhom = '1' and bn_matkhaudangnhap = '"+matkhau+"'";
		  try {
	            ResultSet rs = db.execute(command);
	            while(rs.next()){
	                check++;
	            }
	        } catch (SQLException ex) {
	           
	        }
	        return check;
	}
	@Override
	public int loginadmin() {
		int check =0;
		  String command = "select * from taikhoanbenhnhan where mabn = "+bn.getMabn()+" and nhom = '2' and bn_matkhaudangnhap = '"+matkhau+"'";
		  try {
	            ResultSet rs = db.execute(command);
	            while(rs.next()){
	                check++;
	            }
	        } catch (SQLException ex) {
	           
	        }
	        return check;
	}
	@Override
	public int doimatkhau() {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
	

}

	
	
