package dao;

import models.Comment;
import models.User;
import utils.DatabaseConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CommentDAO {

    private Connection connection;

    public CommentDAO() {
        try {
            this.connection = DatabaseConnection.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Method to add a comment
    public boolean addComment(Comment comment) {
        String query = "INSERT INTO comments (user_id, topic_id, comment, category) VALUES (?, ?, ?, ?)";
        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, comment.getUser().getId());
            statement.setInt(2, comment.getId()); // Assuming topic_id is passed in the comment object
            statement.setString(3, comment.getCommentText());
            statement.setString(4, comment.getCategory());
            return statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Method to get comments by topic (post)
    public List<Comment> getCommentsByTopic(int topicId) {
        List<Comment> comments = new ArrayList<>();
        String query = "SELECT c.comment_id, c.comment, c.created_at, c.category, u.username " +
                       "FROM comments c JOIN users u ON c.user_id = u.user_id " +
                       "WHERE c.topic_id = ? ORDER BY c.created_at DESC";
        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, topicId);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                User user = new User(
                        resultSet.getInt("user_id"),
                        resultSet.getString("username"),
                        null, null, false
                );
                comments.add(new Comment(
                        resultSet.getInt("comment_id"),
                        resultSet.getString("comment"),
                        resultSet.getTimestamp("created_at"),
                        user,
                        resultSet.getString("category")
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return comments;
    }

    // Method to get a comment by its ID (optional for editing/deleting comments)
    public Comment getCommentById(int commentId) {
        String query = "SELECT c.comment_id, c.comment, c.created_at, c.category, u.username " +
                       "FROM comments c JOIN users u ON c.user_id = u.user_id " +
                       "WHERE c.comment_id = ?";
        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, commentId);
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                User user = new User(
                        resultSet.getInt("user_id"),
                        resultSet.getString("username"),
                        null, null, false
                );
                return new Comment(
                        resultSet.getInt("comment_id"),
                        resultSet.getString("comment"),
                        resultSet.getTimestamp("created_at"),
                        user,
                        resultSet.getString("category")
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    // Method to delete a comment (admin or owner)
    public boolean deleteComment(int commentId) {
        String query = "DELETE FROM comments WHERE comment_id = ?";
        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, commentId);
            return statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
