package beans;

import java.math.BigInteger;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;

import customer.booking.DBConnection;

public class LoginDao {

	public static boolean validate(LoginBean bean) throws SQLException {
		boolean status = false;
		ResultSet resultSet = null;
		Connection con = null;
		PreparedStatement ps = null;
		System.out.println("**In Login Dao**");

		try {
			con = DBConnection.getConnection();
			System.out.println("Connection: "+ con);

			ps = con.prepareStatement("select * from guest where username=? and password=?");
			System.out.println("PS: "+ ps);
			
			System.out.println("beanid: "+ bean.getIdGuest());
			String salt = bean.getSalt(bean.getEmail());
			System.out.println("salt: "+ salt);

			byte[] byteSalt = fromHex(salt);
			System.out.println(byteSalt);

			String securePassword = toHex(getSaltedHash(bean.getPassword(), byteSalt));
			System.out.println("Securepass: " +securePassword);

			ps.setString(1, bean.getEmail().strip());
			ps.setString(2, securePassword);
			System.out.println("PS: " +ps);

			resultSet = ps.executeQuery();

			while(resultSet.next()) {
				bean.setIdGuest(resultSet.getInt(1));
				System.out.println("ID GUEST:" + bean.getIdGuest());
			}
			System.out.println("LoginDao get Customer ID: "+bean.getIdGuest());
			status = (bean.getIdGuest() != null);

		} catch (Exception e) {
			System.out.println("Could not connect to database in LoginDao. Error: " +e);
		} finally {
			con.close();
			if (resultSet != null) {
				resultSet.close();
			}
			if (ps != null) {
				ps.close();
			}
		}
		

		return status;

	}

	public static byte[] getSaltedHash(String password, byte[] salt) {
//		System.out.println("Password: "+password);
//		System.out.println("Salt: "+salt);
		try {
			KeySpec spec = new PBEKeySpec(password.toCharArray(), salt, 65536, 128);
//			System.out.println("Spec " +spec);
			SecretKeyFactory factory = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1");
//			System.out.println("getSaltedHash return: "+factory.generateSecret(spec).getEncoded());
			return factory.generateSecret(spec).getEncoded();

		} catch (InvalidKeySpecException | NoSuchAlgorithmException e) {
			e.printStackTrace();
			return null;
		}
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
	public static byte[] fromHex(String hex) {
		byte[] binary = new byte[hex.length()/2];
		for (int i = 0; i<binary.length; i++) {
			binary[i] = (byte) Integer.parseInt(hex.substring(2*i,2*i+2),16);
		}
		return binary;
	}

}
