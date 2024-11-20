<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BuzzBoard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@600&display=swap" rel="stylesheet">
    <link href="assests/css/styles.css" rel="stylesheet">
    <style>
        /* Profile Icon Styling */
		.profile-icon {
		    display: inline-block;
		    margin-right: 15px;
		    position: absolute;
		    left: 20px;
		    top: 15px;
		}
		
		.profile-icon a {
		    text-decoration: none;
		    color: inherit;
		}
        
        body {
            background-color: #f4f7f6;  /* Light Gray Background */
            color: #333;  /* Dark text for readability */
            font-family: Arial, sans-serif;
            margin: 0;
        }


        /* Title Styles with Poppins font */
        .welcome-title {
            text-align: center;
            font-size: 2.5rem;
            font-weight: 600;
            font-family: 'Poppins', sans-serif;  /* Using Poppins font */
            margin-top: 2rem;
            color: #004e92;  /* Vibrant Blue */
            text-transform: uppercase;
        }

        /* Cards Container */
        .cards-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 2rem;
            padding: 3rem;
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

    <!-- Welcome Title Section -->
    <section>
        <h1 class="welcome-title">Welcome to the Online Discussion Forum</h1>
    </section>

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
