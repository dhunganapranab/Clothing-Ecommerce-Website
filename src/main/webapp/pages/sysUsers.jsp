<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*, javax.servlet.http.*" %>
<%

  
  // Connect to the database
  Class.forName("com.mysql.jdbc.Driver");
  String url = "jdbc:mysql://localhost:3306/webappcoursework"; // Replace "mydb" with your actual database name
  String username = "root"; // Replace "root" with your actual database username
  String password = ""; // Replace "password" with your actual database password
  Connection conn = DriverManager.getConnection(url, username, password);
 
  
  // Retrieve the list of users from the database
  Statement stmt = conn.createStatement();
  ResultSet rs = stmt.executeQuery("SELECT * FROM user");
  %>
 
 <!DOCTYPE html>
<html>
  <head>
    <title>System Users</title>
  </head>
  <body>
    <h1>System Users</h1>
    <table border="1">
      <tr>
        <th>First Name</th>
        <th>Last Name</th>
        <th>User Name</th>
        <th>Edit Data</th>
        <th>Delete Data</th>
      </tr>
      <% while (rs.next()) {
        String fname = rs.getString("first_name");
        String lname = rs.getString("last_name");
        String userName = rs.getString("username");
        String pass = rs.getString("password");
      %>
      <tr>
        <td><%=fname%></td>
        <td><%=lname%></td>
        <td><%=userName%></td>
        <td>
          <form action="sysUserAction.jsp" method="post">
            <input type="hidden" name="username" value="<%=userName%>">
            <input type="hidden" name="action" value="delete">
            <input type="submit" value="Delete">
          </form>
        </td>
        <td>
          <a href="editUser.jsp"><button>Edit</button></a>
        </td>
      </tr>
      <% } rs.close(); %>
    </table>
  </body>
</html> 

