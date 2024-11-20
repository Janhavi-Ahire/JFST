<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Online Discussion Forum</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <link href="assests/css/styles.css" rel="stylesheet">
    <style>
        body {
            background-color: #f4f7f6;
            font-family: 'Poppins', sans-serif;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            margin: 0;
        }

        .main-container {
            display: flex;
            max-width: 900px;
            margin: 50px auto;
            background-color: #ffffff;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        /* Login Section */
        .login-container {
            padding: 2rem;
            flex-basis: 50%; /* Take up 50% width */
        }

        .login-container h2 {
            text-align: center;
            color: #003366;
            margin-bottom: 1rem;
        }

        .login-container p {
            text-align: center;
            font-size: 0.9rem;
            margin-bottom: 1.5rem;
        }

        .login-container input {
            width: 100%;
            padding: 0.8rem;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .login-container button {
            width: 100%;
            padding: 0.8rem;
            background-color: #003366;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 1rem;
            cursor: pointer;
        }

        .login-container button:hover {
            background-color: #005a8f;
        }

        .login-container .social-login {
            display: flex;
            justify-content: space-between;
            margin-top: 1rem;
        }

        .login-container .social-login button {
            width: 48%;
            background-color: #e4e4e4;
            color: #333;
            border: none;
            border-radius: 4px;
            padding: 0.7rem;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
        }

        .login-container .social-login button i {
            margin-right: 8px;
        }

/* Illustration Section */
.illustration {
    flex-basis: 50%; /* Take up 50% width */
    background-image: url('assests/images/discussion.jpg');
    background-size: contain; /* Resize image to fit within the 50% container */
    background-repeat: no-repeat;
    background-position: center;
    display: flex;
    align-items: center;
    justify-content: center;
    color: white;
    font-size: 2rem;
    font-weight: bold;
    width : 500px;
}

    </style>
</head>
<body>

    <!-- Navbar -->
    <header>
        <nav class="navbar">
            <h1>BuzzBoard</h1>
            <ul class="nav-links">
                <li><a href="index.jsp">Home</a></li>
                <li><a href="about.jsp">About Us</a></li>
                <li><a href="contact.jsp">Contact Us</a></li>
                <li><a href="signup.jsp">Signup</a></li>
            </ul>
        </nav>
    </header>

    <!-- Main Login Container with Illustration -->
    <div class="main-container">
        <!-- Login Form -->
        <div class="login-container">
            <h2>Login to BuzzBoard</h2>
            <p>Don't have an account? <a href="signup.jsp">Sign Up</a></p>
            <form action="LoginServlet" method="POST">
                <input type="text" name="username" placeholder="Enter your username" required><br>
                <input type="password" name="password" placeholder="Enter your password" required><br>
                <button type="submit">Login</button>
            </form>
            <% if(request.getAttribute("error") != null) { %>
                <p style="color: red; text-align: center;"><%= request.getAttribute("error") %></p>
            <% } %>
            <div class="social-login">
                <button><i class="fab fa-google"></i> Google</button>
                <button><i class="fab fa-facebook"></i> Facebook</button>
            </div>
        </div>

        <!-- Illustration Section -->
        <div class="illustration">
           <!-- The h1 text is removed or can be hidden using CSS -->
        </div>
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
