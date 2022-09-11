package customer.register;

import java.io.IOException;
import javax.servlet.ServletException;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.DriverManager;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet("/register")
public class RegistrationServlet extends HttpServlet
{
    private static final long serialVersionUID = 1L;
    
    protected void doPost(final HttpServletRequest request, final HttpServletResponse response) throws ServletException, IOException {
        final String firstname = request.getParameter("firstname");
        final String lastname = request.getParameter("lastname");
        final String email = request.getParameter("email");
        final String password = request.getParameter("password");
        final Integer ZERO = 0;
        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/provisio", "root", "Qexeoymp4123!");

            final PreparedStatement pst = con.prepareStatement("INSERT INTO guest(firstname, lastname, username, password,points) values( ?, ?, ?, ?, ?) ");

            pst.setString(1, firstname);
            pst.setString(2, lastname);
            pst.setString(3, email);
            pst.setString(4, password);
            pst.setLong(5, ZERO);
            
            pst.executeUpdate();
            response.sendRedirect("/Provisio/jsp/loginpages/login.jsp");
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
