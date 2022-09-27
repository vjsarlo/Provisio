package customer.booking;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Scanner;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class BookingServlet
 */
@WebServlet("/booking")
public class BookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		final String hoteldestination = request.getParameter("choiceDestination");
		final String room = request.getParameter("choiceRoom");
		final String roomprice = request.getParameter("choiceRoomPrice");
		final String checkin = request.getParameter("choiceCheckin");
		final String checkout = request.getParameter("choiceCheckout");
		final String numberofnights = request.getParameter("stayLength");
		final String stayprice = request.getParameter("stayPrice");
		final String guest = request.getParameter("choiceName");
		final String phone = request.getParameter("choicePhone");
		final String email = request.getParameter("choiceEmail");     
        final String numberofguests = request.getParameter("choiceGuests");
        final String amenities = request.getParameter("choiceAmenities");
        final String amenitiesprice = request.getParameter("choiceAmenitiesPrice");
        final String total = request.getParameter("totalCost");
        
        Connection con = null;
		CallableStatement stmt = null;
		HttpSession session = request.getSession();
        try {
        	
        	con = DBConnection.getConnection();
			stmt = con.prepareCall("{call get_ids(?,?,?,?,?, ?)}");
//			stmt.setString(1, guest);
			stmt.setInt(1, (Integer)session.getAttribute("customerID"));
			stmt.setString(3, hoteldestination);
			stmt.setString(5, room);
						
			//register the OUT parameter before calling the stored procedure
			stmt.registerOutParameter(2, java.sql.Types.INTEGER);
			stmt.registerOutParameter(4, java.sql.Types.INTEGER);
			stmt.registerOutParameter(6, java.sql.Types.INTEGER);
			
			System.out.println("Booking Servelet prepared statement: " + stmt);
			stmt.execute();
			
			//read the OUT parameter now
			int getguestid = stmt.getInt(2);
			int gethotelid = stmt.getInt(4);
			int getroomid = stmt.getInt(6);
			
			Date datefmtCheckIn = Date.valueOf(checkin);
            Date datefmtCheckOut = Date.valueOf(checkout);
			
            final PreparedStatement pst = con.prepareStatement("INSERT INTO reservation(idguest, guestName, idroom, idhotel, checkin, checkout, numberofguests, total) values( ?, ?, ?, ?, ?, ?, ?, ?) ");
            pst.setInt(1, getguestid);
            pst.setString(2, guest);
            pst.setInt(3, getroomid);
            pst.setInt(4, gethotelid);
            pst.setDate(5, datefmtCheckIn); 
            pst.setDate(6, datefmtCheckOut);
            pst.setString(7, numberofguests);
            pst.setString(8, total);
            
            pst.executeUpdate();
            
            Integer confirmation = 0;
            Statement s = con.createStatement();
            ResultSet rs = s.executeQuery("SELECT LAST_INSERT_ID();");
            while (rs.next()) {
            	confirmation = rs.getInt(1);
            	session.setAttribute("confirmation", confirmation);
            }
            response.sendRedirect("/Provisio/jsp/loadReservation.jsp");
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				try {
					stmt.close();
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
	}		
}


