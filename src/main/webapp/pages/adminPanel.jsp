<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.servlet.http.*" %>
<%
 // Check if the user is an admin (you'll need to replace "admin" with the actual admin username)
  HttpSession Session = request.getSession(false);
  if (Session == null || Session.getAttribute("username") == null || !Session.getAttribute("username").equals("admin")) {
    response.sendRedirect("adminlogin.jsp");
  }
 %>
  
<head>
<title>welcome</title>
</head>
<body>
<h1>Admin Panel</h1>
<label>
 See the users connected with system.
</label>
<br>
<a href="sysUsers.jsp"><button>See Users</button></a>
<label>
<br>
See products in the system.
</label>
<br>
<a href="sysProducts.jsp"><button>See Products</button></a>
<br>
</body>
</html>
 