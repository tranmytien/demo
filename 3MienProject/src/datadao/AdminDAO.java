package datadao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import controller.ConnectSQL;

public class AdminDAO {
	public static Connection con = null;
	public static PreparedStatement pstmt = null;
	public static ResultSet rs = null;
/*
	public static void insertTacGia(String tentg) throws ClassNotFoundException {
		String search = "SELECT count(id) FROM admin where id =?";
		try {
			pstmt = ConnectSQL.getConnect().prepareStatement(search);
			rs = pstmt.executeQuery();
			rs.next();
			int count = rs.getInt(1);
			if (count == 0) {

			} else {

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void updateTacGia(String id) {
		String update = "UPDATE admin SET id = '" + id
				+ "' WHERE matacgia= ?";
		try {
			pstmt = ConnectionDB.getConnection().prepareStatement(update);
			pstmt.setInt(1, matacgia);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
*/
	public static void deleteTacGia(String sql) throws ClassNotFoundException {
		String delete = "DELETE FROM admin WHERE id = ?";
		try {
			pstmt = ConnectSQL.getConnect().prepareStatement(delete);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}
