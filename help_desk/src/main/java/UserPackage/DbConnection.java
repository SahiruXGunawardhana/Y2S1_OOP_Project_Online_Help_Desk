package UserPackage;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection {
	private static String url = "jdbc:mysql://localhost:3306/helpdesk_db";
	private static String user = "root";
	private static String pass = "0712010867";
	private static Connection con;
	
	
	public static Connection getConnection () {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url,user,pass);
		}catch(Exception e){
			System.out.println("DataBase Not Connected ! ");
		}
		return con;
	}
}
