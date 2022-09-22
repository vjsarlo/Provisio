package customer.register;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Guest;
import beans.NewGuest;

@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    request.getRequestDispatcher("/jsp/registerpages/register.jsp").forward(request, response);
	}
	protected void doPost(final HttpServletRequest request, final HttpServletResponse response)
			throws ServletException, IOException {
		
		final String firstname = request.getParameter("firstname");
		final String lastname = request.getParameter("lastname");
		final String email = request.getParameter("email");
		final String password = request.getParameter("password");
		final Integer ZERO = 0;
		

		NewGuest newGuest = new NewGuest();
		Guest guest = new Guest();
		guest.setFullName(firstname+" "+lastname);
		guest.setUsername(email);
		guest.setPassword(password);
		guest.setPoints(ZERO);

		if (newGuest.create(guest) == -1) {
			request.setAttribute("messages", "User already exists!");
		} else {
			request.setAttribute("messages","Successfully registered");
		}
		

	    request.getRequestDispatcher("/jsp/registerpages/register.jsp").forward(request, response);

	}
	
}