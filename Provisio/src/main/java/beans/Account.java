package beans;

public class Account {
	String idGuest;
	String firstName;
	String lastName;
	String username;
	String password;
	Integer points;
	
	public String getIdGuest() {
		return idGuest;
	}
	public void setIdGuest(String idGuest) {
		this.idGuest = idGuest;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public Integer getPoints() {
		return points;
	}
	public void setPoints(Integer points) {
		this.points = points;
	}
}
