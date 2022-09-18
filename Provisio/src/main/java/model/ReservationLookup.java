
package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import beans.ExistingReservation;

public class ReservationLookup {
  public static ArrayList<ExistingReservation> searchReservation(DataManager dataManager,
		  String customerID) {
    ArrayList<ExistingReservation> Reservations = new ArrayList<ExistingReservation>();
    Connection connection = dataManager.getConnection(); //connect to database
    if (connection != null) {
      try {
        Statement s = connection.createStatement();
        
       
        
        String sql = "Select r.idreservation, r.idguest, g.name, r.checkin, r.checkout,"
            + " r.numberofguests, r.total, a.cost, a.description, a.flat  "
            + " from reservation r join guest g on g.idguest = r.idguest"
            + " left join reservationamenity ra on "
            + " ra.idreservation = r.idreservation"
            + " left join amenity a on ra.idamenity = a.idamenity"
            + " where r.idguest =" + customerID.trim();
        System.out.println("SQL: "+ sql);
        try {
          ResultSet rs = s.executeQuery(sql); //execute the query
          try {
            while (rs.next()) {
              ExistingReservation existingReservation = new ExistingReservation();
              existingReservation.setReservationID(rs.getString(1));
              existingReservation.setGuestID(rs.getInt(2));
              existingReservation.setName(rs.getString(3));
              existingReservation.setCheckinDate(rs.getDate(4));
              existingReservation.setCheckoutDate(rs.getDate(5));
              existingReservation.setNumberOfGuests(rs.getInt(6));
              existingReservation.setTotal(rs.getDouble(7));
              existingReservation.setCost(rs.getDouble(8));
              existingReservation.setDescription(rs.getString(9));
              existingReservation.setFlat(rs.getBoolean(10));
             
              Reservations.add(existingReservation);
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
    return Reservations;
    }
  public static ArrayList<ExistingReservation> searchReservationByID(DataManager dataManager,
		  String customerID, String reservationID ) {
	  ArrayList<ExistingReservation> Reservations = new ArrayList<ExistingReservation>();
    Connection connection = dataManager.getConnection(); //connect to database
    if (connection != null) {
      try {
        Statement s = connection.createStatement();
        
       
        
        String sql = "Select r.idreservation, r.idguest, g.name, r.checkin, r.checkout,"
            + " r.numberofguests, r.total, a.cost, a.description, a.flat  "
            + " from reservation r join guest g on g.idguest = r.idguest"
            + " left join reservationamenity ra on "
            + " ra.idreservation = r.idreservation"
            + " left join amenity a on ra.idamenity = a.idamenity"
            + " where r.idguest =" + customerID.trim()
            + " and r.idReservation= "+ reservationID.trim();
        System.out.println("SQL: "+ sql);
        try {
          ResultSet rs = s.executeQuery(sql); //execute the query
          try {
            while (rs.next()) {
              ExistingReservation existingReservation = new ExistingReservation();
              existingReservation.setReservationID(rs.getString(1));
              existingReservation.setGuestID(rs.getInt(2));
              existingReservation.setName(rs.getString(3));
              existingReservation.setCheckinDate(rs.getDate(4));
              existingReservation.setCheckoutDate(rs.getDate(5));
              existingReservation.setNumberOfGuests(rs.getInt(6));
              existingReservation.setTotal(rs.getDouble(7));
              existingReservation.setCost(rs.getDouble(8));
              existingReservation.setDescription(rs.getString(9));
              existingReservation.setFlat(rs.getBoolean(10));
              Reservations.add(existingReservation);
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
    return Reservations;
    }
  
 
  }

