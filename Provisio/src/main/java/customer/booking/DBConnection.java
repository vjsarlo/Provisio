package customer.booking;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

	private static final String DB_DRIVER_CLASS = "com.mysql.cj.jdbc.Driver";
	private static final String DB_URL = "jdbc:mysql://localhost:3306/provisio";
	private static final String DB_USERNAME = "root";
	private static final String DB_PASSWORD = "Qexeoymp4123!";
	
	public static Connection getConnection() {
		Connection con = null;
		try {
			// load the Driver Class
			Class.forName(DB_DRIVER_CLASS);

			// create the connection now
			con = DriverManager.getConnection(DB_URL,DB_USERNAME,DB_PASSWORD);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
}