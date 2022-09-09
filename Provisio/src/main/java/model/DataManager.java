
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;

import beans.Account;
import beans.ExistingReservation;

public class DataManager {
	private String dbURL = "";
	private String dbUserName = "";
	private String dbPassword = "";

	public void setDbURL(String dbURL) {
		this.dbURL = dbURL;
	}

	public String getDbURL() {
		return dbURL;
	}

	public void setDbUserName(String dbUserName) {
		this.dbUserName = dbUserName;
	}

	public String getDbUserName() {
		return dbUserName;
	}

	public void setDbPassword(String dbPassword) {
		this.dbPassword = dbPassword;
	}

	public String getDbPassword() {
		return dbPassword;
	}

	public Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/provisio";
			String user = "root";
			String pass = "Qexeoymp4123!";
			conn = DriverManager.getConnection(url,user, pass);
				 
		} catch (SQLException e) {
			System.out.println("Could not connect to DB: " + e.getMessage());
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}

	public void putConnection(Connection conn) {
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
			}
		}
	}
	 public ArrayList<ExistingReservation> getReservation(String customerID) {
		    return ReservationLookup.searchReservation(this, customerID);
		    }

	 public Account getAccountInfo(String customerID) {
		 	System.out.println("IN DATA MANAGER");
		    return AccountLookup.getAccountInfo(this, customerID);
		    }
}
