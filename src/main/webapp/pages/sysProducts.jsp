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
  ResultSet rs = stmt.executeQuery("SELECT product_name,price,quantity,category_name FROM products JOIN categories ON products.category_id = categories.category_id;");
  %>
 
 <!DOCTYPE html>
<html>
  <head>
    <title>System Products</title>
  </head>
  <body>
    <h1>System Products</h1>
    <table border="1">
      <tr>
        <th>Product_Name</th>
        <th>Price</th>
        <th>Quantity</th>
        <th>Category</th>
        <th>Add Products</th>
        <th>Delete Data</th>
      </tr>
      <% while (rs.next()) {
        String prodName = rs.getString("product_name");
        String Price = rs.getString("price");
        String Quantity = rs.getString("quantity");
        String Category = rs.getString("category_name");
      %>
      <tr>
        <td><%=prodName%></td>
        <td><%=Price%></td>
        <td><%=Quantity%></td>
        <td><%=Category%></td>
        <td>
          <form action="sysProdAction.jsp" method="post">
            <input type="hidden" name="username" value="<%=prodName%>">
            <input type="hidden" name="action" value="edit">
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