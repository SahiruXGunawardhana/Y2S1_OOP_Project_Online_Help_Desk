package HelpDeskPackage;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class TicketReplyController {
	
	//connect DB
		private static boolean isSuccess;
		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;
		
		//Insert Data Function
			public static boolean insertdata (String ticketId, String reply) {
				
				boolean isSuccess = false;
				
				try {
					//DB connection call
					con=DBCon.getConnection();
					stmt = con.createStatement();
					
					//SQL query 
					String sql = "insert into reply values(0,'"+ticketId+"','"+reply+"')";
					int rs = stmt.executeUpdate(sql);
					
					if(rs>0) {
						isSuccess = true;
					}
					else {
						isSuccess = false;
					}
				}catch(Exception e) {
				e.printStackTrace();
				}
				
			 return isSuccess;
		}
			
		
			//Get BY ID
			
			public static List<TicketReplyModel> getById(String Id)
			{
				
				int convertedID = Integer.parseInt(Id);
				
				ArrayList <TicketReplyModel> ticket = new ArrayList<>();
				
				try {
					//DBConnection
					con=DBCon.getConnection();
					stmt=con.createStatement();
					
					//query
					
					String sql = "Select * from reply where id '"+convertedID+"'";
					
					rs = stmt.executeQuery(sql);
					
					while(rs.next()) {
					
					int id = rs.getInt(1);
					int ticketId = rs.getInt(2);
					String reply = rs.getString(3);
					
					TicketReplyModel TR = new TicketReplyModel(id,ticketId,reply);
					ticket.add(TR);
					
					}
				}
				
				catch(Exception e) {
					e.printStackTrace();
				}
				return ticket;
			}
				
		
			//get all data
			public static List<TicketReplyModel> getAllReplies(){
				
				ArrayList <TicketReplyModel> tickets = new ArrayList<>();
				
				try {
					//DBConnection
					con=DBCon.getConnection();
					stmt=con.createStatement();
					
					//query
					
					String sql = "Select * from reply";
					
					rs = stmt.executeQuery(sql);
					
					while(rs.next()) {
					
						int id = rs.getInt(1);
						int ticketId = rs.getInt(2);
						String reply = rs.getString(3);
					
						TicketReplyModel TR = new TicketReplyModel(id,ticketId,reply);
						tickets.add(TR);
					}
				}
				
				catch(Exception e) {
					e.printStackTrace();
				}
				return tickets;
				
			}
			
			
			//update data
			public static boolean updatedata(String id,String ticketId, String reply) {
				
				try {
					//DBConnection
					con=DBCon.getConnection();
					stmt=con.createStatement();
					
					//SQL query
					String sql = "update reply set reply='"+reply+"' "
							+"Where id='"+id+"'";
					
					int rs = stmt.executeUpdate(sql);
					
					if(rs>0) {
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
			
			//Delete data
			
			public static boolean deletedata(String id) {
				int convID = Integer.parseInt(id);
				
				try {
					//DBConnection
					con=DBCon.getConnection();
					stmt=con.createStatement();
					
					//SQL query
					String sql = "delete from reply Where id='"+convID+"'";
					
					int rs = stmt.executeUpdate(sql);
					
					if(rs>0) {
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
