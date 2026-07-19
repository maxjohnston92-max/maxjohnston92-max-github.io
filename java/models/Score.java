package models;

import db.DB;


import java.sql.Timestamp;

public class Score {
    private int id;
    private int userId;
    private int score;
    private Timestamp createdAt;

    public Score() {}

    public Score(int id, int userId, int score, Timestamp createdAt) {
        this.id = id;
        this.userId = userId;
        this.score = score;
        this.createdAt = createdAt;
    }

    // Getters
    public int getId() { return id; }
    public int getUserId() { return userId; }
    public int getScore() { return score; }
    public Timestamp getCreatedAt() { return createdAt; }

    // Setters
    public void setId(int id) { this.id = id; }
    public void setUserId(int userId) { this.userId = userId; }
    public void setScore(int score) { this.score = score; }
    public void setCreatedAt(Timestamp createdAt) { this.createdAt = createdAt; }
}
