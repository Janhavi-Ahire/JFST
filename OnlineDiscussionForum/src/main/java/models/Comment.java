package models;

import java.sql.Timestamp;

public class Comment {
    private int id;
    private String commentText;
    private Timestamp createdAt;
    private User user;
    private String category;

    // Constructor
    public Comment(int id, String commentText, Timestamp createdAt, User user, String category) {
        this.id = id;
        this.commentText = commentText;
        this.createdAt = createdAt;
        this.user = user;
        this.category = category;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCommentText() {
        return commentText;
    }

    public void setCommentText(String commentText) {
        this.commentText = commentText;
    }

    public Timestamp getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
}
