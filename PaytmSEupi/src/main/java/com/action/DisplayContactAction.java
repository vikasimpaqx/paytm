package com.action;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.bean.Contact;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.*;

public class DisplayContactAction extends ActionSupport {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String mobileNO;
    private Contact contact;

    public void setContact(Contact contact) {
		this.contact = contact;
	}

	public String execute() {
        contact = null;

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            // Establish a database connection (replace with your database configuration)
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/paytm", "root", "password");

            // Prepare the SQL statement
            String sql = "SELECT * FROM contact WHERE mobileNo = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, mobileNO);

            // Execute the query
            rs = stmt.executeQuery();

            // Retrieve the contact if it exists
            if (rs.next()) {
                @SuppressWarnings("unused")
				int id = rs.getInt("id");
                String mobileNO = rs.getString("mobileNO");

                Contact contact = new Contact(mobileNO, id);
                contact.setMobailNo(mobileNO);
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

        // Return the result string
        return "success";
    }

    public String getMobileNO() {
        return mobileNO;
    }

    public void setMobileNO(String mobileNO) {
        this.mobileNO = mobileNO;
    }

    public Contact getContact() {
        return contact;
    }
}