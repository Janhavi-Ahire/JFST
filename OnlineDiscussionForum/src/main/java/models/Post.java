package models;

import java.sql.Timestamp;

public class Post {
    private int id;
    private String title;
    private String content;
    private String username;
    private Timestamp createdAt;
    private String category;

    public Post(int id, String title, String content, String username, Timestamp createdAt, String category) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.username = username;
        this.createdAt = createdAt;
        this.category = category;
    }

    public Post(int int1, String string, String string2, String string3, String string4, Timestamp timestamp,
			int int2) {
		// TODO Auto-generated constructor stub
	}



	// Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Timestamp getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

	public Timestamp getPostTime() {
		// TODO Auto-generated method stub
		return null;
	}
}
