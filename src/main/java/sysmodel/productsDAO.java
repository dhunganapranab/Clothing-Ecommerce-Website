package sysmodel;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class productsDAO {
	    private final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
	    private final String DB_URL = "jdbc:mysql://localhost:3306/webappcoursework";
	    private final String USERNAME = "root";
	    private final String PASSWORD = "";

	    private Connection conn = null;
	    private PreparedStatement stmt = null;
	    private ResultSet rs = null;

	    private static final String ADD_PRODUCT_QUERY = "INSERT INTO products (product_name, price, quantity) VALUES (?, ?, ?)";
	    private static final String DELETE_PRODUCT_QUERY = "DELETE FROM products WHERE product_id = ?";
	    private static final String GET_PRODUCT_QUERY = "SELECT * FROM products WHERE product_id = ?";
	    private static final String GET_ALL_PRODUCTS_QUERY = "SELECT * FROM products";

	    public productsDAO() {
	        try {
	            Class.forName(JDBC_DRIVER);
	            conn = DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);
	        } catch (ClassNotFoundException | SQLException e) {
	            e.printStackTrace();
	        }
	    }

	    public void addProduct(products products) {
	        try {
	            stmt = conn.prepareStatement(ADD_PRODUCT_QUERY);
	            stmt.setString(1, products.getProduct_name());
	            stmt.setDouble(2, products.getPrice());
	            stmt.setInt(3, products.getQuantity());
	            stmt.executeUpdate();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }

	    public void deleteProduct(int product_id) {
	        try {
	            stmt = conn.prepareStatement(DELETE_PRODUCT_QUERY);
	            stmt.setInt(1, product_id);
	            stmt.executeUpdate();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }

	    public products getProductById(int product_id) {
	        products product = null;
	        try {
	            stmt = conn.prepareStatement(GET_PRODUCT_QUERY);
	            stmt.setInt(1, product_id);
	            rs = stmt.executeQuery();
	            if (rs.next()) {
	                String product_name = rs.getString("product_name");
	                float price = rs.getFloat("price");
	                int quantity = rs.getInt("quantity");
	                product = new products(product_id, product_name, price, quantity);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return product;
	    }

	    public List<products> getAllProducts() {
	        List<products> products = new ArrayList<>();
	        try {
	            stmt = conn.prepareStatement(GET_ALL_PRODUCTS_QUERY);
	            rs = stmt.executeQuery();
	            while (rs.next()) {
	                int product_id = rs.getInt("product_id");
	                String product_name = rs.getString("product_name");
	                float price = rs.getFloat("price");
	                int quantity = rs.getInt("quantity");
	                products product = new products(product_id, product_name, price, quantity);
	                products.add(product);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return products;
	    }
	    
	    // Close the database connection
	    public void close() {
	        try {
	            if (rs != null) {
	                rs.close();
	            }
	            if (stmt != null) {
	                stmt.close();
	            }
	            if (conn != null) {
	                conn.close();
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	}


