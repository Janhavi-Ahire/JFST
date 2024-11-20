package servlets;
import dao.PostDAO;
import jakarta.servlet.http.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Post;

import javax.servlet.http.*;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import models.User;
import java.io.IOException;

@WebServlet("/DeletePostServlet")
public class DeletePostServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the post ID from the request parameter
        String postIdStr = request.getParameter("postId");

        if (postIdStr != null && !postIdStr.isEmpty()) {
            try {
                int postId = Integer.parseInt(postIdStr);

                // Create PostDAO instance to interact with the database
                PostDAO postDAO = new PostDAO();
                
                // Call the DAO method to delete the post
                boolean isDeleted = postDAO.deletePostById(postId);

                if (isDeleted) {
                    // If post is deleted successfully, redirect back to profile page
                    response.sendRedirect("profile.jsp");
                } else {
                    // If deletion fails, show an error message (optional)
                    response.getWriter().write("Failed to delete the post.");
                }

            } catch (NumberFormatException e) {
                // Handle invalid postId format
                response.getWriter().write("Invalid post ID.");
            }
        } else {
            // Handle case where postId is not provided
            response.getWriter().write("Post ID is missing.");
        }
    }
}
