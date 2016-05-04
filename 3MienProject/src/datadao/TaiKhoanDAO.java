package datadao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import controller.ConnectSQL;

public class TaiKhoanDAO {
	private static Connection connection = null;
	private static Statement st = null;
	private static PreparedStatement pstmt = null;
	private static PreparedStatement pst = null;
	private static ResultSet rs = null;
	private static int id;

	public static void insertTaiKhoan(String id,String tendn, String matkhau) {
		try {
			
			String insert = "INSERT INTO ho(id,tendn, matkhau) VALUES (" 

					+id+",'" +tendn + "','" + matkhau + "');";
			pstmt = ConnectSQL.getConnect().prepareStatement(insert);
		pstmt.executeUpdate();
			//System.out.println("insert thành công...");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
