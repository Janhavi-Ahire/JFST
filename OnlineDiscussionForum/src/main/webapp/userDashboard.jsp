<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <link href="assests/css/styles.css" rel="stylesheet">
    <style>
        body {
            background-color: #f4f7f6;
            color: #333;
            font-family: 'Poppins', sans-serif;
        }

        .dashboard-container {
            padding: 2rem;
            text-align: center;
        }
        .profile {
            margin-bottom: 20px;
            font-size: 1.5rem;
        }
        .greeting {
            font-size: 2rem;
            color: #003366;
            margin-bottom: 20px;
        }
        .logout-button {
            background-color: #003366;
            color: white;
            padding: 0.8rem 2rem;
            border: none;
            border-radius: 4px;
            font-size: 1rem;
        }
        .logout-button:hover {
            background-color: #005a8f;
        }
          /* Cards Container */
        .cards-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 2rem;
            padding: 2rem;
            margin-top: 2rem;
        }

        /* Card Styles */
        .card {
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            width: 250px;
            text-align: center;
            cursor: pointer;
            transition: transform 0.3s ease;
            overflow: hidden;
        }
        .card:hover {
            transform: translateY(-10px);
        }

        .card img {
            width: 100%;
            height: 150px;
            object-fit: cover;  /* Ensure the images fill the space without distortion */
            border-bottom: 2px solid #f4f7f6;  /* Soft divider between image and content */
        }

        .card h2 {
            color: #004e92;  /* Blue color for titles */
            margin-top: 1rem;
            font-family: 'Poppins', sans-serif;  /* Using Poppins font for headings */
        }

        .card p {
            color: #555;  /* Light gray text */
            padding: 0 1rem;
            margin-bottom: 1rem;
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
				<li>
                    <!-- Link to profile page -->
                    <a href="profile.jsp">
                        <i class="fas fa-user profile-icon"></i> <!-- Profile icon -->
                    </a>
                </li>                
                <li><a href="LogoutServlet">Logout</a></li>
            </ul>
        </nav>
    </header>

    <!-- Main Section with Discussion Cards -->
    <main>
        <section class="cards-container">
            <div class="card" onclick="location.href='topic.jsp?category=Science Fiction'">
                <img src="assests/images/scfi.jpg" alt="Science Fiction">
                <h2>Science Fiction</h2>
                <p>Explore futuristic worlds and alternate realities.</p>
            </div>
            <div class="card" onclick="location.href='topic.jsp?category=Technology'">
                <img src="assests/images/technologies.jpg" alt="Technology">
                <h2>Technology</h2>
                <p>Discuss the latest trends in technology and innovation.</p>
            </div>
            <div class="card" onclick="location.href='topic.jsp?category=Home Decors'">
                <img src="assests/images/home_decors.jpg" alt="Home Decors">
                <h2>Home Decors</h2>
                <p>Creative ideas to decorate your living space.</p>
            </div>
            <div class="card" onclick="location.href='topic.jsp?category=Cooking'">
                <img src="assests/images/cooking.jpg" alt="Cooking">
                <h2>Cooking</h2>
                <p>Recipes, tips, and kitchen hacks for food lovers.</p>
            </div>
            <div class="card" onclick="location.href='topic.jsp?category=Entertainment'">
                <img src="assests/images/entertainment.jpg" alt="Entertainment">
                <h2>Entertainment</h2>
                <p>Movies, shows, music, and more!</p>
            </div>
            <div class="card" onclick="location.href='topic.jsp?category=Sports'">
                <img src="assests/images/sports.jpg" alt="Sports">
                <h2>Sports</h2>
                <p>Sports events, players, and all things sports!</p>
            </div>
            <div class="card" onclick="location.href='topic.jsp?category=Current Affairs'">
                <img src="assests/images/currentaffirs.png" alt="Current Affairs">
                <h2>Current Affairs</h2>
                <p>Global discussions, news, and debates.</p>
            </div>
            <div class="card" onclick="location.href='topic.jsp?category=Education'">
                <img src="assests/images/education.jpg" alt="Education">
                <h2>Education</h2>
                <p>Talk about courses, careers, and learning.</p>
            </div>
        </section>
    </main>
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
