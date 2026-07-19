package servlets;

import db.DB;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet("/SaveScoreServlet")
public class SaveScoreServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {

        int userId = (int) request.getSession().getAttribute("userId");
        int score = Integer.parseInt(request.getParameter("score"));

        try (Connection conn = DB.getConnection()) {
            PreparedStatement stmt = conn.prepareStatement(
                    "INSERT INTO scores (user_id, score) VALUES (?, ?)" +
                            "ON DUPLICATE KEY UPDATE score = score + VALUES(score)"
            );
            stmt.setInt(1, userId);
            stmt.setInt(2, score);
            stmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
