package com.action;

import com.bean.User;
import com.dao.DatabaseConnection;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginAction extends ActionSupport {
    
	private static final long serialVersionUID = 1L;
	private User user = new User();

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String execute() {
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            connection = DatabaseConnection.getConnection();
            String sql = "SELECT * FROM user WHERE mobileNo = ? AND password = ?";
            statement = connection.prepareStatement(sql);
            statement.setString(1, user.getMobileNo());
            statement.setString(2, user.getPassword());
            resultSet = statement.executeQuery();
            if (resultSet.next()) {
                return SUCCESS;
            } else {
                addActionError("Invalid mobile number or password.");
                return ERROR;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return ERROR;
        } finally {
            try {
                if (resultSet != null) {
                    resultSet.close();
                }
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
//        if (user.getMobileNo().isEmpty()) {
//            addFieldError("user.mobileNo", "Mobile number is required.");
//        }
//        if (user.getPassword().isEmpty()) {
//            addFieldError("user.password", "Password is required.");
//        }
//    }
}