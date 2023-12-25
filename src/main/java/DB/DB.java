package DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DB {

private static Connection conn;

public static Connection getConn() {
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/book3","root","raja9315");
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return conn;
	
}
}
