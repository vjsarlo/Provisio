package beans;

import java.sql.SQLException;

public class LoginBean {
	private String email, password, salt;

	public LoginBean() {}
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSalt(String email) throws SQLException, ClassNotFoundException {
		java.sql.Connection connection = null;
		java.sql.PreparedStatement statement = null;
		java.sql.ResultSet resultSet = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/core";
			String user = "admin";
			String pass = "pass";
			connection = java.sql.DriverManager.getConnection(url,user, pass);
			statement = connection.prepareStatement("select salt from guestsalt where trim(username)=? "); 
			statement.setString(1,email.strip()); 
			System.out.println("Statement: "+statement);
			resultSet = statement.executeQuery();
			
			while(resultSet.next()) {
				salt = resultSet.getString(1);
			}
			resultSet.close();
			statement.close();
		

		} catch (java.sql.SQLException e) {
			System.out.println("error");
		} finally {
			connection.close();
			resultSet.close();
			statement.close();
		}

		return salt;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}