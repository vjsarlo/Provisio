/*-- 
Andrea Fletcher
Module 12 Assignment

This java class acts as the Customer bean 
It allows the manipulation of a Customer instance
*/
package beans;

import java.util.Date;

public class Guest implements java.io.Serializable {

	
		private Integer idGuest = null;
		private String firstName = null;
		private String lastName = null;
		private String username = null;
		private String password = null;
		private Integer points = null;
		
		
		
		public Integer getIdGuest() {
			return idGuest;
		}
		public void setIdGuest(Integer idGuest) {
			this.idGuest = idGuest;
		}
		public Integer getPoints() {
			return points;
		}
		public void setPoints(Integer points) {
			this.points = points;
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
	
}
		

		
	 