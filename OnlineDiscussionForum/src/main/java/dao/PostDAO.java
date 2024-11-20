package dao;
//
//import models.Post;
//import utils.DatabaseConnection;
//
//import java.sql.*;
//import java.util.ArrayList;
//import java.util.List;
//
//public class PostDAO {
//
//    /**
//     * Adds a new post to the database.
//     * @param post The post to be added.
//     * @return True if the post was added successfully, false otherwise.
//     */
//    public boolean addPost(Post post) {
//        String sql = "INSERT INTO posts (title, content, username, category, post_time) VALUES (?, ?, ?, ?, ?)";
//
//        try (Connection conn = DatabaseConnection.getConnection(); 
//             PreparedStatement stmt = conn.prepareStatement(sql)) {
//
//            stmt.setString(1, post.getTitle());
//            stmt.setString(2, post.getContent());
//            stmt.setString(3, post.getUsername());
//            stmt.setString(4, post.getCategory());
//            stmt.setTimestamp(5, post.getPostTime());
//
//            int rowsInserted = stmt.executeUpdate();
//            return rowsInserted > 0;
//        } catch (SQLException e) {
//            System.err.println("Error while inserting post: " + e.getMessage());
//            e.printStackTrace();
//            return false;
//        }
//    }
//
//    /**
//     * Retrieves posts from the database for a given category.
//     * @param category The category of posts to fetch.
//     * @return A list of posts in the specified category.
//     */
//    public List<Post> getPostsByCategory(String category) {
//        List<Post> posts = new ArrayList<>();
//        String sql = "SELECT * FROM posts WHERE category = ? ORDER BY post_time DESC";
//
//        try (Connection conn = DatabaseConnection.getConnection();
//             PreparedStatement stmt = conn.prepareStatement(sql)) {
//
//            stmt.setString(1, category);
//            ResultSet rs = stmt.executeQuery();
//
//            while (rs.next()) {
//                Post post = new Post(
//                        rs.getInt("id"),
//                        rs.getString("title"),
//                        rs.getString("content"),
//                        rs.getString("username"),
//                        rs.getTimestamp("post_time"),
//                        rs.getString("category")
//                );
//                posts.add(post);
//            }
//
//        } catch (SQLException e) {
//            System.err.println("Error while fetching posts by category: " + e.getMessage());
//            e.printStackTrace();
//        }
//        return posts;
//    }
//}

import models.Post;
import utils.DatabaseConnection;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PostDAO {

    /**
     * Adds a new post to the database.
     * @param post The post to be added.
     * @return True if the post was added successfully, false otherwise.
     */
    public boolean addPost(Post post) {
        String sql = "INSERT INTO posts (title, content, username, category, created_at) VALUES (?, ?, ?, ?, ?)";

        try (
        		Connection conn = DatabaseConnection.getConnection(); 
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, post.getTitle());
            stmt.setString(2, post.getContent());
            stmt.setString(3, post.getUsername());
            stmt.setString(4, post.getCategory());
            stmt.setTimestamp(5, post.getCreatedAt());

            int rowsInserted = stmt.executeUpdate();
            return rowsInserted > 0;
        } catch (SQLException e) {
            System.err.println("Error while inserting post: " + e.getMessage());
            e.printStackTrace();
            return false;
        }
    }

    /**
     * Retrieves posts from the database for a given category.
     * @param category The category of posts to fetch.
     * @return A list of posts in the specified category.
     */
    
    public boolean deletePostById(int postId) {
        String sql = "DELETE FROM posts WHERE id = ?";
        
        try (        		Connection conn = DatabaseConnection.getConnection(); 

        		PreparedStatement statement = conn.prepareStatement(sql)) {
            statement.setInt(1, postId);
            
            int rowsAffected = statement.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    public List<Post> getPostsByUsername(String username) {
        List<Post> posts = new ArrayList<>();
        String sql = "SELECT * FROM posts WHERE username = ? ORDER BY created_at DESC";

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Post post = new Post(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("content"),
                        rs.getString("username"),
                        rs.getTimestamp("created_at"),
                        rs.getString("category")
                );
                posts.add(post);
            }

        } catch (SQLException e) {
            System.err.println("Error while fetching posts by username: " + e.getMessage());
            e.printStackTrace();
        }
        return posts;
    }

    public List<Post> getPostsByCategory(String category) {
        List<Post> posts = new ArrayList<>();
        String sql = "SELECT * FROM posts WHERE category = ? ORDER BY created_at DESC";

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, category);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Post post = new Post(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("content"),
                        rs.getString("username"),
                        rs.getTimestamp("created_at"),
                        rs.getString("category")
                );
                posts.add(post);
            }

        } catch (SQLException e) {
            System.err.println("Error while fetching posts by category: " + e.getMessage());
            e.printStackTrace();
        }
        return posts;
    }
}
