package kr.co.wp.store.factory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {

   private static ConnectionFactory instance;
   
   private static final String DRIVER_NAME = "com.mysql.jdbc.Driver";
   private static final String URL = "jdbc:mysql://61.34.63.180:3306/webproject";
   private static final String USER_NAME = "root";
   private static final String PASSWORD = "bjworld21!";
   
   private ConnectionFactory() {
      try {
         Class.forName(DRIVER_NAME);
      } catch (ClassNotFoundException e) {
         e.printStackTrace();
      }
      
   }
   
   public static ConnectionFactory getInstance() {
      if(instance == null) {
         instance = new ConnectionFactory();
      }
      return instance;
      
   }
   public Connection createConnection() throws SQLException{
      return (Connection) DriverManager.getConnection(URL,USER_NAME, PASSWORD);
   }
}