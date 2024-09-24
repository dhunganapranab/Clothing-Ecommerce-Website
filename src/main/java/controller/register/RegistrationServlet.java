package controller.register;
//import java.io.*;   
//import javax.servlet.*;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.*;
//import sysmodel.UserModel;
//import controller.databaseConnection.DatabaseConnector;
////import controller.dbconnection.DbConnection;
//import resources.MyConstants;
//import sysmodel.UserModel;
//import resources.MyConstants;
//import java.sql.*;
////@SuppressWarnings("serial")
//@WebServlet(asyncSupported = true, urlPatterns = { "/RegistrationServlet" })
////@WebServlet("/RegistrationServlet")
//public class RegistrationServlet extends HttpServlet {
//	private static final long serialVersionUID = 1L;
////    private DatabaseConnector dbConnector;
//
//    public void init() throws ServletException {
////        dbConnector = new DatabaseConnector(); // initialize database connector
//    }
//
//    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//    	PrintWriter out = response.getWriter();
//    	String firstName = request.getParameter("first_name");
//        String lastName = request.getParameter("last_name");
//        String username = request.getParameter("username");
//        String password = request.getParameter("password");
//        
//        boolean isValid = true;
//        
//        
//        
//        
//       
////        
////        if ( username == null || username.length() >4 ) {
////            isValid = false;
////            request.setAttribute("status", "usernameLess");
////            request.getRequestDispatcher("register.jsp").forward(request, response);
////        }
////        
////        if (password == null ||  password.length() > 6) {
////            isValid = false;
////            request.setAttribute("status", "passwordLess");
////            request.getRequestDispatcher("register.jsp").forward(request, response);
////
////        }
//        
//        
//        
//        // If input is valid, add user to database
////        if (isValid)
//        //out.println("input invalid");
////    			request.getRequestDispatcher("register.jsp").forward(request, response);
////    		}
////    		}
////    }}
////    		
////    		  if (con.addUser(MyConstants.USER_REGISTER,newUser)) {
////    			  out.println("success");
//////    	            response.sendRedirect("registration_success.jsp");
////    	        } else {
////    	        	out.println("salready existss");
//////    	            response.sendRedirect("registration_error.jsp");
////    	        }
//    	    
//    	
//    		
//    		
////            // create a new user model
////            
////
////            // add user to the database
////            if (con.addUser(MyConstants.USER_REGISTER, newUser)) {
////                out.println("success");
////            } else {
////            	 out.println("salready existss");
//////            	request.setAttribute("status", "alreadyexists");
//////                request.getRequestDispatcher("register.jsp").forward(request, response);;
////
////            	
//////                response.sendRedirect("registration_error.jsp");
////            }}
////            else {
////            	 out.println("input invalid");
////                // If input is invalid, redirect back to registration page with error message
//////                request.setAttribute("status", "invalidfield");
//////                request.getRequestDispatcher("register.jsp").forward(request, response);
////                
////            }
//        
//        
//        
//        
//    
//
////    public void destroy() {
////        con.closeConnection(); // close database connection
////    }
//



import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import controller.databaseConnection.DatabaseConnector;
//import model.User;
import resources.MyConstants;
import sysmodel.UserModel;

@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private DatabaseConnector conn;

    public void init() {
        conn = new DatabaseConnector();
    }

    
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	PrintWriter out = response.getWriter();
    	String firstName = request.getParameter("first_name");
        String lastName = request.getParameter("last_name");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        UserModel userModel = new UserModel(firstName, lastName, username, password);
        boolean isValid = true;
        
//        DatabaseConnector db = new databaseConnection();
        
        if (password == null ||  password.length() < 6) {
        isValid = false;
        request.setAttribute("status", "passwordLess");
        request.getRequestDispatcher("register.jsp").forward(request, response);

    }
    
        
        if(isValid =true) {
        
        	try {
                
            	if (conn.isUserAlreadyRegistered(username)) {
//            		out.println("username exists");
            		request.setAttribute("status", "alreadyExists");
                    request.getRequestDispatcher("register.jsp").forward(request, response);
            	}
            int rows = conn.addUser(MyConstants.USER_REGISTER, userModel);
       		 if(rows ==1){
//       			 out.println("userAdded");
       			request.setAttribute("status", "userAdded");
                request.getRequestDispatcher("login.jsp").forward(request, response);
       		 }
       		 else {
       			 out.println("noinput");
       		 }
            		
                
            } catch (SQLException e) {
                e.printStackTrace();
            }
        	
        }
        
    }
}

