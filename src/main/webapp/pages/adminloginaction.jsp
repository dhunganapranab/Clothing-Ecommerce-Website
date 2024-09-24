<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javax.servlet.http.*, java.io.*" %>
<%
  // Get the parameters from the request
  String username = request.getParameter("username");
  String password = request.getParameter("password");

  // Check the username and password against the predefined admin credentials
  if ("admin".equals(username) && "admin123".equals(password)) {

    // Create a session for the admin
    HttpSession Session = request.getSession(true);
    session.setAttribute("username", username);

    // Redirect to the admin dashboard page
    response.sendRedirect("adminPanel.jsp");

  } else {
    // If the credentials are invalid, redirect back to the login page with an error message
    response.sendRedirect("adminlogin.jsp?msg=invalid");
  }
%>
