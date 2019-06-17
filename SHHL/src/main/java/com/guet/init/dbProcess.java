package com.guet.init;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class dbProcess {
	public static Connection getConn(String url, String userName, String passWord) throws IOException {
		Connection conn = null;
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (Exception ex) {
			System.out.println(ex);
		}

		try {
			if (url == null)
				return null;
			url = url + "?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT%2B8&useSSL=false&";
			conn = DriverManager.getConnection(url + "user=" + userName + "&password=" + passWord);
		} catch (SQLException ex) {
			System.out.println("SQLException: " + ex.getMessage());
			System.out.println("mysql connection failed");
		}
		return conn;
	}

	public static int insertData(Connection conn, String sql) {
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			int num = ps.executeUpdate();
			return num;
		} catch (SQLException ex) {
			System.out.println("SQLException: " + ex.getMessage());
			
		}
		return 0;
	}

	public static ResultSet getSelect(Connection conn, String sql) {
		PreparedStatement pst = null;
		ResultSet rs = null;
		try {
			pst = (PreparedStatement) conn.prepareStatement(sql);
			rs = pst.executeQuery();
		} catch (Exception e) {
		}
		return rs;
	}

	public static void closeConn(Connection conn) throws SQLException {
		if (!conn.isClosed())
			conn.close();
	}

}
