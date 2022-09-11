package customer.booking;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/provisio", "root", "Qexeoymp4123!");
            final PreparedStatement pst = con.prepareStatement("INSERT INTO booking(guest, email, phone, hoteldestination, room, checkin, checkout, numberofnights, roomprice, stayprice, numberofguests, amenities, amenitiesprice, total) values( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) ");
            pst.setString(1, guest);
            pst.setString(2, email);
            pst.setString(3, phone);
            pst.setString(4, hoteldestination);
            pst.setString(5, room);
            pst.setString(6, checkin);
            pst.setString(7, checkout);
            pst.setString(8, numberofnights);
            pst.setString(9, roomprice);
            pst.setString(10, stayprice);
            pst.setString(11, numberofguests);
            pst.setString(12, amenities);
            pst.setString(13, amenitiesprice);
            pst.setString(14, total);
            
            pst.executeUpdate();
            response.sendRedirect("/Provisio/jsp/testconnection.jsp");
        }
        catch (Exception e) {
            e.printStackTrace();
            try {
                con.close();
            }
            catch (SQLException e2) {
                e2.printStackTrace();
            }
            return;
        }
        finally {
            try {
                con.close();
            }
            catch (SQLException e2) {
                e2.printStackTrace();
            }
        }
        try {
            con.close();
        }
        catch (SQLException e2) {
            e2.printStackTrace();
        } 
	}
}
