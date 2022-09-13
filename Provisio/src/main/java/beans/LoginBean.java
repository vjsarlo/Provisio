package beans;

import java.sql.Connection;
import java.sql.SQLException;

import model.DataManager;

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
		java.sql.PreparedStatement statement = null;
		java.sql.ResultSet resultSet = null;
		System.out.println("In getSalt() email: "+ email);
		
		try {
			DataManager dataManager = new DataManager();
			Connection connection = dataManager.getConnection();
//			System.out.println("In getSalt() connection: "+connection);
			statement = connection.prepareStatement("select salt from guestsalt where trim(username)=? "); 
			statement.setString(1,email.strip()); 
			System.out.println("Statement: "+statement);
			resultSet = statement.executeQuery();
			
			while(resultSet.next()) {
				salt = resultSet.getString(1);
				System.out.println("salt in resultset: "+salt);
			}
			resultSet.close();
			statement.close();
		

		} catch (java.sql.SQLException e) {
			System.out.println("error");
		} finally {
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