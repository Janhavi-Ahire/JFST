<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="models.User, dao.TopicDAO, dao.CommentDAO" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Topic Discussion - Discussion Forum</title>
    <link rel="stylesheet" href="assets/css/styles.css">
</head>
<body>
    <!-- Navbar -->
    <header>
        <nav class="navbar">
            <h1>Discussion Forum</h1>
            <ul class="nav-links">
                <li><a href="index.jsp">Home</a></li>
                <li><a href="about.jsp">About Us</a></li>
                <li><a href="contact.jsp">Contact Us</a></li>
                <li><a href="login.jsp">Login</a></li>
                <li><a href="signup.jsp">Signup</a></li>
            </ul>
        </nav>
    </header>

    <!-- Topic Content -->
    <section class="topic-content">
        <h2>Topic: Entertainment</h2>
        <div class="comments">
            <h3>Comments:</h3>
            <!-- Display comments here -->
            <%
                String category = request.getParameter("category");
                TopicDAO topicDAO = new TopicDAO();
                List<Comment> comments = topicDAO.getCommentsByCategory(category);
                for(Comment comment : comments) {
                    out.print("<p>" + comment.getUser().getUsername() + ": " + comment.getCommentText() + "</p>");
                }
            %>
        </div>

        <!-- Add Comment Section -->
        <%
            User loggedInUser = (User) session.getAttribute("user");
            if (loggedInUser != null) {
        %>
            <h3>Add a Comment:</h3>
            <form action="addComment" method="post">
                <textarea name="commentText" required></textarea>
                <input type="hidden" name="category" value="<%= category %>">
                <input type="submit" value="Add Comment">
            </form>
        <%
            } else {
                out.print("<p>Please <a href='login.jsp'>login</a> to add a comment.</p>");
            }
        %>
    </section>
    
</body>
</html>
