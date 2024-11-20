package dao;

import models.Topic;
import models.Post;
import models.Comment;
import models.User;
import utils.DatabaseConnection;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TopicDAO {
    private Connection connection;

    public TopicDAO() {
        try {
            this.connection = DatabaseConnection.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Method to get posts by category
    public List<Post> getPostsByCategory(String category) {
        List<Post> posts = new ArrayList<>();
        String query = "SELECT p.id, p.title, p.content, p.username, p.category, p.created_at, p.topic_id " +
                       "FROM posts p " +
                       "WHERE p.category = ? ORDER BY p.created_at DESC";

        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setString(1, category);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                posts.add(new Post(
                    rs.getInt("id"),
                    rs.getString("title"),
                    rs.getString("content"),
                    rs.getString("username"),
                    rs.getString("category"),
                    rs.getTimestamp("created_at"),
                    rs.getInt("topic_id")
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return posts;
    }

    // Method to get comments by post ID
    public List<Comment> getCommentsByPostId(int postId) {
        List<Comment> comments = new ArrayList<>();
        String query = "SELECT c.comment_id, c.comment, c.created_at, c.user_id, u.username " +
                       "FROM comments c " +
                       "JOIN users u ON c.user_id = u.user_id " +
                       "WHERE c.topic_id = ? ORDER BY c.created_at ASC";

        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, postId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                comments.add(new Comment(
                    rs.getInt("comment_id"),
                    rs.getString("comment"),
                    rs.getTimestamp("created_at"),
                    new User(rs.getInt("user_id"), rs.getString("username"), null, null, false), query
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return comments;
    }
}
