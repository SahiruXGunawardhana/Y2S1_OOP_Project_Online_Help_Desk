package UserPackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserController5414 {
	private static boolean isSuccess;
    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;

    public static boolean insertdata(String name, String username, String password, String gmail,String phone) {
        boolean isSuccess = false;
        try {
            con = DbConnection.getConnection();
            stmt = con.createStatement();

            String sql = "Insert into  register (name, username, password, gmail, phone) values ('" + name + "', '" + username + "', '" + password + "', '" + gmail + "', '" + phone + "')";

            int rs = stmt.executeUpdate(sql);
            if (rs > 0) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return isSuccess;
    }
    
    public static List<UserModel5414> loginValidate (String username,String password){
    	
    	ArrayList<UserModel5414> user = new ArrayList<>();
    	
    	try {
            con = DbConnection.getConnection();
            stmt = con.createStatement();
            
            String sql = "select * from register where username='"+username+"' and password='"+password+"' ";
            
            rs = stmt.executeQuery(sql);
            
            if(rs.next()) {
            	int userID = rs.getInt(1);
				String name = rs.getString(2);
				String usname = rs.getString(3);
				String pwd = rs.getString(4);
				String gmail = rs.getString(5);
				String phone = rs.getString(6);
				
				UserModel5414 usr = new UserModel5414(userID, name, usname, pwd, gmail, phone);
				user.add(usr);
            }
            
    		} catch (Exception e) {
            e.printStackTrace();
    		}
        	return user;
    }
    
    public static boolean checkPwd(String password) {
    	boolean isSuccess = false;
    	try {
    		con = DbConnection.getConnection();
        	stmt = con.createStatement();
        	
        	String sql = "select * from register where password='"+password+"'";
        	
        	rs = stmt.executeQuery(sql);
        	if(rs.next()) {
        		isSuccess = true;
        	}
        	else {
        		isSuccess = false;     
        	}	
    	}catch(Exception e){
    		e.printStackTrace();
    	}
    	return isSuccess;
    }
   
    public static boolean updateprofile(String userID, String name,  String username, String password,  String gmail, String phone) {

	 	try {
	 		con = DbConnection.getConnection();
	         stmt = con.createStatement();
	         
	         //sql query
	         String sql="update register set name='" + name + "', username='" + username + "', password='" + password + "', gmail='" + gmail + "', phone='" + phone + "' WHERE userID='" + userID + "'";
	         
	         int rs = stmt.executeUpdate(sql);
	         if (rs > 0) {
	             isSuccess = true;
	         } else {
	             isSuccess = false;
	         }  
	 	 } catch (Exception e) {
	          e.printStackTrace();
	      }
	      return isSuccess;
	  }
  //GetById
  	public static List<UserModel5414> getById (String userId){
  			
  		int convertedID = Integer.parseInt(userId);
  			
  		ArrayList <UserModel5414> user = new ArrayList<>();
  			
  		try {
  			//DBConnection
  			con = DbConnection.getConnection();
  			stmt = con.createStatement();
  			
  			//Query
  			String sql = "select * from register where userID='"+convertedID+"'";
  			
  			rs = stmt.executeQuery(sql);
  				
  				while(rs.next()) {
  					int userID = rs.getInt(1);
  					String name = rs.getString(2);
  					String username = rs.getString(3);
  					String password = rs.getString(4);
  					String gmail = rs.getString(5);
  					String phone = rs.getString(6);

  					UserModel5414 usr = new UserModel5414(userID, name, username, password, gmail, phone);
  					user.add(usr);
  				}
  			}catch(Exception e) {
  				e.printStackTrace();
  			}
  			return user;
  		}
  	public static boolean deleteprofile(String userID) {
  	 	
  	 	int conID = Integer.parseInt(userID);
  	 	try {
  	 		con = DbConnection.getConnection();
  	         stmt = con.createStatement();
  	         
  	         //sql query
  	         String sql="delete from register where userID='"+conID+"' ";
  	         
  	         int rs = stmt.executeUpdate(sql);
  	         if (rs > 0) {
  	             isSuccess = true;
  	         } else {
  	             isSuccess = false;
  	         }   
  	         
  	 	 } catch (Exception e) {
  	          e.printStackTrace();
  	      }
  	      return isSuccess;
  	 }	
}
