package com.action;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class UpiAction extends ActionSupport {
  private String upiPin;

  // Setters and getters for upiPin

  public String getUpiPin() {
	return upiPin;
}

public void setUpiPin(String upiPin) {
	this.upiPin = upiPin;
}

@Override
  public String execute() throws Exception {
    if (validateUpiPin(upiPin)) {
      return SUCCESS;
    }

    addActionError("Invalid UPI PIN");
    return ERROR;
  }

  private boolean validateUpiPin(String pin) {
    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    try {
      // Establish a connection to the database
      conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/paytm", "root", "password");

      // Prepare the SQL query to retrieve the UPI PIN from the account table
      String sql = "SELECT upi FROM account WHERE mobileNo = ?";
      stmt = conn.prepareStatement(sql);
      stmt.setString(1, "7022400983"); // Replace with the user's mobile number

      // Execute the query
      rs = stmt.executeQuery();

      // Check if a result is returned
      if (rs.next()) {
        String storedUpiPin = rs.getString("upi");

        // Compare the provided UPI PIN with the one stored in the database
        return pin.equals(storedUpiPin);
      }
    } catch (SQLException e) {
      e.printStackTrace();
    } finally {
      // Close the database resources
      try {
        if (rs != null) {
          rs.close();
        }
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

    return false;
  }
}