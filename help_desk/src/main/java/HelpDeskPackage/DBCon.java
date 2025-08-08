package HelpDeskPackage;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBCon {

    private static String url = "jdbc:mysql://localhost:3306/helpdesk_db";
    private static String user = "root";
    private static String pass = "lakshan02"; // Put your MySQL root password if set
    private static Connection con;

    public static Connection getConnection() {
        
        try {
            // Load the JDBC driver (optional with newer versions)
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, user, pass);
            
        } catch (Exception e) {
            System.out.println("Database not Connect");
        }
        return con;
    }
}


