package beans;
import java.math.BigInteger;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.sql.Connection;
/*-- 
Andrea Fletcher
Module 12 Assignment

This java class will create the insert statement 
to insert a new customer based on the instance of the
customer that was entered in the form displayed to the user
*/
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;

import model.DataManager;

public class NewGuest {


	public int create(Guest guest) {
		System.out.println("** IN NEWGUEST CREATE");
		DataManager dataManager = new DataManager();
		
		//first, generate salt
		byte[] byteSalt = getSalt();
		String hexedsalt = toHex(byteSalt); //store this as salt
		
		//first, make sure the user doesn't already exist.
		
		Guest checkGuest = dataManager.getGuest(guest.getUsername());
		if (checkGuest.getIdGuest()!= null) {
			return -1;
		}
		//Store this in database
		String saltQuery = "Insert into guestsalt (username,salt) values('"+
				guest.getUsername() + "', '"+	
				hexedsalt + "')";
		// now, create the hashed password
		String securePassword = toHex(getSaltedHash(guest.getPassword(),byteSalt));  //store this as pass
		
		// insert new customer into database
		String query = "Insert into guest (username, password, firstname, lastname, points) values('" +
				
				guest.getUsername() + "', '"+		 
				securePassword + "', '" + 
				guest.getFirstName() + "', '" +
				guest.getLastName() + "', 0)";
		try {
		
			dataManager.executeSQL(query);
			dataManager.executeSQL(saltQuery);

		} catch (ClassNotFoundException e) { 
			e.printStackTrace();
		}
		return 1;
	}
	
	public static byte[] getSalt() {
		//use a secure random generator
		SecureRandom random = new SecureRandom();
		
		//create an array for the salt
	    byte[] salt = new byte[16];
	    
	    //get the random salt
		random.nextBytes(salt);
		
		return salt;
	  }
	
	//https://www.baeldung.com/java-password-hashing
	public static byte[] getSaltedHash(String password, byte[] salt) {
		
		try {
			KeySpec spec =new PBEKeySpec(password.toCharArray(), salt, 65536, 128);
			SecretKeyFactory factory = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1");
			return  factory.generateSecret(spec).getEncoded();
			
		} catch (InvalidKeySpecException|NoSuchAlgorithmException e) {
			e.printStackTrace();
			return null;
		} 
	}
	//https://subscription.packtpub.com/book/application-development/9781849697767/1/ch01lvl1sec10/adding-salt-to-a-hash-(intermediate)
	public static byte[] fromHex(String hex) {
		byte[] binary = new byte[hex.length()/2];
		for (int i = 0; i<binary.length; i++) {
			binary[i] = (byte) Integer.parseInt(hex.substring(2*i,2*i+2),16);
		}
		return binary;
	}
    
	public static String toHex(byte[] array) {
		BigInteger bi = new BigInteger(1,array);
		String hex = bi.toString(16);
		int paddingLength = (array.length*2) - hex.length();
		
		if (paddingLength>0) {
			return String.format("%0" +paddingLength +"d", 0)+hex;
		} else {
			return hex;
		}
	}
	
	
}

