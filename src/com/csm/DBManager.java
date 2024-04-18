package com.csm;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBManager {
	public static Connection getConnection() throws ClassNotFoundException, SQLException{
		
		Connection connection = null;
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		String dbUrl = "jdbc:mysql://localhost:3306/gwwb";
		
		String dbUser = "root";
		
		String dbPassword = "pathein2017";
		
		connection = DriverManager.getConnection(dbUrl,dbUser,dbPassword);
		
		return connection;
	}
}
