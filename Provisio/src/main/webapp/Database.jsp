<!-- 
Andrea Fletcher
Module 12 Assignment

This JSP will JSP create a database table and 
populates the table with data.
 -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/css/main.css" type="text/css"/>
<title>Database Actions: Create Table and Insert Data</title>
</head>
<body>


	<%  
            Connection connection = null;
                Class.forName("com.mysql.cj.jdbc.Driver");
                connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/Provisio", "root", "Qexeoymp4123!");

                Statement statement = connection.createStatement();
                
                String command = "CREATE TABLE customers" +
                "(cust_id int(11) NOT NULL AUTO_INCREMENT, firstName varchar(70) NOT NULL, lastName varchar(70) NOT NULL, " + 
        				"email varchar(70) NOT NULL, password varchar(70) NOT NULL, PRIMARY KEY (cust_id))";
                         
                statement.executeUpdate(command);

                String command2 = "INSERT INTO customers(cust_id, firstName, lastname, email, password) "
                	    +"Values(1, 'Bill', 'Nye', 'billnyethescienceguy@test.com', 'billnyeismyname')";
                statement.executeUpdate(command2);

                String command3 = "INSERT INTO customers(cust_id, firstName, lastname, email, password) "
                	    +"Values(2, 'Bilbo', 'Baggins', 'theoriginalringbearer@test.com', 'theshire')";
                statement.executeUpdate(command3);

                ResultSet resultset = 
                    statement.executeQuery("select * from customers");

             while(resultset.next()){ 
            %>
            
	<TABLE BORDER="1">
                    <TR>
                        <TH>1</TH>
                        <TH>2</TH>
                        <TH>3</TH>
                        <TH>4</TH>

                        
                    </TR>
                    <TR>
                        <TD> <%= resultset.getString(1) %> </TD>
                        <TD> <%= resultset.getString(2) %> </TD>
                        <TD> <%= resultset.getString(3) %> </TD>
                        <TD> <%= resultset.getString(4) %> </TD>
                    </TR>
                </TABLE>
            <% 
                }
            %>

</body>
</html>