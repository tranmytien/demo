package datadao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import controller.ConnectSQL;

public class KhachHangDAO {
	private static Connection connection = null;
	private static PreparedStatement pstmt = null;
	private static Statement st;
	private static ResultSet rs = null;
	private static int id;


	public static void insertKhachHang(String id, String ten, String email,
			String sodienthoai, String ngaysinh, String gioitinh,String nghenghiep,String quocgia,
			String diachi) throws Exception {

		String insert = "insert into nhan (id,ten,email,sodienthoai, ngaysinh,gioitinh, nghenghiep,quocgia, diachi) values ("
				+ id
				+ ",'"
				+ ten
				+ "', '"
				+ email
				+ "', '"
				+ sodienthoai
				+ "', '"
				+ ngaysinh
				+ "', '"
				+ gioitinh
				+ "', '"
				+ nghenghiep
				+ "', '"
				+ quocgia
				+ "', '"
				+ diachi
				+ "');";

		pstmt = ConnectSQL.getConnect().prepareStatement(insert);
		pstmt.executeUpdate();
		System.out.println("insert khachhang thành công...");

	}

	public static void main(String[] args) {

	}
}
