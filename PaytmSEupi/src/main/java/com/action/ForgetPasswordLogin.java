

//package com.action;
//
//import java.sql.*;
//import java.util.ArrayList;
//import java.util.List;
//
//import com.bean.Account;
//import com.bean.User;
//import com.dao.DatabaseConnection;
//import com.opensymphony.xwork2.ActionSupport;
//
//public class ForgetPasswordLogin extends ActionSupport {
//    /**
//	 * 
//	 */
//	private static final long serialVersionUID = 1L;
//	private List<User> user;
//    
//    // Getter and Setter for accounts
//	 public List<User> getUser() {
//			return user;
//		}
//
//		public void setUser(List<User> user) {
//			this.user = user;
//		}
//   
//
//	public String execute() {
//      user = retrieveAccountData();
//        return SUCCESS;
//    }
//    
//   
//
//	private List<User> retrieveAccountData() {
//        List<User> beantList = new ArrayList<>();
//        
//        try {
//            // Create database connection
////            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/paytm", "root", "password");
////            Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/paytm", "root", "password");
//           Connection connection = DatabaseConnection.getConnection();
//            // Execute SQL queries
//            // Prepare SQL query
//            String sql = "SELECT userName, mobileNo , PASSWORD FROM user";
//            PreparedStatement statement = connection.prepareStatement(sql);
//            
//            // Execute query
//            ResultSet resultSet = statement.executeQuery();
//            
//            // Process result set
//            while (resultSet.next()) {
//             
//            	User user =new User();
//                
////                account.setCupi(resultSet.getInt("cupi"));
//                user.setUserName(resultSet.getString("userName"));
//                user.setMobileNo(resultSet.getString("mobileNo"));
//                user.setPassword(resultSet.getString("PASSWORD")) ;
//                beantList.add(user);
//            }
//            
//            // Close resources
//            resultSet.close();
//            statement.close();
//            connection.close();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        
//        return beantList;
//    }
//}
package com.action;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.bean.User;
import com.dao.DatabaseConnection;
import com.opensymphony.xwork2.ActionSupport;

public class ForgetPasswordLogin extends ActionSupport {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private List<User> user;
	private User users = new User();
   
	
	public User getUsers() {
		return users;
	}

	public void setUsers(User users) {
		this.users = users;
	}

	// Getter and Setter for accounts
	 public List<User> getUser() {
			return user;
		}

		public void setUser(List<User> user) {
			this.user = user;
		}
   

	public String execute() {
      user = retrieveAccountData();
        return SUCCESS;
    }
    
   

	private List<User> retrieveAccountData() {
        List<User> beantList = new ArrayList<>();
        
        try {
            // Create database connection
//            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/paytm", "root", "password");
//            Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/paytm", "root", "password");
           Connection connection = DatabaseConnection.getConnection();
            // Execute SQL queries
            // Prepare SQL query
            String sql = "SELECT userName, mobileNo , PASSWORD FROM user where mobileNo=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, users.getMobileNo());
//            statement.setString(2, user.getPassword());
            // Execute query
            ResultSet resultSet = statement.executeQuery();
            
            // Process result set
            while (resultSet.next()) {
             
            	User user =new User();
                
//                account.setCupi(resultSet.getInt("cupi"));
                user.setUserName(resultSet.getString("userName"));
                user.setMobileNo(resultSet.getString("mobileNo"));
                user.setPassword(resultSet.getString("PASSWORD")) ;
                beantList.add(user);
            }
            
            // Close resources
            resultSet.close();
            statement.close();
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return beantList;
    }
}