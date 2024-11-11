// src/dao/UserDAO.java
package dao;

import models.User;
import utils.DatabaseConnection;

import java.sql.*;

public class UserDAO {

    // Method to register a new user
    public boolean registerUser(User user) throws SQLException {
        String query = "INSERT INTO users (username, email, password, is_admin) VALUES (?, ?, ?, ?)";
        try (Connection con = DatabaseConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(query)) {
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getPassword());
            ps.setBoolean(4, user.isAdmin());
            return ps.executeUpdate() > 0;
        }
    }

    // Method to login a user
    public User loginUser(String username, String password) throws SQLException {
        String query = "SELECT * FROM users WHERE username = ? AND password = ?";
        try (Connection con = DatabaseConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(query)) {
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new User(
                        rs.getInt("user_id"),
                        rs.getString("username"),
                        rs.getString("email"),
                        rs.getBoolean("is_admin")
                );
            }
        }
        return null;
    }
}
