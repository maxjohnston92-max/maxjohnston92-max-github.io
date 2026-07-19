package servlets;


import db.DB;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try (Connection conn = DB.getConnection()) {
            PreparedStatement stmt = conn.prepareStatement(
                    "SELECT id FROM users WHERE username=? AND password=?"
            );
            stmt.setString(1, username);
            stmt.setString(2, password);

            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                request.getSession().setAttribute("userId", rs.getInt("id"));
                response.sendRedirect("home.jsp");
            } else {
//                response.sendRedirect("login.jsp?error=1");

                request.setAttribute("message", "Login Failed, Please Try Again.");
                request.getRequestDispatcher("login.jsp");
                response.sendRedirect("login.jsp?error=1");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
