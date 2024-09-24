package controller.databaseConnection;

import java.io.PrintWriter;
import java.sql.*;

import resources.MyConstants;
import sysmodel.UserModel;

public class DatabaseConnector {
    private  Connection conn;

    public DatabaseConnector() {
        try {
            Class.forName("com.mysql.jdbc.Driver"); // load JDBC driver
            String url = "jdbc:mysql://localhost:3306/webappcoursework"; // database URL
            String user = "root"; // database user name
            String password = ""; // database password
            conn = DriverManager.getConnection(url, user, password); // establish database connection
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    
    
  
    
    
    
    public int addUser( String query,UserModel userModel) throws SQLException {
        
//            String sql = "INSERT INTO user (first_name, last_name, username, password) VALUES (?, ?, ?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setString(1, userModel.getFirstName());
            pstmt.setString(2, userModel.getLastName());
            pstmt.setString(3, userModel.getusername());
            pstmt.setString(4, userModel.getPassword());
            int rows = pstmt.executeUpdate();
            
//            pstmt.close();
//            return (rows > 0);
//            int rows = pstmt.executeUpdate();
			if(rows>=0) return 1;
			else return 0;
       
    }
    
    
    
    
    
    
    
    
    
    
    
   
	
    
    
    public Boolean isUserAlreadyRegistered(String username) throws SQLException {
//		Connection dbConnection = getConnection();
		
		
				String query = "SELECT * FROM user WHERE username=?";
	            PreparedStatement statement = conn.prepareStatement(query);
	            statement.setString(1, username);
	            ResultSet result = statement.executeQuery();
	            return result.next();
			}
		

    
    
    public boolean userExists(String username, String password) throws SQLException {
        String query = "SELECT * FROM user WHERE username = ? AND password = ?";
        PreparedStatement statement = conn.prepareStatement(query);
        statement.setString(1, username);
        statement.setString(2, password);
        ResultSet result = statement.executeQuery();
        return result.next();
    }
    
    
//	Start region Delete operation
	public Boolean deleteUser(String query, String username) throws SQLException {
		
		
		
				PreparedStatement statement = conn.prepareStatement(query);
				statement.setString(1, username);
				int result = statement.executeUpdate();
				if(result>=0)return true;
				else return false;
			
		
	}
	//	End region Delete operation
    	 
        // ...
     
//        public static boolean isUserExists(String username) {
//            boolean exists = false;
//     
//            try(C
//            		PreparedStatement pst = conn.prepareStatement(MyConstants.CHECK_LOGIN_INFO);)
//            
//     
//                pst.setString(1, username);
//     
//                try (ResultSet rs = pst.executeQuery()) {
//                    if (rs.next()) {
//                        exists = true;
//                    }
//                }
//             catch (SQLException ex) {
//                // handle exception
//            }
//     
//            return exists;
//        }
//     
//        // ...
//    
//
//    
//    
//    
//    public Boolean isUserAlreadyRegistered(String username) {
//		boolean exists = false;
//		if(conn != null) {
//			try {
//				PreparedStatement pst = conn.prepareStatement(MyConstants.CHECK_LOGIN_INFO);
//				pst.setString(1, username);
//				try (ResultSet rs = pst.executeQuery()) {
//                    if (rs.next()) {
//                        exists = true;
//                    }
//                }
//             catch (SQLException ex) {
//                // handle exception
//            }
//			}
//            return exists;
//			
//			}catch (SQLException e) { 
//				return null; }
//			}
//	
				
						
	
    
    

    public void closeConnection() {
        try {
            conn.close(); // close database connection
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

	
}
