<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Admin Login</title>
  </head>
  <body>
    <h1>Admin Login</h1>
    <%
      // Check if there's an error message in the query string
      String errorMessage = request.getParameter("msg");
      if (errorMessage != null && errorMessage.equals("invalid")) {
        out.println("<p style=\"color: red;\">Invalid username or password.</p>");
      }
    %>
    <form method="post" action="adminloginaction.jsp">
      <p>
        <label for="username">Username:</label>
        <input type="text" id="username" name="username">
      </p>
      <p>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password">
      </p>
      <p>
        <input type="submit" value="Login">
      </p>
    </form>
  </body>
</html>
