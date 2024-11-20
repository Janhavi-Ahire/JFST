<%@ page import="java.util.List" %>
<%@ page import="models.Post" %>
<%@ page import="models.User" %>
<%@ page import="dao.PostDAO" %>
<%@ page import="dao.UserDAO" %>
<%@ page session="true" %>

<%
    // Check if user is logged in
    User user = (User) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp"); // Redirect to login if user is not logged in
        return;
    }
    
    // Fetch user's posts using username
    PostDAO postDAO = new PostDAO();
    List<Post> userPosts = postDAO.getPostsByUsername(user.getUsername());
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="assests/css/styles.css" rel="stylesheet">

    <style>
        .profile-container {
            width: 80%;
            margin: auto;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .profile-header {
            display: flex;
            align-items: center;
            gap: 20px;
            border-bottom: 2px solid #f4f7f6;
            padding-bottom: 20px;
            margin-bottom: 20px;
        }
        .profile-header img {
            border-radius: 50%;
            width: 120px;
            height: 120px;
            object-fit: cover;
        }
        .profile-details h2 {
            color: #004e92;
            font-family: 'Poppins', sans-serif;
            font-size: 1.8rem;
            margin: 0;
        }
        .profile-details p {
            color: #555;
            margin: 5px 0;
        }
        .post-list h3 {
            color: #004e92;
            margin-bottom: 10px;
        }
        .post {
            background-color: #f9f9f9;
            padding: 15px;
            border-radius: 8px;
            margin-bottom: 15px;
            position: relative;
        }
        .post-title {
            font-weight: bold;
            color: #333;
        }
        .post-content {
            color: #555;
        }
        .delete-icon {
            position: absolute;
            top: 10px;
            right: 10px;
            color: red;
            cursor: pointer;
            font-size: 1.2rem;
        }
        .delete-icon:hover {
            color: #e60000;
        }
        .logout-button {
            background-color: #003366;
            color: white;
            padding: 0.8rem 2rem;
            border: none;
            border-radius: 4px;
            font-size: 1rem;
            cursor: pointer;
            text-align: center;
            display: block;
            margin: 20px auto;
            text-decoration: none;
        }
        
        .logout-button:hover {
            background-color: #005a8f;
        }
    </style>
</head>
<body>

    <div class="profile-container">
        <!-- Profile Header -->
        <div class="profile-header">
            <!-- Profile Image -->
            <img src="assests/images/scfi.jpg" alt="Profile Image">

            <!-- User Information -->
            <div class="profile-details">
                <h2><%= user.getUsername() %></h2>
                <p>Email: <%= user.getEmail() %></p>
            </div>
        </div>

        <!-- User's Posts Section -->
        <div class="post-list">
            <h3>Your Posts</h3>
            <% if (userPosts != null && !userPosts.isEmpty()) { %>
                <% for (Post post : userPosts) { %>
                    <div class="post">
                        <!-- Post Title and Content -->
                        <p class="post-title"><%= post.getTitle() %></p>
                        <p class="post-content"><%= post.getContent() %></p>

                        <!-- Delete Icon -->
                        <i class="fas fa-trash delete-icon" onclick="deletePost(<%= post.getId() %>)"></i>
                    </div>
                <% } %>
            <% } else { %>
                <p>You haven't posted anything yet.</p>
            <% } %>
        </div>

        <!-- Logout Button -->
        <div style="text-align: center; margin-top: 20px;">
            <a href="LogoutServlet" class="logout-button">Logout</a>
        </div>
    </div>

    <script>
        // JavaScript function to handle post deletion
        function deletePost(postId) {
            if (confirm("Are you sure you want to delete this post?")) {
                window.location.href = 'DeletePostServlet?postId=' + postId; // Assuming DeletePostServlet handles the deletion
            }
        }
    </script>

</body>
</html>
