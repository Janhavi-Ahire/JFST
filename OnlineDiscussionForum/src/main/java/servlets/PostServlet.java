package servlets;

//import dao.PostDAO;
//import models.Post;
//import models.User;
//import jakarta.servlet.*;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.*;
//import java.io.IOException;
//import java.util.List;
//
//@WebServlet("/PostServlet")
//public class PostServlet extends HttpServlet {
//
//    // Handle GET requests to fetch posts based on the category
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String category = request.getParameter("category");
//
//        // If no category is specified, redirect to the home page (optional)
//        if (category == null || category.isEmpty()) {
//            response.sendRedirect("index.jsp");
//            return;
//        }
//
//        // Fetch posts based on the category
//        PostDAO postDAO = new PostDAO();
//        List<Post> posts = postDAO.getPostsByCategory(category);
//
//        // Set the posts as a request attribute and forward to the posts.jsp page
//        request.setAttribute("posts", posts);
//        request.getRequestDispatcher("posts.jsp").forward(request, response);
//    }
//
//    // Handle POST requests to add a new post
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String title = request.getParameter("title");
//        String content = request.getParameter("content");
//        String category = request.getParameter("category");
//
//        // Get the username of the logged-in user
//        User user = (User) request.getSession().getAttribute("user");
//        if (user == null) {
//            response.sendRedirect("login.jsp");  // Redirect to login if user is not logged in
//            return;
//        }
//
//        String username = user.getUsername();
//
//        // Create a new Post object
//        Post post = new Post(0, title, content, username, new java.sql.Timestamp(System.currentTimeMillis()), category);
//
//        PostDAO postDAO = new PostDAO();
//        // Add the post to the database
//        boolean isPostAdded = postDAO.addPost(post);
//        
//        if (isPostAdded) {
//            // Redirect to the same category page after adding the post
//            response.sendRedirect("PostServlet?category=" + category);
//        } else {
//            // Handle error if the post was not added
//            request.setAttribute("error", "Error posting your message. Please try again.");
//            request.getRequestDispatcher("displayPost.jsp").forward(request, response);  // Forward to create post page on error
//        }
//    }
//}



import dao.PostDAO;
import models.Post;
import models.User;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/PostServlet")
public class PostServlet extends HttpServlet {

    // Handle GET requests to fetch posts based on the category
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String category = request.getParameter("category");

        // If no category is specified, redirect to the home page (optional)
        if (category == null || category.isEmpty()) {
            response.sendRedirect("index.jsp");
            return;
        }

        // Fetch posts based on the category
        PostDAO postDAO = new PostDAO();
        List<Post> posts = postDAO.getPostsByCategory(category);

        // Set the posts as a request attribute and forward to the posts.jsp page
        request.setAttribute("posts", posts);
        request.getRequestDispatcher("topic.jsp").forward(request, response);
    }

    // Handle POST requests to add a new post
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        String category = request.getParameter("category");

        // Get the username of the logged-in user
        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            response.sendRedirect("login.jsp");  // Redirect to login if user is not logged in
            return;
        }

        String username = user.getUsername();

        // Create a new Post object
        Post post = new Post(0, title, content, username, new java.sql.Timestamp(System.currentTimeMillis()), category);

        PostDAO postDAO = new PostDAO();
        // Add the post to the database
        boolean isPostAdded = postDAO.addPost(post);
        
        if (isPostAdded) {
            // Redirect to the same category page after adding the post
            response.sendRedirect("PostServlet?category=" + category);
        } else {
            // Handle error if the post was not added
            request.setAttribute("error", "Error posting your message. Please try again.");
            request.getRequestDispatcher("displayPost.jsp").forward(request, response);  // Forward to create post page on error
        }
    }
}
