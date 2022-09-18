
package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import beans.Account;
import beans.Guest;

public class GuestLookup {
  public static Guest getGuest(DataManager dataManager,
      String customerID) {
    Guest guest = new Guest();
    Connection connection = dataManager.getConnection(); //connect to database
    if (connection != null) {
      try {
        Statement s = connection.createStatement();
        
        String sql = "Select idguest, name, username, points, email, phone "
        		+ "from guest"
            + " where username = '" + customerID.trim()+"'";
        System.out.println("SQL: "+sql);
        try {
          ResultSet rs = s.executeQuery(sql); //execute the query
          try {
            while (rs.next()) {
              guest.setIdGuest(rs.getInt(1));
              guest.setFullName(rs.getString(2));
              guest.setUsername(rs.getString(3));
              guest.setPoints(rs.getInt(4));
              guest.setEmail((rs.getString(5)));
              guest.setPhone(0);
            
             
              }
            }
          finally { rs.close(); }
          }
        finally { s.close(); }
        }
      catch (SQLException e) {
        System.out.println("Could not find guest:" + e.getMessage());
        }
      finally {
        dataManager.putConnection(connection);
        }
      }
    return guest;
    }
  
  
 
  }

