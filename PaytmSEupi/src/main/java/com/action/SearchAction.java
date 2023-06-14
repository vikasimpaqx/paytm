package com.action;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.*;
import java.sql.Timestamp;
public class SearchAction extends ActionSupport {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String mobileNo;

    public String execute() {
        // Check if the phone number exists in the contact table
        boolean exists = checkPhoneNumberExists(mobileNo);

        if (!exists) {
            // If the phone number doesn't exist, store it in the contact table
            storePhoneNumber(mobileNo);
        }

        // Redirect to the next JSP file
        return "success";
    }

    public String getMobileNo() {
        return mobileNo;
    }

    public void setMobileNo(String mobileNo) {
        this.mobileNo = mobileNo;
    }

    private boolean checkPhoneNumberExists(String phoneNumber) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            // Establish a database connection (replace with your database configuration)
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/paytm", "root", "password");

            // Prepare the SQL statement
            String sql = "SELECT COUNT(*) FROM contact WHERE mobileNo = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, mobileNo);

            // Execute the query
            rs = stmt.executeQuery();

            // Check if a record exists with the given phone number
            if (rs.next()) {
                int count = rs.getInt(1);
                return count > 0;
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

        // Return false if an error occurred or if the phone number doesn't exist
        return false;
    }

  
    private void storePhoneNumber(String phoneNumber) {
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            // Establish a database connection (replace with your database configuration)
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/paytm", "root", "password");

            // Prepare the SQL statement for insertion
            String sql = "INSERT INTO contact (mobileNo, time) VALUES (?, ?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, phoneNumber);

            // Get the current timestamp
            Timestamp timestamp = new Timestamp(System.currentTimeMillis());
            stmt.setTimestamp(2, timestamp);

            // Execute the insertion
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
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