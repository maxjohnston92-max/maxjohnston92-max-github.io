<%--
  Created by IntelliJ IDEA.
  User: maxjo
  Date: 19/06/2026
  Time: 17:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Cyber Security Quiz</title>



  <!-- Link to your homepage JavaScript -->
  <script src="js/HomePage.js" defer></script>
</head>

<body>

<!-- Main container where JavaScript will load the homepage -->
<%--<div id="app"></div>--%>
<%--<div class="navbar">--%>
<%--  <div class="nav-left">--%>
<%--    <span class="logo-text">Human Firewall</span>--%>
<%--  </div>--%>

<%--  <div class="nav-right">--%>
<%--    <a href="index.jsp">Login Page</a>--%>
<%--    <a href="quiz.jsp">Start Quiz</a>--%>
<%--    <a href="Scoreboard.jsp">High Scores</a>--%>
<%--  </div>--%>
<%--</div>--%>

<div class="container">
  <link rel="stylesheet" type="text/css" href="css/stylev3.css">

  <div class="left-content">
    <h1>Human Firewall - Training Platform</h1>
    <p>Welcome to the Human Firewall training platform!</p>
    <p>Here you can participate in cybersecurity training to improve your awareness and understanding of cyber risks you face in your average work day!</p>
  </div>

<%--  <div class="right-content">--%>
<%--    <div class="logo-box1">--%>
<%--      <img src="Images/LOGO.png" alt="Company Logo">--%>
<%--    </div>--%>

    <div class="quiz-panel">
      <h2>Cybersecurity Quiz</h2>
      <p>Test your knowledge and track your score!</p>

      <button onclick="location.href='quiz.jsp'">Start Quiz</button>
      <button onclick="location.href='Scoreboard.jsp'">View High Scores</button>

    </div>
  </div>

</div>

</body>
</html>
