
package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import beans.Account;

public class AccountLookup {
  public static Account getAccountInfo(DataManager dataManager,
      String customerID) {
    Account account = new Account();
    Connection connection = dataManager.getConnection(); //connect to database
    if (connection != null) {
      try {
        Statement s = connection.createStatement();
        
       
        
        String sql = "Select idguest,name, username, password, points "
        		+ "from guest"
            + " where idguest =" + customerID.trim();
        System.out.println("SQL: "+sql);
        try {
          ResultSet rs = s.executeQuery(sql); //execute the query
          try {
            while (rs.next()) {
              account.setIdGuest(rs.getString(1));
              String[] name = rs.getString(2).split(" ");
              account.setFirstName(name[0]);
              account.setLastName(name[1]);
              account.setUsername(rs.getString(3));
              account.setPassword(rs.getString(4));
              account.setPoints(rs.getInt(5));
             
              }
            }
          finally { rs.close(); }
          }
        finally { s.close(); }
        }
      catch (SQLException e) {
        System.out.println("Could not find reservation:" + e.getMessage());
        }
      finally {
        dataManager.putConnection(connection);
        }
      }
    return account;
    }
  
  
 
  }

