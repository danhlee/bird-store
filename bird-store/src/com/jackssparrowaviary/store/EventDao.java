package com.jackssparrowaviary.store;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

public class EventDao {
	private DataSource dataSource;

	public EventDao(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	
	public List<Event> getEventCount() throws SQLException {
		
		List<Event> eventCountList = new ArrayList<>();
		
		Connection myConnection = null;
		Statement myStatement = null;
		ResultSet myResultSet = null;
		
		try {
			// get a connection
			myConnection = dataSource.getConnection();
			
			// create sql statement object
			String sql = "SELECT event_name, count(*) FROM event GROUP BY event_name";
			myStatement = myConnection.createStatement();
			
			// execute query
			myResultSet = myStatement.executeQuery(sql);
			
			// count or count(*)?
			// Answer: count(*) or use alias
			while (myResultSet.next()) {
				String eventName = myResultSet.getString("event_name");
				int count = myResultSet.getInt("count(*)");
		
				Event tempEvent = new Event(eventName, count);
				
				eventCountList.add(tempEvent);
			}
			return eventCountList;
			
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
}
