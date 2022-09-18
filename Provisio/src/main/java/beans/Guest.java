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
		private String fullName = null;
		private String username = null;
		private String password = null;
		private Integer points = null;
		private Integer phone = null;
		private String email = null;
		
		
		
		public Integer getPhone() {
			return phone;
		}
		public void setPhone(Integer phone) {
			this.phone = phone;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public Integer getIdGuest() {
			return idGuest;
		}
		public void setIdGuest(Integer idGuest) {
			this.idGuest = idGuest;
		}
		
		public String getFullName() {
			return fullName;
		}
		public void setFullName(String fullName) {
			this.fullName = fullName;
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
		
		
	
}
		

		
	 