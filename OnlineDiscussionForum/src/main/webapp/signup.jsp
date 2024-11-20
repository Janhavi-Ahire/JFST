
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup - Online Discussion Forum</title>
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

        /* Signup Section */
        .signup-container {
            padding: 2rem;
            flex-basis: 100%; /* Take up 50% width */
        }

        .signup-container h2 {
            text-align: center;
            color: #003366;
            margin-bottom: 1rem;
        }

        .signup-container p {
            text-align: center;
            font-size: 0.9rem;
            margin-bottom: 1.5rem;
        }

        .signup-container input {
            width: 100%;
            padding: 0.8rem;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .signup-container button {
            width: 100%;
            padding: 0.8rem;
            background-color: #003366;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 1rem;
            cursor: pointer;
        }

        .signup-container button:hover {
            background-color: #005a8f;
        }

        .signup-container .social-login {
            display: flex;
            justify-content: space-between;
            margin-top: 1rem;
        }

        .signup-container .social-login button {
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

        .signup-container .social-login button i {
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
            width: 550px;
        }


    </style>
    <script>
        function validateSignupForm(event) {
            const form = document.forms[0];
            const username = form["username"].value.trim();
            const email = form["email"].value.trim();
            const password = form["password"].value;
            const confirmPassword = form["confirmPassword"].value;

            // Username validation: alphanumeric and underscores only
            const usernamePattern = /^[a-zA-Z_]+$/;
            if (!usernamePattern.test(username)) {
                alert("Username can only contain letters, numbers, and underscores.");
                event.preventDefault(); // Prevent form submission
                return false;
            }

            // Email validation: basic email format
            const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailPattern.test(email)) {
                alert("Please enter a valid email address.");
                event.preventDefault();
                return false;
            }

            // Password validation: at least 8 characters, 1 uppercase, 1 lowercase, 1 number, 1 special character
            const passwordPattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
            if (!passwordPattern.test(password)) {
                alert("Password must be at least 8 characters long, include one uppercase letter, one lowercase letter, one number, and one special character.");
                event.preventDefault();
                return false;
            }

            // Confirm password validation
            if (password !== confirmPassword) {
                alert("Passwords do not match.");
                event.preventDefault();
                return false;
            }
            return true;
        }
    </script>
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
                <li><a href="login.jsp">Login</a></li>
            </ul>
        </nav>
    </header>

    <!-- Main Signup Container with Illustration -->
    <div class="main-container">
        <!-- Signup Form -->
        <div class="signup-container">
            <h2>Create an Account on BuzzBoard</h2>
            <p>Already have an account? <a href="login.jsp">Login here</a></p>
            <form action="SignupServlet" method="POST" onsubmit="validateSignupForm(event)">
                <input type="text" name="username" placeholder="Enter your username" required><br>
                <input type="email" name="email" placeholder="Enter your email" required><br>
                <input type="password" name="password" placeholder="Create a password" required><br>
                <input type="password" name="confirmPassword" placeholder="Confirm your password" required><br>
                <button type="submit">Sign Up</button>
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
            <!-- You can add an additional message or image here -->
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy;

