<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us | BuzzBoard</title>
     <link href="assests/css/styles.css" rel="stylesheet">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
      <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@600&display=swap" rel="stylesheet">
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff;
            color: #333;
            line-height: 1.6;
        }

        /* Main Container */
        .container {
            width: 90%;
            max-width: 1000px;
            margin: 40px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.1);
        }

        /* Page Header 
        h1 {
            font-size: 2.8em;
            color: #000099;
            margin-bottom: 20px;
            font-weight: bold;
            text-align: center;
            padding-bottom: 10px;
            border-bottom: 3px solid #000099;
        }
*/
        /* Contact Information */
        .contact-info {
            text-align: center;
            margin-bottom: 30px;
            background-color: #e6e6ff;
            padding: 15px;
            border-radius: 8px;
            border: 1px solid #b3b3ff;
        }

        .contact-info p {
            font-size: 1.1em;
            margin: 8px 0;
            color: #5a5a5a;
        }

        /* Feedback Form Styles */
        .feedback-section h2 {
            font-size: 2em;
            color: #000099;
            font-weight: 600;
            margin-bottom: 15px;
            text-align: center;
        }

        .feedback-box {
            width: 100%;
            max-width: 600px;
            background-color: #f0faff;
            border: 1px solid #b3d6ff;
            border-radius: 8px;
            padding: 20px;
            margin: 0 auto 40px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .feedback-form {
            display: flex;
            flex-direction: column;
            gap: 12px;
        }

        .feedback-form select,
        .feedback-form input,
        .feedback-form textarea {
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1em;
            color: #333;
            transition: border-color 0.3s ease;
        }

        .feedback-form input:focus,
        .feedback-form textarea:focus,
        .feedback-form select:focus {
            border-color: #000099;
            outline: none;
        }

        .feedback-form button {
            padding: 12px;
            background-color: #000099;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1.1em;
            font-weight: 600;
            transition: background-color 0.3s ease;
        }

        .feedback-form button:hover {
            background-color: #000066;
        }

        .feedback-confirmation {
            display: none;
            color: #28a745;
            font-size: 1.1em;
            margin-top: 10px;
            font-weight: 600;
            text-align: center;
        }

        /* FAQ Section Styles */
        .faq-section h2 {
            font-size: 2em;
            color: #000099;
            font-weight: 600;
            margin-bottom: 15px;
            text-align: center;
        }

        .faq-container {
            width: 100%;
            max-width: 600px;
            margin: 0 auto;
            padding: 0 20px;
        }

        .faq {
            background-color: #f0faff;
            border: 1px solid #b3d6ff;
            border-radius: 8px;
            padding: 15px;
            margin-bottom: 10px;
        }

        .faq h3 {
            font-size: 1.2em;
            color: #000099;
            cursor: pointer;
            display: flex;
            justify-content: space-between;
            align-items: center;
            font-weight: 500;
        }

        .faq p {
            font-size: 1em;
            color: #5a5a5a;
            display: none;
            margin-top: 5px;
        }

        /* Chat Button Styles */
        .chat-button {
            position: fixed;
            bottom: 20px;
            right: 20px;
            background-color: #000099;
            color: white;
            padding: 15px;
            border-radius: 50%;
            font-size: 18px;
            cursor: pointer;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            z-index: 100;
            transition: background-color 0.3s ease;
        }

        .chat-button:hover {
            background-color: #000066;
        }

        /* Chat Window Styles */
        .chat-window {
            position: fixed;
            bottom: 70px;
            right: 20px;
            width: 300px;
            height: 400px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            display: none;
            flex-direction: column;
            z-index: 200;
        }

        .chat-header {
            background-color: #000099;
            color: white;
            padding: 10px;
            font-size: 1.2em;
            text-align: center;
            border-top-left-radius: 8px;
            border-top-right-radius: 8px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .chat-body {
            display: flex;
            flex-direction: column;
            padding: 10px;
            flex: 1;
        }

        .chat-box {
            flex: 1;
            overflow-y: auto;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            margin-bottom: 10px;
            background-color: #f9f9f9;
        }

        #chatInput {
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            width: 100%;
            margin-bottom: 10px;
        }

        .send-button {
            background-color: #000099;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .send-button:hover {
            background-color: #000066;
        }

        .close-chat {
            background: none;
            border: none;
            color: white;
            font-size: 1.2em;
            cursor: pointer;
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
             <li><a href="login.jsp">Login</a></li>
             <li><a href="signup.jsp">Signup</a></li>
            </ul>
        </nav>
    </header>

<div class="container">
    <h1 style = " text-align : center;">Contact Us</h1>
   
    <div class="contact-info">
        <p>Email: <a href="mailto:support@buzzboard.com" style="color: #000099; text-decoration: none;">support@buzzboard.com</a></p>
        <p>Phone: +123 456 7890</p>
        <p>Address: 123 Buzz Street, Board City</p>
    </div>

    <div class="feedback-section">
        <h2>Feedback</h2>
        <p style="text-align: center;">We value your feedback. Please let us know how we can improve!</p>
       
        <div class="feedback-box">
            <form class="feedback-form" onsubmit="submitFeedback(event)">
                <input type="text" placeholder="Your Name" required>
                <input type="email" placeholder="Your Email" required>
                <select required>
                    <option value="" disabled selected>Feedback Type</option>
                    <option value="General">General</option>
                    <option value="Bug Report">Bug Report</option>
                    <option value="Feature Request">Feature Request</option>
                </select>
                <input type="text" placeholder="Subject" required>
                <textarea rows="5" placeholder="Your Feedback" required></textarea>
                <button type="submit">Submit Feedback</button>
            </form>
            <p class="feedback-confirmation" id="feedback-confirmation">Thank you for your feedback!</p>
        </div>
    </div>

    <div class="faq-section">
        <h2>Frequently Asked Questions (FAQ)</h2>
        <div class="faq-container">
            <div class="faq">
                <h3 onclick="toggleFaq(this)">What is BuzzBoard? <span>&#x25BC;</span></h3>
                <p>BuzzBoard is a discussion forum platform that allows users to engage in meaningful conversations on various topics, share insights, and connect with a community.</p>
            </div>
            <div class="faq">
                <h3 onclick="toggleFaq(this)">How do I create a new discussion post? <span>&#x25BC;</span></h3>
                <p>To create a new discussion post, navigate to the main forum page, select a category, and click "New Post." Fill out the post details, and submit it to start a conversation.</p>
            </div>
            <div class="faq">
                <h3 onclick="toggleFaq(this)">Who can see my posts? <span>&#x25BC;</span></h3>
                <p>All registered users can view posts on BuzzBoard. Posts may also be visible to guests depending on your privacy settings.</p>
            </div>
            <div class="faq">
                <h3 onclick="toggleFaq(this)">How do I report inappropriate content? <span>&#x25BC;</span></h3>
                <p>You can report inappropriate content by clicking the "Report" button on the post or comment. Our team will review it as soon as possible.</p>
            </div>
        </div>
    </div>
</div>

<!-- Chatbot Button and Window -->
<button class="chat-button" onclick="toggleChatWindow()">💬</button>

<div class="chat-window" id="chat-window">
    <div class="chat-header">
        <span>Chat with us</span>
        <button class="close-chat" onclick="toggleChatWindow()">X</button>
    </div>
    <div class="chat-body">
        <div class="chat-box" id="chat-box"></div>
        <input type="text" id="chatInput" placeholder="Type your message..." />
        <button class="send-button" onclick="sendMessage()">Send</button>
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
<script>
    // Feedback submission with confirmation
    function submitFeedback(event) {
        event.preventDefault();
        document.getElementById('feedback-confirmation').style.display = 'block';
        setTimeout(() => {
            document.getElementById('feedback-confirmation').style.display = 'none';
        }, 3000);
        event.target.reset();
    }

    // FAQ toggle function
    function toggleFaq(element) {
        const answer = element.nextElementSibling;
        const icon = element.querySelector("span");
       
        if (answer.style.display === "block") {
            answer.style.display = "none";
            icon.innerHTML = "&#x25BC;";
        } else {
            answer.style.display = "block";
            icon.innerHTML = "&#x25B2;";
        }
    }

    // Chatbot toggle function
    function toggleChatWindow() {
        const chatWindow = document.getElementById('chat-window');
        chatWindow.style.display = chatWindow.style.display === 'none' || chatWindow.style.display === '' ? 'flex' : 'none';
    }

    // Send a message to the chatbot
    function sendMessage() {
        const inputField = document.getElementById('chatInput');
        const chatBox = document.getElementById('chat-box');
        const message = inputField.value;

        if (message.trim()) {
            const messageElement = document.createElement('div');
            messageElement.textContent = `You: ${message}`;
            chatBox.appendChild(messageElement);

            inputField.value = '';

            const botMessageElement = document.createElement('div');
            botMessageElement.textContent = 'ChatBot: Thank you for reaching out. How can I assist you today?';
            chatBox.appendChild(botMessageElement);

            chatBox.scrollTop = chatBox.scrollHeight;
        }
    }
</script>

</body>
</html>
