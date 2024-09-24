<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	// Connect to the database,
	try{
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/webappcoursework"; // Replace "mydb" with your actual database name
		String username = "root"; // Replace "root" with your actual database username
		String password = ""; // Replace "password" with your actual database password
		Connection conn = DriverManager.getConnection(url, username, password);
		
		// Handle edit form submission
		String editAction = request.getParameter("action");
		if (editAction != null && editAction.equals("edit")) {
		String fname = request.getParameter("first_name");
		String lname = request.getParameter("last_name");
		String userName = request.getParameter("username");
		String pass = request.getParameter("password");
		PreparedStatement stmt = conn.prepareStatement("UPDATE user SET first_name = ?, last_name = ?, password = ? WHERE username = ?");
		stmt.setString(1, fname);
		stmt.setString(2, lname);
		stmt.setString(3, pass);
		stmt.setString(4, userName);
		stmt.executeUpdate();
		stmt.close();
		response.sendRedirect("sysUsers.jsp");
		}
		
		// Handle delete form submission
		String deleteAction = request.getParameter("action");
		if (deleteAction != null && deleteAction.equals("delete")) {
		String userName = request.getParameter("username");
		PreparedStatement stmt = conn.prepareStatement("DELETE FROM user WHERE username = ?");
		stmt.setString(1, userName);
		stmt.executeUpdate();
		stmt.close();
		response.sendRedirect("sysUsers.jsp");
		}
	}catch(Exception e){
		 e.printStackTrace();
	} 

%>