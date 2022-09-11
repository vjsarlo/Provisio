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
                connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/provisio", "root", "Qexeoymp4123!");

                Statement statement = connection.createStatement();                       
                
                String command = "CREATE TABLE booking" +
                "(idreservation int(11) NOT NULL AUTO_INCREMENT, guest varchar(70) NOT NULL, email varchar(70) NOT NULL, phone varchar(70) NOT NULL, " +
                "hoteldestination varchar(70) NOT NULL, room varchar(70) NOT NULL, checkin date NOT NULL, checkout date NOT NULL, numberofnights int(11) NOT NULL, " +
                "roomprice decimal(9,2) NOT NULL, stayprice decimal(9,2) NOT NULL, numberofguests varchar(70) NOT NULL, amenities varchar(200) NOT NULL, amenitiesprice decimal(9,2) NOT NULL, " +
                "total decimal(9,2) NOT NULL, " +
                "PRIMARY KEY (idreservation))";
                      
                statement.executeUpdate(command);
                

                String command2 = "INSERT INTO booking(idreservation, guest, email, phone, hoteldestination, room, checkin, checkout, numberofnights, roomprice, stayprice, numberofguests, amenities, amenitiesprice, total) "
                	    +"Values(1, 'Bill Nye', 'billnye@gmail.com', '123-456-7890', 'LasVegas', 'King Bed', '2022-09-13', '2022-09-15', 2, 100.00, 200.00, '1-2', 'WiFi', 100.00, 300.00)";
                statement.executeUpdate(command2);


                ResultSet resultset = 
                    statement.executeQuery("select * from booking");

             while(resultset.next()){ 
    %>
            
	<TABLE BORDER="1">
                    <TR>
                        <TH>1</TH>
                        <TH>2</TH>
                        <TH>3</TH>
                        <TH>4</TH>
                        <TH>5</TH>
                        <TH>6</TH>
                        <TH>7</TH>
                        <TH>8</TH>
                        <TH>9</TH>
                        <TH>10</TH>
                        <TH>11</TH>
                        <TH>12</TH>
                        <TH>13</TH>
                        <TH>14</TH>
                        <TH>15</TH>
                        
                    </TR>
                    <TR>
                        <TD> <%= resultset.getString(1) %> </TD>
                        <TD> <%= resultset.getString(2) %> </TD>
                        <TD> <%= resultset.getString(3) %> </TD>
                        <TD> <%= resultset.getString(4) %> </TD>
                        <TD> <%= resultset.getString(5) %> </TD>
                        <TD> <%= resultset.getString(6) %> </TD>
                        <TD> <%= resultset.getString(7) %> </TD>
                        <TD> <%= resultset.getString(8) %> </TD>
                        <TD> <%= resultset.getString(9) %> </TD>
                        <TD> <%= resultset.getString(10) %> </TD>
                        <TD> <%= resultset.getString(11) %> </TD>
                        <TD> <%= resultset.getString(12) %> </TD>
                        <TD> <%= resultset.getString(13) %> </TD>
                        <TD> <%= resultset.getString(14) %> </TD>
                        <TD> <%= resultset.getString(15) %> </TD>
                    </TR>
                </TABLE>
            <% 
                }
            %>

</body>
</html>