<!DOCTYPE html> 
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Online Discussion Forum</title>
    <link href="assests/css/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@600&display=swap" rel="stylesheet">
    <style>
        /* Global Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Arial', sans-serif;
        }
        body {
            background: #f3f3f3; /* Light gray background */
            color: #333;
            line-height: 1.6;
            padding: 0;
            margin: 0;
        }
        /* Color Palette */
        :root {
            --primary-color: #0a3d62; /* Dark Blue for primary color */
            --secondary-color: #1e5f8b; /* Medium Blue */
            --accent-color: #3498db; /* Lighter Blue */
            --text-color: #333;
            --bg-color: #ffffff;
            --gradient-color: linear-gradient(135deg, #0a3d62, #1e5f8b); /* Blue gradient */
        }

        /* Header Section */
        header {
            background: rgb(8,146,208);
			background: linear-gradient(159deg, rgba(8,146,208,1) 0%, rgba(75,0,130,1) 100%);
            color: white;
            text-align: center;
            padding: 60px 20px;
            border-bottom: 8px solid var(--accent-color);
            background-size: cover;
            background-blend-mode: overlay;
            margin-top: 60px; /* To prevent overlap with navbar */
        }
        header h1 {
            font-size: 3.5em;
            font-weight: bold;
            animation: fadeIn 1.5s ease-out;
        }
        header p {
            font-size: 1.5em;
            margin-top: 10px;
            animation: fadeIn 1.5s ease-out 0.5s;
        }

        /* Fade In Animation */
        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        /* Container for All Content */
        .container {
            width: 80%;
            margin: 50px auto;
            display: flex;
            flex-direction: column;
            gap: 60px;
        }

        /* Section Titles */
        .section-title {
            text-align: center;
            font-size: 2.5em;
            font-weight: 600;
            margin-bottom: 20px;
            color: var(--primary-color);
        }

        /* Mission Section */
        .mission {
            background: var(--bg-color);
            padding: 50px;
            border-radius: 20px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            text-align: center;
            position: relative;
            overflow: hidden;
            background-image: url('assests/images/Mission.png');
            background-size: cover;
            background-position: center;
            background-blend-mode: multiply;
            background-color: rgba(0, 0, 0, 0.5);
        }
        .mission-content {
            color: white;
            position: relative;
            z-index: 1;
        }
        .mission h2 {
            font-size: 2.8em;
            color: var(--accent-color);
            margin-bottom: 20px;
            text-transform: uppercase;
        }
        .mission p {
            font-size: 1.3em;
            color: #ddd;
            line-height: 1.8;
            margin-top: 15px;
        }
        .mission:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.15);
        }

        /* Decorative Divider */
        .divider {
            margin: 20px auto;
            width: 80px;
            height: 4px;
            background-color: var(--accent-color);
            border-radius: 5px;
        }

        /* Features Section */
        .features {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 40px;
            margin-top: 60px;
        }
        .feature-card {
            background: var(--bg-color);
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            transition: all 0.3s ease;
            color: var(--secondary-color);
        }
        .feature-card h3 {
            font-size: 2em;
            color: var(--primary-color);
        }
        .feature-card p {
            font-size: 1.2em;
            margin-top: 10px;
            color: #555;
        }
        .feature-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.15);
        }

        /* How It Works Section */
        .how-it-works {
            display: grid;
            grid-template-columns: 1fr 1.5fr;
            gap: 30px;
            background: var(--gradient-color); /* Updated gradient with blues */
            padding: 50px;
            color: white;
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            align-items: center;
        }
        .how-it-works img {
            width: 100%;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }
        .how-it-works-content h2 {
            font-size: 2.5em;
            margin-bottom: 20px;
            color: white;
        }
        .how-it-works-content p, .how-it-works-content ul {
            font-size: 1.2em;
            color: #f3f3f3;
            margin-top: 20px;
        }

        /* Contact Section */
        .contact {
            background: var(--primary-color); /* Dark blue for contact section */
            color: white;
            padding: 40px;
            border-radius: 12px;
            text-align: center;
            transition: background-color 0.3s ease;
        }
        .contact h2 {
            font-size: 2.5em;
            margin-bottom: 20px;
            color: var(--accent-color);
        }
        .contact p {
            font-size: 1.2em;
        }
        .contact:hover {
            background-color: #1e5f8b; /* Slightly lighter blue on hover */
        }

        /* Responsive Layout */
        @media (max-width: 768px) {
            .features {
                grid-template-columns: 1fr 1fr;
            }
            .how-it-works {
                grid-template-columns: 1fr;
            }
        }
        
        @media (max-width: 480px) {
            .features {
                grid-template-columns: 1fr;
            }
            .section-title {
                font-size: 2em;
            }
            .how-it-works-content h2 {
                font-size: 2em;
            }
        }
        
    </style>
</head>
<body>


    <!-- Navbar -->
        <nav class="navbar">
            <h1>BuzzBoard</h1>
            <ul class="nav-links">
                <li><a href="index.jsp">Home</a></li>
                <li><a href="about.jsp">About Us</a></li>
                <li><a href="contact.jsp">Contact Us</a></li>
                <li><a href="login.jsp">Login</a></li>
                <li><a href="signup.jsp">Signup</a></li>
            </ul>
        </nav>

<!-- Header Section -->
<header>
    <h1>About Us</h1>
    <p>Your space for insightful discussions and knowledge sharing!</p>
</header>

<div class="container">

    <!-- Mission Section -->
    <section class="mission">
        <div class="mission-content">
            <h2>Our Mission</h2>
            <div class="divider"></div>
            <p>We aim to create an inclusive community where everyone can express their thoughts, learn from others, and contribute to collective knowledge. Our online discussion forum provides a space where diverse ideas can be exchanged freely and respectfully.</p>
            <img src="assests/images/Mission.png" alt="Mission Image" style="width: 100%; height: auto; border-radius: 10px; margin-top: 20px;">
        </div>
    </section>

    <!-- Features Section -->
    <section>
        <h2 class="section-title">Key Features</h2>
        <div class="features">
            <div class="feature-card">
                <h3>Real-time Discussions</h3>
                <p>Participate in live discussions with members of the community and stay up-to-date on trending topics.</p>
            </div>
            <div class="feature-card">
                <h3>Expert Advice</h3>
                <p>Get advice and insights from industry experts and thought leaders across various fields.</p>
            </div>
            <div class="feature-card">
                <h3>Resource Sharing</h3>
                <p>Share useful resources and tips with others to enhance their knowledge.</p>
            </div>
        </div>
    </section>

    <!-- How It Works Section -->
    <section class="how-it-works">
        <div class="how-it-works-content">
            <h2>How It Works</h2>
            <p>Our platform allows users to post questions, share ideas, and comment on various topics. You can sign up to become part of the community and start sharing!</p>
        </div>
        <img src="assests/images/HowItWorks.jpg" alt="How it works image">
    </section>

    <!-- Contact Section -->
    <section class="contact">
        <h2>Contact Us</h2>
        <p>Feel free to reach out if you have any questions or feedback about our platform.</p>
    </section>

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
