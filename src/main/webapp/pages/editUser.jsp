<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.servlet.http.*" %>
<%
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/webappcoursework"; // Replace "mydb" with your actual database name
String username = "root"; // Replace "root" with your actual database username
String password = ""; // Replace "password" with your actual database password
Connection conn = DriverManager.getConnection(url, username, password);

// Retrieve the list of users from the database
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery("SELECT * FROM user");
%>
<%
if(rs.next()) {
String userName= rs.getString("username");
%>

<!DOCTYPE html>
<html>
  <head>
    <title>Edit User</title>
  </head>
  <body>
    <h1>Edit User</h1>
    <form action="sysUserAction.jsp" method="post">
      <label for="firstName">First Name:</label>
      <input type="text" name="firstName"><br>
      <label for="lastName">Last Name:</label>
      <input type="text" name="lastName"><br>
      <input type="hidden" name="username" value="<%=userName%>">
      <label for="password">Password:</label>
      <input type="text" name="password"><br>
      <input type="hidden" name="action" value="edit">
      <input type="submit" value="Save Changes">
    </form>
  </body>
</html>
<%
}
%>