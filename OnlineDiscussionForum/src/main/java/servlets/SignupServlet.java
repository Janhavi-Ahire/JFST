// src/servlets/SignupServlet.java
package servlets;

import dao.UserDAO;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.User;

import javax.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws jakarta.servlet.ServletException, IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        User user = new User(0, username, email, password, false); // default isAdmin = false
        UserDAO userDAO = new UserDAO();

        try {
            boolean isRegistered = userDAO.registerUser(user);
            if (isRegistered) {
                response.sendRedirect("login.jsp");  // Redirect to login page on successful registration
            } else {
                request.setAttribute("error", "Registration Failed. Please try again.");
                request.getRequestDispatcher("signup.jsp").forward(request, response);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("signup.jsp?error=Error");
        }
    }
}
