package customer.register;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.User;

import beans.Guest;
import beans.NewGuest;

@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(final HttpServletRequest request, final HttpServletResponse response)
			throws ServletException, IOException {
		final String firstname = request.getParameter("firstname");
		final String lastname = request.getParameter("lastname");
		final String email = request.getParameter("email");
		final String password = request.getParameter("password");
		final Integer ZERO = 0;
		
		NewGuest newGuest = new NewGuest();
		Guest guest = new Guest();
		guest.setFirstName(firstname);
		guest.setLastName(lastname);
		guest.setUsername(email);
		guest.setPassword(password);
		guest.setPoints(ZERO);
		
	
		if (newGuest.create(guest) == -1) {
			throw new ServletException("User already exists.");
		};
		

	}
}