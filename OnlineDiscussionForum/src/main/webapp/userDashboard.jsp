<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="models.User" %>
<%
    // Check if user is logged in
    HttpSession session1 = request.getSession(false);
    User user = (User) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp"); // Redirect to login if not logged in
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Dashboard</title>
    <link rel="stylesheet" href="css/styles.css">
    <style>
        /* Basic styling, adjust as needed */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }
        .navbar {
            background-color: #007bff;
            padding: 15px;
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .navbar a {
            color: white;
            text-decoration: none;
            margin: 0 10px;
        }
        .container {
            max-width: 1200px;
            margin: auto;
            padding: 20px;
            text-align: center;
        }
        .card {
            display: inline-block;
            width: 200px;
            margin: 20px;
            padding: 20px;
            background-color: #007bff;
            color: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .footer {
            background-color: #007bff;
            color: white;
            padding: 10px;
            text-align: center;
        }
        .footer span {
            font-weight: bold;
        }
    </style>
</head>
<body>

<div class="navbar">
    <div>Welcome, <%= user.getUsername() %>!</div>
    <div>
        <a href="logoutServlet">Logout</a>
    </div>
</div>

<div class="container">
    <h1>Welcome to the Online Discussion Forum</h1>
    <p>Select a topic to explore discussions and contribute your thoughts!</p>

    <!-- Cards for each section -->
    <div class="card">
        <h2>Entertainment</h2>
        <p>Join discussions on movies, music, and more.</p>
        <a href="entertainment.jsp" class="btn">Enter</a>
    </div>

    <div class="card">
        <h2>Sports</h2>
        <p>Talk about your favorite sports and athletes.</p>
        <a href="sports.jsp" class="btn">Enter</a>
    </div>

    <div class="card">
        <h2>Current Affairs</h2>
        <p>Discuss recent events and global news.</p>
        <a href="currentAffairs.jsp" class="btn">Enter</a>
    </div>

    <div class="card">
        <h2>Education</h2>
        <p>Share knowledge and discuss educational topics.</p>
        <a href="education.jsp" class="btn">Enter</a>
    </div>
</div>

<div class="footer">
    <p>Made by <span>JFST - JANHAVI Sweta And Madhushree team 2024</span></p>
</div>

</body>
</html>
