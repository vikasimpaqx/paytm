package com.action;

import com.bean.Record;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

//@SuppressWarnings("serial")
//public class HistoryAction extends ActionSupport {
//  private List<Record> records;
//  private String currentTime;
//
//  public List<Record> getRecords() {
//    return records;
//  }
//
//  public String getCurrentTime() {
//    return currentTime;
//  }
//
//  @SuppressWarnings("null")
//  @Override
//  public String execute() {
//    try {
//      // Establish database connection
//      Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/googlepay", "root", "root");
//
//      // Execute SQL queries
//      Statement stmt = conn.createStatement();
//
//      // Retrieve data from contact table
//      ResultSet contactResultSet = stmt.executeQuery("SELECT id, mobileNo, time FROM contact");
//      records = new ArrayList<>();
//      while (contactResultSet.next()) {
//        int id = contactResultSet.getInt("id");
//        String mobileNo = contactResultSet.getString("mobileNo");
//        String time = contactResultSet.getString("time");
//        records.add(new Record(id, mobileNo, time));
//      }
//      contactResultSet.close();
//
//      // Retrieve data from amount table
//      ResultSet amountResultSet = stmt.executeQuery("SELECT amount FROM amount");
//      int amount = 0;
//      while (amountResultSet.next()) {
//        String index = amountResultSet.getString("amount");
//        records.get(amount).setAmount(index);
//        amount++;
//      }
//      amountResultSet.close();
//
//      // Close resources
//      stmt.close();
//      conn.close();
//
//      // Set current time
//      SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//      currentTime = dateFormat.format(new Date());
//
//      return SUCCESS;
//    } catch (Exception e) {
//      e.printStackTrace();
//      return ERROR;
//    }
//  }
//}**/


//package com.action;

//import com.bean.Record;
//import com.opensymphony.xwork2.ActionSupport;
//
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.ResultSet;
//import java.sql.Statement;
//import java.text.SimpleDateFormat;
//import java.util.ArrayList;
//import java.util.Date;
//import java.util.List;

@SuppressWarnings("serial")
public class HistoryAction extends ActionSupport {
    private List<Record> records;
    private String currentTime;

    public List<Record> getRecords() {
        return records;
    }

    public String getCurrentTime() {
        return currentTime;
    }

    @SuppressWarnings("null")
    @Override
    public String execute() {
        try {
            // Establish database connection
//            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/paytm", "root", "password");
            Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/paytm", "root", "password");
            // Execute SQL queries
            Statement stmt = connection.createStatement();

            // Retrieve data from contact table
            ResultSet contactResultSet = stmt.executeQuery("SELECT id, mobileNo, time FROM contact");
            records = new ArrayList<>();
            while (contactResultSet.next()) {
                int id = contactResultSet.getInt("id");
                String mobileNo = contactResultSet.getString("mobileNo");
                String time = contactResultSet.getString("time");
                records.add(new Record(id, mobileNo, time,null));
            }
            contactResultSet.close();
            
            
         // Retrieve data from amount table
            ResultSet amountResultSet = stmt.executeQuery("SELECT amount FROM amount");
            int amount = 0;
            while (amountResultSet.next()) {
              String index = amountResultSet.getString("amount");
              records.get(amount).setAmount(index);
              amount++;
            }
            amountResultSet.close();

            // Close resources
            stmt.close();
            connection.close();

            // Set current time
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            currentTime = dateFormat.format(new Date());

            return SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ERROR;
        }
    }
}