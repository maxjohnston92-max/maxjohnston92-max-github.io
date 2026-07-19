<%--
  Created by IntelliJ IDEA.
  User: maxjo
  Date: 19/06/2026
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form action="Login" method="post">
  <h2>Sign In</h2>
  <input type="text" name="username" placeholder="Username" required>
  <input type="password" name="password" placeholder="Password" required>
  <button type="submit">Login</button>
</form>
<% if (request.getAttribute("message") != null) { %>
<script>
  alert("<%= request.getAttribute("message") %>");
</script>
<% } %>
