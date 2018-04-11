package com.jackssparrowaviary.store;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

public class ProductDao {
	private DataSource dataSource;
	
	public ProductDao(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	// get products (that have quantity > 0)
	public List<Product> getProductsByName() throws Exception {
		List<Product> productList = new ArrayList<>();
		
		Connection myConnection = null;
		Statement myStatement = null;
		ResultSet myResultSet = null;
		
		try {
			// get a connection
			myConnection = dataSource.getConnection();
			
			// create sql statement object
			String sql = "SELECT * FROM product WHERE quantity > 0 ORDER BY product_name";
			myStatement = myConnection.createStatement();
			
			// execute query
			myResultSet = myStatement.executeQuery(sql);
			
			while (myResultSet.next()) {
				int id = myResultSet.getInt("id");
				String productName = myResultSet.getString("product_name");
				double price = myResultSet.getDouble("price");
				int quantity = myResultSet.getInt("quantity");
				
				Product tempProduct = new Product(id, productName, price, quantity);
				
				productList.add(tempProduct);
			}
			return productList;
			
		}
		finally {
			close(myConnection, myStatement, myResultSet);
		}
		
	}
	
	// get products (that have quantity > 0) SORT by price
	public List<Product> getProductsByPrice() throws Exception {
		List<Product> productList = new ArrayList<>();
		
		Connection myConnection = null;
		Statement myStatement = null;
		ResultSet myResultSet = null;
		
		try {
			// get a connection
			myConnection = dataSource.getConnection();
			
			// create sql statement object
			String sql = "SELECT * FROM product WHERE quantity > 0 ORDER BY price";
			myStatement = myConnection.createStatement();
			
			// execute query
			myResultSet = myStatement.executeQuery(sql);
			
			while (myResultSet.next()) {
				int id = myResultSet.getInt("id");
				String productName = myResultSet.getString("product_name");
				double price = myResultSet.getDouble("price");
				int quantity = myResultSet.getInt("quantity");
				
				Product tempProduct = new Product(id, productName, price, quantity);
				
				productList.add(tempProduct);
			}
			return productList;
			
		}
		finally {
			close(myConnection, myStatement, myResultSet);
		}
		
	}
	
	public void updateQuantity(Product tempProduct) throws SQLException {
		int cartItemId = tempProduct.getId();
		
		Connection myConnection = null;
		PreparedStatement myStatement = null;
		try {
			myConnection = dataSource.getConnection();
			String sql = "UPDATE product SET quantity = quantity - 1 WHERE id = ?";
			myStatement = myConnection.prepareStatement(sql);
			myStatement.setInt(1, cartItemId);
			myStatement.execute();
		}
		finally {
			close(myConnection, myStatement, null);
		}
	}
	//  quantity (when customer adds to cart and checks out [subtracts quantity from total])

	private void close(Connection myConnection, Statement myStatement, ResultSet myResultSet) {
		try {
			if (myConnection != null) {
				myConnection.close();
			}
			if (myStatement != null) {
				myStatement.close();
			}
			if (myResultSet != null) {
				myResultSet.close();
			}
		}
		
		catch (Exception e) {
			e.printStackTrace();
		}
	}

}
