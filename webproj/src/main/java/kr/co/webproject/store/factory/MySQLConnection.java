package kr.co.webproject.store.factory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLConnection {

	private static MySQLConnection instance;
	
	private static final String DRIVER_NAME = "com.mysql.jdbc.Driver";
	private static final String URL = "jdbc:mysql://61.34.63.180:3306/webproject";
	private static final String USER_NAME = "root";
	private static final String PASSWORD = "bjworld21!";
	
	private MySQLConnection() throws Exception {
		try {
			Class.forName(DRIVER_NAME);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
	}
	
}