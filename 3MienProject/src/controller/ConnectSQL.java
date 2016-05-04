package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnectSQL {
	static Connection con;

	public int updateData(String sql) throws Exception {
		int kq = 0;
		getConnect();
		PreparedStatement pr = con.prepareStatement(sql);
		kq = pr.executeUpdate();
		return kq;
	}

	public ResultSet getData(String sql) throws Exception {
		ResultSet re;
		getConnect();
		PreparedStatement pr = con.prepareStatement(sql);
		re = pr.executeQuery();
		return re;
	}

	public static Statement connect() throws ClassNotFoundException,
			SQLException {
		if (con == null || con.isClosed()) {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/a",
					"root", "1234");
			System.out.println("Liên kết thành công");
			return con.createStatement();
		} else {
			System.out.println("Liên kết thất bại");
			return con.createStatement();
		}

	}

	public static Connection getConnect() throws SQLException,
			ClassNotFoundException {
		if (con == null || con.isClosed()) {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/a",
					"root", "1234");
		}
		return con;

	}

	public void closeConnect() throws Exception {
		if (con == null && con.isClosed()) {
			con.close();
		}
	}

	public static void main(String[] args) throws Exception {
		ConnectSQL c = new ConnectSQL();
		c.getConnect();
		System.out.println("connect successfull");
	}

}
