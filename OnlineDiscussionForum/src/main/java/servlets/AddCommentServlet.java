package servlets;

import dao.CommentDAO;
import models.Comment;
import models.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Timestamp;

@WebServlet("/AddCommentServlet")
public class AddCommentServlet extends HttpServlet {

    // Handling POST request for adding a comment
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve the logged-in user and topic ID
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        String commentText = request.getParameter("comment");  // Comment text from the form
        String category = request.getParameter("category");    // Category for the comment
        int topicId = Integer.parseInt(request.getParameter("topicId"));  // Topic ID where the comment is being added

        // Validate comment input
        if (commentText == null || commentText.isEmpty()) {
            request.setAttribute("error", "Comment cannot be empty.");
            request.getRequestDispatcher("topic.jsp?topicId=" + topicId + "&category=" + category).forward(request, response);
            return;
        }

        // Create a new Comment object
        Comment comment = new Comment(0, commentText, new Timestamp(System.currentTimeMillis()), user, category);
        comment.setId(topicId);  // Set topic ID (post) to associate with the comment

        // Add the comment using CommentDAO
        CommentDAO commentDAO = new CommentDAO();
        boolean isCommentAdded = commentDAO.addComment(comment);

        if (isCommentAdded) {
            // Redirect back to the topic page with success
            response.sendRedirect("topic.jsp?topicId=" + topicId + "&category=" + category);
        } else {
            // If comment adding fails, show error message
            request.setAttribute("error", "Failed to add comment. Please try again.");
            request.getRequestDispatcher("topic.jsp?topicId=" + topicId + "&category=" + category).forward(request, response);
        }
    }
}

