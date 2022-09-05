package beans;  
import java.sql.*;  
import static beans.Provider.*;  
  
public class ConnectionProvider {  
private static Connection con=null;  
static{  
try{  
Class.forName(DRIVER);  
con=DriverManager.getConnection(CONNECTION_URL,USERNAME,PASSWORD);  
}catch(Exception e){
	System.out.println("Connection to Databse Failed");
}  
}  
  
public static Connection getCon(){  
    return con;  
} 
}
  