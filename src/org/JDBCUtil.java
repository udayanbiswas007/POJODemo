package org;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCUtil {
	private static Connection connection=conn();

 private static Connection conn() {
	 
	 try {
		 Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/db2","root", "");
		
			return connection;
		
	} catch (SQLException e) {
		// TODO: handle exception
		System.out.println(e);
		return null;
	}
	 catch (ClassNotFoundException e) {
			// TODO: handle exception
		 System.out.println(e);
			return null;
		}
	 
		
	 
 
	
}

public static Connection getConnection() {
	return connection;
}
}
