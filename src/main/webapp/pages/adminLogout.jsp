<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>

<%
    // Get the current session
    HttpSession Session = request.getSession(false);
    
    // Invalidate the session if it exists
    if (session != null) {
        session.invalidate();
    }
    %>
    <html>
<body>
	<p style="color:red;font:Bold;">You have logged out successfully.</p>
	<a href="../login.jsp"><button>OK</button></a>
</body>
</html>
     