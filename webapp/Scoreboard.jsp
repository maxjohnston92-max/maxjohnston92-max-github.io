<%--
  Created by IntelliJ IDEA.
  User: maxjo
  Date: 19/06/2026
  Time: 16:06
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page import="java.sql.*" %>--%>
<%--<%@ page import="db.DB" %>--%>

<%--<h2>Leaderboard</h2>--%>

<%--<table>--%>
<%--    <tr><th>User</th><th>Score</th><th>Date</th></tr>--%>

<%--    <%--%>
<%--        Connection conn = DB.getConnection();--%>
<%--        PreparedStatement stmt = conn.prepareStatement(--%>
<%--                "SELECT u.username, s.score, s.created_at " +--%>
<%--                        "FROM scores s JOIN users u ON s.user_id = u.id " +--%>
<%--                        "ORDER BY s.score DESC LIMIT 20"--%>
<%--        );--%>
<%--        ResultSet rs = stmt.executeQuery();--%>

<%--        while (rs.next()) {--%>
<%--    %>--%>
<%--    <tr>--%>
<%--        <td><%= rs.getString("username") %></td>--%>
<%--        <td><%= rs.getInt("score") %></td>--%>
<%--        <td><%= rs.getTimestamp("created_at") %></td>--%>
<%--    </tr>--%>
<%--    <%--%>
<%--        }--%>
<%--    %>--%>
<%--</table>--%>
<%@ page import="java.sql.*" %>
<%@ page import="db.DB" %>

<link rel="stylesheet" type="text/css" href="css/stylev3.css">

<!-- NAVBAR -->
<div class="navbar">
    <div class="nav-title">Human Firewall</div>

    <div class="nav-links">
        <a href="home.jsp">Home</a>
        <a href="quiz.jsp">Start Quiz</a>
        <a href="Scoreboard.jsp">High Scores</a>
        <a href="login.jsp">Login Page</a>
    </div>

    <div class="logo-box1">
        <img src="Images/LOGO.png" alt="Company Logo">
    </div>
</div>

<!-- PAGE CONTENT -->
<div class="page-container">

    <h1>Scoreboard</h1>
    <p>Here you can see how other people in your organisation are doing in their training!</p>

    <table class="score-table">
        <tr>
            <th>User</th>
            <th>Score</th>

        </tr>

        <%
            Connection conn = DB.getConnection();
            PreparedStatement stmt = conn.prepareStatement(
                    "SELECT u.username, s.score, s.created_at " +
                            "FROM scores s JOIN users u ON s.user_id = u.id " +
                            "ORDER BY s.score DESC LIMIT 20"
            );
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
        %>

        <tr>
            <td><%= rs.getString("username") %></td>
            <td><%= rs.getInt("score") %></td>

        </tr>

        <%
            }
        %>
    </table>

</div>
