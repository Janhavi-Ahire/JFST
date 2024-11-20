package servlets;

import dao.TopicDAO;
import models.Post;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/TopicServlet")
public class TopicServlet extends HttpServlet {

    // Handling GET request to fetch and display posts by category
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String category = request.getParameter("category"); // Get category from request

        // Check if category is provided
        if (category == null || category.isEmpty()) {
            request.setAttribute("error", "Category is missing.");
            request.getRequestDispatcher("index.jsp").forward(request, response);
            return;
        }

        // Fetch the posts by category from the database
        TopicDAO topicDAO = new TopicDAO();
        List<Post> posts = topicDAO.getPostsByCategory(category);

        if (posts.isEmpty()) {
            request.setAttribute("error", "No posts found for this category.");
            request.getRequestDispatcher("index.jsp").forward(request, response);
            return;
        }

        // Set the posts as request attributes
        request.setAttribute("posts", posts);
        request.setAttribute("category", category); // Pass the category to the JSP for display

        // Forward to the JSP page that displays posts for the specific category
        request.getRequestDispatcher("categoryPosts.jsp").forward(request, response);
    }
}
