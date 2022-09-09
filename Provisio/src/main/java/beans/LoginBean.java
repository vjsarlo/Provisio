package beans;

import java.sql.SQLException;

public class LoginBean {
	private String email, password, salt;
	private Integer idGuest;

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
		System.out.println("In getSalt() email: "+ email);
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/provisio";
			String user = "root";
			String pass = "Qexeoymp4123!";
			connection = java.sql.DriverManager.getConnection(url,user, pass);
//			System.out.println("In getSalt() connection: "+connection);
			statement = connection.prepareStatement("select salt from guestsalt where trim(username)=? "); 
			statement.setString(1,email.strip()); 
			System.out.println("Statement: "+statement);
			resultSet = statement.executeQuery();
			
			while(resultSet.next()) {
				salt = resultSet.getString(1);
//				System.out.println("salt in resultset: "+salt);
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

	public Integer getIdGuest() {
		return idGuest;
	}

	public void setIdGuest(Integer idGuest) {
		this.idGuest = idGuest;
	}

	
	
}