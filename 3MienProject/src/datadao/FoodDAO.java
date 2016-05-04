package datadao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import beans.Food;
import controller.ConnectSQL;

public class FoodDAO {

	// get sum amount food in database
	public static int getAllOfFood() {
		return getSumFood("SELECT count(*) FROM foods");
	}

	// get amount food by query (attribute)
	public static int getSumFood(String query) {
		Connection conn = null;
		PreparedStatement pre = null;
		ResultSet rs = null;

		try {
			conn = ConnectSQL.getConnect();
			pre = conn.prepareStatement(query);
			rs = pre.executeQuery();

			int sum = 0;
			if (rs.next())
				sum = rs.getInt(1);
			return sum;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pre.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return -1;
	}

	// insert new food into database
	public static boolean insert(Food food) {
		Connection conn = null;
		PreparedStatement pre = null;

		try {
			conn = ConnectSQL.getConnect();
			pre = conn
					.prepareStatement("INSERT INTO foods(name, image, price) VALUES(?,?,?)");
			pre.setString(1, food.getName());
			pre.setString(2, food.getImage());
			pre.setLong(3, food.getPrice());

			int rows = pre.executeUpdate();

			if (rows > 0) {
				return true;
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pre.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return false;
	}

	public static void main(String[] args) {
		System.out.println(getAllOfFood());
	}
}
