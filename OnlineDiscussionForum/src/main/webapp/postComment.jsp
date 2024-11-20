<%@ page import="java.util.*,java.io.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Comments</title>
</head>
<body>
    <h1>Comments</h1>

    <!-- Form to add a new comment -->
    <form action="addComment" method="POST">
        <input type="hidden" name="postId" value="<%= request.getParameter("postId") %>" />
        <textarea name="comment" placeholder="Add your comment here..." required></textarea>
        <button type="submit">Submit Comment</button>
    </form>

    <h2>All Comments:</h2>
    <ul>
        <!-- Loop through the list of comments -->
        <%
            // Assuming 'comments' is a List or Array of comments passed as a request attribute
            List<String> comments = (List<String>) request.getAttribute("comments");
            if (comments != null) {
                for (String comment : comments) {
        %>
            <li><%= comment %></li>
        <%
                }
            }
        %>
    </ul>

</body>
</html>
