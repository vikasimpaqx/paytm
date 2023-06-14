package com.action;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.bean.Account;
import com.opensymphony.xwork2.ActionSupport;

public class ReadAccountAction extends ActionSupport {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private List<Account> accounts;
    
    // Getter and Setter for accounts
    
    public List<Account> getAccounts() {
		return accounts;
	}

	public void setAccounts(List<Account> accounts) {
		this.accounts = accounts;
	}

	public String execute() {
        accounts = retrieveAccountData();
        return SUCCESS;
    }
    
    private List<Account> retrieveAccountData() {
        List<Account> accountList = new ArrayList<>();
        
        try {
            // Create database connection
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/paytm", "root", "password");
            
            // Prepare SQL query
            String sql = "SELECT * FROM account";
            PreparedStatement statement = connection.prepareStatement(sql);
            
            // Execute query
            ResultSet resultSet = statement.executeQuery();
            
            // Process result set
            while (resultSet.next()) {
                Account account = new Account();
                account.setId(resultSet.getInt("id"));
                account.setMobileNo(resultSet.getString("mobileNo"));
                account.setBankName(resultSet.getString("bankName"));
                account.setAccountNo(resultSet.getString("accountNo"));
                account.setIfscCode(resultSet.getString("ifscCode"));
                account.setBranch(resultSet.getString("branch"));
                account.setUpi(resultSet.getInt("upi"));
                account.setCupi(resultSet.getInt("cupi"));
                
                accountList.add(account);
            }
            
            // Close resources
            resultSet.close();
            statement.close();
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return accountList;
    }
}