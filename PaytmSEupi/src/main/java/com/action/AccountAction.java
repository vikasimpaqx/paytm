package com.action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.bean.Account;
import com.bean.User;
import com.dao.DatabaseConnection;
import com.opensymphony.xwork2.ActionSupport;

public class AccountAction extends ActionSupport {
	
		private static final long serialVersionUID = 1L;
	private Account account=new Account();
	private User user=new User();

	 public Account getAccount() {
		    return account;
		  }
		  
		  public void setAccount(Account account) {
		    this.account = account;
		  }
		  
		  public User getUser() {
		    return user;
		  }
		  
		  public void setUser(User user) {
		    this.user = user;
		  }
		  
//		  @SuppressWarnings("unused")
//		private String retrieveMobileNoFromDatabase() {
//				Connection connection = null;
//				PreparedStatement statement = null;
//			    String mobileNo = "";
//		        ResultSet resultSet = null;
//		        try {
//		            connection = DatabaseConnection.getConnection();
//		            String sql = "SELECT * FROM user WHERE mobileNo = ?";
//		            statement = connection.prepareStatement(sql);
//		            statement.setString(1, user.getMobileNo());
//		            resultSet = statement.executeQuery();
//			       if (resultSet.next()) {
//			         mobileNo = resultSet.getString("mobileNo");
//			       }
//			      
//			       resultSet.close();
//			      
//			    } catch (Exception e) {
//			      e.printStackTrace();
//			    }
//			    
//			    return mobileNo;
//		  }
		  

	public String execute() {
		account.setCupi(account.getUpi());
		Connection connection = null;
		PreparedStatement statement = null;
		
		try {
			connection = DatabaseConnection.getConnection();
			String sql = "INSERT INTO account (mobileNo, bankName, accountNo, ifscCode, branch, upi, cupi ) VALUES (?, ?, ?, ?, ?, ?, ?)";
			statement = connection.prepareStatement(sql);
//			statement.setString(1, retrieveMobileNoFromDatabase());
			statement.setString(1, account.getMobileNo());
			statement.setString(2, account.getBankName());
			statement.setString(3, account.getAccountNo());
			statement.setString(4, account.getIfscCode());
			statement.setString(5, account.getBranch());
			statement.setInt(6, account.getUpi());
			account.setCupi(account.getUpi());
			statement.setInt(7, account.getCupi());
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
}