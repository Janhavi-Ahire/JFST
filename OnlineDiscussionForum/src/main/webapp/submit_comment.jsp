<%@ page import="java.sql.*" %>
<%
    String postId = request.getParameter("postId");
    String commentText = request.getParameter("comment");

    Connection conn = null;
    PreparedStatement stmt = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/forum", "root", "Janhavi@Mysql18");

        String sql = "INSERT INTO comments (post_id, comment, created_at) VALUES (?, ?, CURRENT_TIMESTAMP)";
        stmt = conn.prepareStatement(sql);
        stmt.setString(1, postId);
        stmt.setString(2, commentText);
        stmt.executeUpdate();

        response.getWriter().write("success");
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (stmt != null) stmt.close();
        if (conn != null) conn.close();
    }
%>
