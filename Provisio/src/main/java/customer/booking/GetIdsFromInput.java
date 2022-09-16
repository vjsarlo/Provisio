package customer.booking;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Types;


public class GetIdsFromInput {

	public static void main(String[] args) throws Exception {

		Connection myConn = null;
		CallableStatement myStmt = null;

		try {
			// Get a connection to database
			myConn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/provisio", "root", "Qexeoymp4123!");

			String guestname = "Antonia Kiser";
			String destinationchoice = "Seattle";
			String roomchoice = "Double Queen Bed";
			
			// Prepare the stored procedure call
			myStmt = myConn
					.prepareCall("{call get_ids(?,?,?,?,?,?)}");

			// Set the parameters
			myStmt.setString(1, guestname);
			myStmt.registerOutParameter(2, Types.INTEGER);
			myStmt.setString(3, destinationchoice);
			myStmt.registerOutParameter(4, Types.INTEGER);
			myStmt.setString(5, roomchoice);
			myStmt.registerOutParameter(6, Types.INTEGER);
			
			// Call stored procedure
			System.out.println("Calling stored procedure.  get_ids('" + guestname + "', ?, '" + destinationchoice + "', ?, '" + roomchoice + "', ?)");
			myStmt.execute();
			System.out.println("Finished calling stored procedure");			
			
			// Get the value of the OUT parameter
			int guestid = myStmt.getInt(2);
			int hotelid = myStmt.getInt(4);
			int roomid = myStmt.getInt(6);
			
			System.out.println("\nGuest Id = " + guestid);
			System.out.println("\nHotel Id = " + hotelid);
			System.out.println("\nRoom Id = " + roomid);

		} catch (Exception exc) {
			exc.printStackTrace();
		} finally {
			close(myConn, myStmt);
		}
	}

	private static void close(Connection myConn, Statement myStmt) throws SQLException {
		if (myStmt != null) {
			myStmt.close();
		}

		if (myConn != null) {
			myConn.close();
		}
	}	
}
