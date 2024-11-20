<%@ page import="java.sql.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
    String category = request.getParameter("category");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create New Post</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f3f4f6;
            color: #444;
            display: flex;
            justify-content: center;
            padding-top: 20px;
        }
        .form-container {
            background-color: #ffffff;
            width: 100%;
            max-width: 600px;
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
        }
        .form-container h2 {
            margin-bottom: 20px;
            text-align: center;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            font-weight: bold;
        }
        .form-group input, .form-group textarea {
            width: 100%;
            padding: 10px;
            border-radius: 8px;
            border: 1px solid #ddd;
        }
        .form-group button {
            background-color: #004e92;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }
        .form-group button:hover {
            background-color: #003c7d;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Create a New Post in <%= category %> Category</h2>
        <form action="PostServlet" method="POST">
            <input type="hidden" name="category" value="<%= category %>">
            
            <!-- Post Title -->
            <div class="form-group">
                <label for="title">Post Title</label>
                <input type="text" name="title" id="title" required>
            </div>

            <!-- Post Description -->
            <div class="form-group">
                <label for="content">Post Description</label>
                <textarea name="content" id="content" rows="4" required></textarea>
            </div>

            <div class="form-group">
                <button type="submit">Submit Post</button>
            </div>
        </form>
    </div>
</body>
</html>
