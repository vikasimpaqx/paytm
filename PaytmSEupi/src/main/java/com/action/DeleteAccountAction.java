package com.action;

import java.sql.*;

import com.dao.DatabaseConnection;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteAccountAction extends ActionSupport {
	
	  /**
		 * 
		 */
		private static final long serialVersionUID = 1L;
    private int accountId; // Property to store the account ID

    // Getter and Setter for accountId

    public int getAccountId() {
		return accountId;
	}

	public void setAccountId(int accountId) {
		this.accountId = accountId;
	}

	public String execute() {
        boolean deleted = deleteAccount(accountId);

        if (deleted) {
            return SUCCESS;
        } else {
            return ERROR;
        }
    }

    private boolean deleteAccount(int accountId) {
        boolean deleted = false;

        try {
            // Create database connection
           Connection connection = DatabaseConnection.getConnection();
            // Prepare SQL statement
            String sql = "DELETE FROM account WHERE id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, accountId);

            // Execute update
            int rowsAffected = statement.executeUpdate();

            // Check if the deletion was successful
            if (rowsAffected > 0) {
                deleted = true;
            }

            // Close resources
            statement.close();
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return deleted;
    }
}