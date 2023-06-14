package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DatabaseConnection {
//    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/mydatabase";
//    private static final String JDBC_USERNAME = "root";
//    private static final String JDBC_PASSWORD = "root";
//
//    public static Connection getConnection() throws SQLException {
//        return DriverManager.getConnection(JDBC_URL, JDBC_USERNAME, JDBC_PASSWORD);
//    }
	
	public static Connection getConnection() throws SQLException {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/paytm", "root", "password");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	// method for fetch saved user data
//			public ResultSet () throws SQLException, Exception {
//				ResultSet rs = null;
//				try {
//					String sql = "SELECT UNAME,UEMAIL,UPASS,UDEG FROM STRUTS2CRUD";
//					PreparedStatement ps = getConnection().prepareStatement(sql);
//					rs = ps.executeQuery();
//					return rs;
//				} catch (Exception e) {
//					e.printStackTrace();
//					return null;
//				} finally {
//					if (getConnection() != null) {
//						getConnection().close();
//					}
//				}
//			}
	
}