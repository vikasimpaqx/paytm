package com.action;

import com.bean.User;
import com.dao.DatabaseConnection;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class SignUpAction extends ActionSupport {
  
	private static final long serialVersionUID = 1L;
	private User user=new User();

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String execute() {
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = DatabaseConnection.getConnection();
            String sql = "INSERT INTO user (userName, mobileNo, password) VALUES (?, ?, ?)";
            statement = connection.prepareStatement(sql);
            statement.setString(1, user.getUserName());
            statement.setString(2, user.getMobileNo());
            statement.setString(3, user.getPassword());
            statement.executeUpdate();
            return SUCCESS;
        } catch (SQLException e) {
            e.printStackTrace();
            return ERROR;
        } finally {
            try {
                if (statement != null) {
                    statement.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

//    public void validate() {
//        if (user.getUserName().isEmpty()) {
//            addFieldError("user.userName", "Username is required.");
//        }
//        if (user.getMobileNo().isEmpty()) {
//            addFieldError("user.mobileNo", "Mobile number is required.");
//        }
//        if (user.getPassword().isEmpty()) {
//            addFieldError("user.password", "Password is required.");
//        }
//    }
}