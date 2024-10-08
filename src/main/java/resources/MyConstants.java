package resources;

import java.io.File;

public class MyConstants {
	// Start Region: Database Configuration
	
	
	public static final String ADMIN = "admin";
	public static final String USER = "user";
	
//	public static final String IMAGE_DIR = "xampp\\tomcat\\webapps\\images\\";
//	public static final String IMAGE_DIR_SAVE_PATH = "C:" + File.separator + IMAGE_DIR;
	// End Region: Database Configuration
	
	// Start Region: Select Query
	public static final String CHECK_LOGIN_INFO = "SELECT username FROM user WHERE username = ?";
//	public static final String GET_ALL_INFO = "SELECT * FROM register";
//	public static final String GET_ALL_INFO_BY_ID = "SELECT * FROM register WHERE id = ?";
//	public static final String IS_USER = "SELECT role FROM register WHERE username = ?";
	
	// Start Region: Insert Query
	public static final String USER_REGISTER = "INSERT INTO user"
			+ "(first_name, last_name, username, password)"
			+ " VALUES(?,?,?,?)";
	// End Region: Insert Query
	
	// Start Region: Update Query
	public static final String UPDATE_USER_INFO = "UPDATE register SET first_name=?, "
				+ "last_name=?, username=?, role=? WHERE username=?";
	// End Region: Update Query
		
	// Start Region: Delete Query
	public static final String DELETE_USER = "DELETE FROM user WHERE username=?";
	// End Region: Delete Query

}
