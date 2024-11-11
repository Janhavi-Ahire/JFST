<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Discussion Forum</title>
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

    <!-- Main Section with Discussion Cards -->
    <main>
        <section class="cards">
            <div class="card" onclick="location.href='topic.jsp?category=Entertainment'">
                <h2>Entertainment</h2>
                <p>Discussion on movies, music, and more.</p>
            </div>
            <div class="card" onclick="location.href='topic.jsp?category=Sports'">
                <h2>Sports</h2>
                <p>Discussion on sports events, players, and news.</p>
            </div>
            <div class="card" onclick="location.href='topic.jsp?category=Current Affairs'">
                <h2>Current Affairs</h2>
                <p>Latest news and global discussions.</p>
            </div>
            <div class="card" onclick="location.href='topic.jsp?category=Education'">
                <h2>Education</h2>
                <p>Discussion on education and career development.</p>
            </div>
        </section>
    </main>

</body>
</html>
