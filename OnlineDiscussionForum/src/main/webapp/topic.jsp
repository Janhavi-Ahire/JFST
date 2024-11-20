<%@ page import="java.sql.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
    // Retrieve the category from the URL parameter
    String category = request.getParameter("category");

    // Database connection setup
    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    try {
        // Connect to the database (replace with your DB details)
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/forum", "root", "Janhavi@Mysql18");

        // Query to fetch posts by category
        String sql = "SELECT * FROM posts WHERE category = ? ORDER BY created_at DESC";
        stmt = conn.prepareStatement(sql);
        stmt.setString(1, category);
        rs = stmt.executeQuery();
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Posts in <%= category %> Category</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <!-- Google Fonts - Poppins Font for Headings -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@600&display=swap" rel="stylesheet">
    <link href="assests/css/styles.css" rel="stylesheet">
    <style>
        /* Styles for post cards */
        body {
            font-family: Arial, sans-serif;
            background-color: #f3f4f6;
            color: #444;
        }
        .main-container {
            display: flex;
            justify-content: center;
        }
        .container {
            width: 100%;
            max-width: 700px;
            margin: 20px;
        }
        .post-card {
            background-color: #ffffff;
            margin-bottom: 20px;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
        }
        .post-header, .post-content, .post-actions {
            padding: 16px;
        }
        .post-header {
            display: flex;
            align-items: center;
            border-bottom: 1px solid #e2e8f0;
        }
        .user-image {
            width: 48px;
            height: 48px;
            border-radius: 50%;
            overflow: hidden;
            margin-right: 12px;
        }
        .user-details p {
            margin: 0;
        }
        .post-image img {
            width: 100%;
            max-height: 300px;
            object-fit: cover;
        }
        .post-actions button {
            background: none;
            border: none;
            color: #1a73e8;
            cursor: pointer;
        }
        .user-image img{
          width: 48px;
          height:auto;
          
        }
        
    </style>
</head>
<body>
    <!-- Navbar -->
 <header>
    <nav class="navbar">
        <!-- Profile Icon -->
        
        <!-- Title -->
        <h1>BuzzBoard</h1>
        
        <!-- Navigation Links -->
        <ul class="nav-links">
            <li><a href="index.jsp">Home</a></li>
            <li><a href="about.jsp">About Us</a></li>
            <li><a href="contact.jsp">Contact Us</a></li>
            <li><a href="login.jsp">Login</a></li>
            <li><a href="signup.jsp">Signup</a></li>
        </ul>
    </nav>
</header>

<div class="main-container">
<div class="container">
    <h1>Posts in <%= category %> Category</h1>
    <% while(rs.next()) { %>
        <div class="post-card">
            <div class="post-header">
                <div class="user-image">
                    <!-- Placeholder image, change as needed -->
                    <img src="assests/images/profile.jpg">
                </div>
                <div class="user-details">
                    <p class="user-name"><%= rs.getString("username") %></p>
                    <p class="post-time"><%= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(rs.getTimestamp("created_at")) %></p>
                </div>
            </div>
            <div class="post-content">
                <h2><%= rs.getString("title") %></h2>
                <p><%= rs.getString("content") %></p>
            </div>
            <div class="post-actions">
                <button><i class="fab fa-Comment"></i>Comment</button>
                <button><i class="fab fa-like"></i> Like</button>
                <button><i class="fab fa-share"></i> Share</button>
            </div>
        </div>
    <% } %>
</div>
<!-- Create New Post Button -->
<button onclick="location.href='create_post.jsp?category=<%= category %>'" 
        style="position: absolute; top: 114px; right: 20px; padding: 10px 20px; background-color: #004e92; color: white; border: none; border-radius: 5px; cursor: pointer;">
    Create New Post
</button>
</div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024-2025 Java Full Stack Project | Janhavi` Sweta` Madhushree`</p>
        <div class="social-icons">
            <a href="https://www.linkedin.com" target="_blank">
                <i class="fab fa-linkedin"></i>
            </a>
            <a href="https://github.com" target="_blank">
                <i class="fab fa-github"></i>
            </a>
            <a href="https://www.facebook.com" target="_blank">
                <i class="fab fa-facebook"></i>
            </a>
        </div>
    </footer>
</body>
</html>

<%
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (rs != null) rs.close();
        if (stmt != null) stmt.close();
        if (conn != null) conn.close();
    }
%>
