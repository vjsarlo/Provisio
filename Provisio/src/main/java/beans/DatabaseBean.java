/*-- 
Andrea Fletcher
Module 12 Assignment

This java class will take care of the 
database operations
*/
package beans;

public class DatabaseBean implements java.io.Serializable {

	java.sql.Connection connection = null;
	java.sql.Statement statement = null;
	java.sql.ResultSet resultSet = null;

	public DatabaseBean() {

	}

	public java.sql.ResultSet getResults(String SQL) throws ClassNotFoundException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/provisio";
			String fullUrl = url + "user=root&password=Qexeoymp4123!";
			System.out.println(fullUrl);

			connection = java.sql.DriverManager.getConnection(fullUrl);
			statement = connection.createStatement();
		} catch (java.sql.SQLException e) {
		}
		try {
			resultSet = statement.executeQuery(SQL);
		} catch (java.sql.SQLException e) {

		}
		return resultSet;

	}
	public void executeSQL(String SQL) throws ClassNotFoundException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/provisio";
			String fullUrl = url + "user=root&password=Qexeoymp4123!";
			System.out.println(fullUrl);

			connection = java.sql.DriverManager.getConnection(fullUrl);
			statement = connection.createStatement();
		} catch (java.sql.SQLException e) {
		}
		try {
			statement.executeUpdate(SQL);
		} catch (java.sql.SQLException e) {

		}

	}
	
	public void closeConnection() {

		try {
			statement.close();
			connection.close();
		} catch (java.sql.SQLException e) {

		}
	}
}