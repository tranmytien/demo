package dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import model.BenhNhan;
import model.Database;
import model.DichVu;

public class BenhNhanDAO {
	static BenhNhan bn;
	 static Database db = Database.create();
	 static DichVu dv;
	public static ArrayList<BenhNhan> danhSach(String mabn) {
		BenhNhan bn;
		ArrayList<BenhNhan> list = new ArrayList<BenhNhan>();
		String command = "select * from hosobenhan where mabn =" + mabn;
		try {
			ResultSet rs = db.execute(command);
			while (rs.next()) {
				bn = new BenhNhan();
				bn.setMabn(rs.getString("mabn"));
				bn.setTenbn(rs.getString("tenbn"));
				bn.setDiachi(rs.getString("diachi"));
				bn.setCannang(rs.getDouble("cannang"));
				bn.setSdt(rs.getString("sdt"));
				bn.setTinhtrangsk(rs.getString("tinhtrangsk"));
				bn.setPhongbenh(rs.getString("phongbenh"));
				bn.setKhoadieutri(rs.getString("khoadieutri"));
				bn.setBacsidieutri(rs.getString("bacsidieutri"));
				bn.setToathuoc(rs.getString("toathuoc"));
				bn.setNgaykham(rs.getString("ngaykham"));
				bn.setNgayxuatvien(rs.getString("ngayxuatvien"));
				bn.setVienphi(rs.getDouble("vienphi"));
				list.add(bn);
			}
		} catch (Exception e) {
		}
		return list;
	}

	public static ArrayList<BenhNhan> danhSachAll() {
		ArrayList<BenhNhan> list = new ArrayList<BenhNhan>();
		String command = "select * from hosobenhan";
		try {
			ResultSet rs = db.execute(command);
			BenhNhan bn;
			while (rs.next()) {
				bn = new BenhNhan();
				bn.setMabn(rs.getString("mabn"));
				bn.setTenbn(rs.getString("tenbn"));
				bn.setDiachi(rs.getString("diachi"));
				bn.setCannang(rs.getDouble("cannang"));
				bn.setSdt(rs.getString("sdt"));
				bn.setTinhtrangsk(rs.getString("tinhtrangsk"));
				bn.setPhongbenh(rs.getString("phongbenh"));
				bn.setKhoadieutri(rs.getString("khoadieutri"));
				bn.setBacsidieutri(rs.getString("bacsidieutri"));
				bn.setToathuoc(rs.getString("toathuoc"));
				bn.setNgaykham(rs.getString("ngaykham"));
				bn.setNgayxuatvien(rs.getString("ngayxuatvien"));
				bn.setVienphi(rs.getDouble("vienphi"));

				list.add(bn);
			}
		} catch (Exception e) {
		}
		return list;
	}

	public static boolean themBN(BenhNhan bn) {
		String command = "insert into hosobenhan values ('" + bn.getMabn()
				+ "', '" + bn.getTenbn() + "', '" + bn.getDiachi() + "', '"
				+ bn.getCannang() + "', '" + bn.getSdt() + "', '"
				+ bn.getTinhtrangsk() + "', " + "'" + bn.getPhongbenh()
				+ "', '" + bn.getKhoadieutri() + "', '" + bn.getBacsidieutri()
				+ "', '" + bn.getToathuoc() + "', " + "'" + bn.getNgaykham()
				+ "', '" + bn.getNgayxuatvien() + "', '" + bn.getVienphi()
				+ "')";
		String cmt= "insert into taikhoanbenhnhan values ('"+bn.getMabn()+"', '"+bn.getTenbn()+"', '1')";
		try {
			if (db.update(command) > 0 && db.update(cmt)>0) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public static boolean suaBenhNhanu(BenhNhan bn) {
		String sql = "update hosobenhan set tenbn='"
				+ bn.getTenbn() + "', diachi='" + bn.getDiachi() + "' , cannang="
				+ bn.getCannang() + " ,sdt= '" + bn.getSdt() + "' , tinhtrangsk= '"
				+ bn.getTinhtrangsk() + "' , phongbenh='" + bn.getPhongbenh() + "', khoadieutri= '" + bn.getKhoadieutri()
				+ "' , bacsidieutri= '" + bn.getBacsidieutri() + "' , toathuoc= '" + bn.getToathuoc() + "', ngaykham='"
				+ bn.getNgaykham() + "', ngayxuatvien= '" + bn.getNgayxuatvien()+ "' , vienphi= " + bn.getVienphi()+" where mabn = '"+bn.getMabn()+"'";
		
	
	
	try {
		if (db.update(sql) > 0) {
			return true;
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return false;
	}
	public static boolean xoaBN(String mabn){
		String sql ="delete from hosobenhan where mabn = '"+mabn+"'";
		String cmt ="delete from taikhoanbenhnhan where mabn = '"+mabn+"'";
			try {
				if (db.update(sql) > 0 && db.update(cmt)>0) {
					return true;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return false;
		}
	public static boolean dangKiTaiKhoan(BenhNhan bn) {
		
		String cmt= "insert into taikhoanbenhnhan values ('"+bn.getMabn()+"', '"+bn.getTenbn()+"', '1')";
		try {
			if (db.update(cmt)>0) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	
	}


