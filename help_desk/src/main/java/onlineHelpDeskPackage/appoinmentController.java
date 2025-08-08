package onlineHelpDeskPackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

//import bookShopPackage.DBconnection;
//import onlineHelpDeskPackage.appoinmentModel;
//import onlineHelpDeskPackage.DBConnection;

//import bookShopPackage.DBconnection;

public class appoinmentController {
	//connect database
			private static boolean isSuccess;
			private static Connection con = null;
			private static Statement stmt = null;
			private static ResultSet rs = null;
			
			//Insert data function
			public static boolean insertdata(String stName, String stID, String stEmail, String lecName, String lecID, String reason, String mode) {
			    boolean isSuccess = false;
			    try {
			        // DB connection
			        con = DBConnection.GetConnection();
			        stmt = con.createStatement();
			        if (con == null) {
			            System.out.println("Connection failed. 'con' is null.");
			            return false;
			        }

			        // Correct SQL
			        String sql = "INSERT INTO appoinment(stName, stID, stEmail, lecName, lecID, reason, mode) VALUES('" + stName + "', '" + stID + "', '" + stEmail + "', '" + lecName + "', '" + lecID + "','" + reason + "','" + mode + "')";
			        int rs = stmt.executeUpdate(sql);

			        isSuccess = rs > 0;
			    } catch (Exception e) {
			        System.out.println("Database Not Connect !");
			        e.printStackTrace(); // This shows you the real error
			    }
			    return isSuccess;
			}
			//get by id
			public static List<appoinmentModel> getById (String appID1){
				int covertedID = Integer.parseInt(appID1);
				ArrayList <appoinmentModel> appoinment = new ArrayList<>();
				
				try {
					// DB connection
			        con = DBConnection.GetConnection();
			        stmt = con.createStatement();
			        
			        //Query
			        String sql = "select *from appoinment where appID= '"+covertedID+"'";
			        rs = stmt.executeQuery(sql);
			        
			        while(rs.next()) {
			        	int appID = rs.getInt(1);
			        	String stName = rs.getString(2);
			        	String stID = rs.getString(3);
			        	String stEmail = rs.getString(4);
			        	String lecName = rs.getString(5);
			        	String lecID = rs.getString(6);
			        	String reason = rs.getString(7);
			        	String mode = rs.getString(8);
			        	
			        	appoinmentModel bk = new appoinmentModel(appID,stName, stID, stEmail, lecName, lecID, reason, mode);
			        	appoinment.add(bk);
			        }
				}
				catch(Exception e) {
					e.printStackTrace();
					
				}
				return appoinment;
			}
			
			//GetAll Data
			public static List<appoinmentModel>getAllappoinment(){
				ArrayList <appoinmentModel> appoinments = new ArrayList<>();
				
				try {
					// DB connection
			        con = DBConnection.GetConnection();
			        stmt = con.createStatement();
			        
			        //Query
			        String sql = "select *from appoinment";
			        rs = stmt.executeQuery(sql);
			        
			        while(rs.next()) {
			        	int appID = rs.getInt(1);
			        	String stName = rs.getString(2);
			        	String stID = rs.getString(3);
			        	String stEmail = rs.getString(4);
			        	String lecName = rs.getString(5);
			        	String lecID = rs.getString(6);
			        	String reason = rs.getString(7);
			        	String mode = rs.getString(8);
			        	
			        	appoinmentModel bk = new appoinmentModel(appID,stName, stID, stEmail, lecName, lecID, reason, mode);
			        	appoinments.add(bk);
			        }
				}
				catch(Exception e) {
					e.printStackTrace();
					
				}
				return appoinments;
				
			}
			//Update data
			public static boolean updatedata(String appID, String stName, String stID, String stEmail, String lecName, String lecID,String reason, String mode) {
				try {
					// DB connection
			        con = DBConnection.GetConnection();
			        stmt = con.createStatement();
			        
			        //SQL Query
			        String sql ="update appoinment set stName='"+stName+"',stID='"+stID+"',stEmail='"+stEmail+"',lecName='"+lecName+"',lecID='"+lecID+"',reason='"+reason+"',mode='"+mode+"'"
			        		+"where appID='"+appID+"'";
			        int rs = stmt.executeUpdate(sql);
			        
			        if(rs > 0) {
			        	isSuccess = true;
			        }
			        else {
			        	isSuccess = false;
			        }
			        		
				}
				catch(Exception e) {
					e.printStackTrace();
					
				}
				return isSuccess;
			}
				
				//Delete Data
				public static boolean deletedata(String appID) {
					int convID = Integer.parseInt(appID);
					try {
					
						//DBConnection
						
						con = DBConnection.GetConnection();
						stmt = con.createStatement();
						
						//SQL query
						String sql = "delete from appoinment where appID='"+convID+"'";
						int rs = stmt.executeUpdate(sql);
				        
				        if(rs > 0) {
				        	isSuccess = true;
				        }
				        else {
				        	isSuccess = false;
				        }
				        		
					}
					
					catch(Exception e) {
						e.printStackTrace();
						
					}
					return isSuccess;
					
				}
}
