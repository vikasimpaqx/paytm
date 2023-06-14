package com.action;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class StoreAmountAction extends ActionSupport {

	private String amount;

	public String getAmount() {
		return amount;
	}


	public void setAmount(String amount) {
		this.amount = amount;
	}


	public String execute() {
			Connection conn = null;
			PreparedStatement stmt = null;
			//        DatabaseConnection connection=new DatabaseConnection();

			try {
				// Establish a database connection (replace with your database configuration)
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/paytm", "root", "password");

				// Prepare the SQL statement for insertion
				String sql = "INSERT INTO amount (amount) VALUES (?)";
				stmt = conn.prepareStatement(sql);
				stmt.setString(1, amount);

				// Execute the insertion
				stmt.executeUpdate();
				return SUCCESS;
			} catch (SQLException e) {
				e.printStackTrace();
				return ERROR;
			} finally {
				// Close the database resources
				try {
					if (stmt != null) {
						stmt.close();
					}
					if (conn != null) {
						conn.close();
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			
	}

}