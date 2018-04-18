package com.jackssparrowaviary.store;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

public class RegistrationDao {
	private DataSource dataSource;

	public RegistrationDao(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	// returns true if post was successful
	public boolean postNewRegistration(Registration registration) throws SQLException {
		
		Connection myConnection = null;
		PreparedStatement myStatement = null;
		int count = 0;
		boolean registrationSuccessful = false;
		
		try {
			// get connection from data source in /META-INF/context.xml
			myConnection = dataSource.getConnection();
			
			// create insert sql statement
			String sql = "INSERT INTO event (email, event_name) VALUES (?, ?)";
					
			// use connection to prepare statement
			myStatement = myConnection.prepareStatement(sql);
			
			// set prepared statement parameters
			myStatement.setString(1, registration.getEmail());
			myStatement.setString(2, registration.getEventName());
			
			// execute prepared statement
			count = myStatement.executeUpdate();
			if (count > 0) {
				registrationSuccessful = true;
			}
			
		}
		finally {
			close(myConnection, myStatement);
		}
		
		
		return registrationSuccessful;
	}


	public List<Registration> getRegisteredByEventName(String newEventName) throws SQLException {
		List<Registration> eventList = new ArrayList<>();
		
		Connection myConnection = null;
		PreparedStatement myStatement = null;
		ResultSet myResultSet = null;
		
		try {
			// get a connection
			myConnection = dataSource.getConnection();
			
			// create sql statement object
			String sql = "SELECT * FROM event WHERE event_name = ? ORDER BY event_name";
			myStatement = myConnection.prepareStatement(sql);
			
			// add parameter to ?
			myStatement.setString(1, newEventName);
			
			
			// execute query
			myResultSet = myStatement.executeQuery();
			
			while (myResultSet.next()) {
				int id = myResultSet.getInt("id");
				String email = myResultSet.getString("email");
				String eventName = myResultSet.getString("event_name");
				String registrationDate = myResultSet.getString("registration_date");
				
				Registration tempRegistration = new Registration(id, email, eventName, registrationDate);
				
				eventList.add(tempRegistration);
			}
			return eventList;
			
		}
		finally {
			close(myConnection, myStatement, myResultSet);
		}
	}
	
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

	private void close(Connection myConnection, PreparedStatement myStatement) {
		try {
			if (myConnection != null) {
				myConnection.close();
			}
			if (myStatement != null) {
				myStatement.close();
			}

		}
		
		catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
}
