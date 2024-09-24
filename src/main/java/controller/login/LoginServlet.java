package controller.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//
///**
// * Servlet implementation class LoginServlet
// */
import javax.servlet.http.HttpSession;

import controller.databaseConnection.DatabaseConnector;

//public class LoginServlet extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//       
//    /**
//     * @see HttpServlet#HttpServlet()
//     */
//    public LoginServlet() {
//        super();
//        // TODO Auto-generated constructor stub
//    }
//
//	
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//	}
//
//	/**
//	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}
//
//}
//
	@WebServlet("/LoginServlet")	

public class LoginServlet extends HttpServlet {
		private static final long serialVersionUID = 1L;
		private DatabaseConnector conn;

    public void init() {
        conn = new DatabaseConnector();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        PrintWriter out = response.getWriter();
//        RequestDispatcher dispatcher = null;
        
		/*
		 * if(username.equals("admin@admin") && password.equals("admin")){
		 * response.sendRedirect(request.getContextPath()+"/pages/adminPanel.jsp"); }
		 */
        

        try {
        	if (conn.userExists(username, password)) {
                // user exists, set session attribute and redirect to protected page
                HttpSession session = request.getSession();
                session.setAttribute("username", username);
                
    			
    			//setting session to expiry in 30 mins
    			session.setMaxInactiveInterval(30);

    			Cookie userName = new Cookie("username", username);
    			userName.setMaxAge(30);
    			response.addCookie(userName);
                response.sendRedirect("index.jsp");
            }
            
            else{
                // user does not exist, display error message
//                out.println( "Invalid username or password");
       
                request.setAttribute("status", "failed");
                request.getRequestDispatcher("login.jsp").forward(request, response);
                
            }
//            dispatcher
        } catch (SQLException e) {
            // handle database error
            e.printStackTrace();
            String errorMsg = "Database error";
            request.setAttribute("errorMsg", errorMsg);
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}

