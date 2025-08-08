package HelpDeskPackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class HelpDeskController {
	
	//connect DB
		private static boolean isSuccess;
		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;
		
			    //Get BY ID
		public static HelpDeskModel getTicketById(String Id) {
		    HelpDeskModel ticket = null;
		    
		    try {
		        int convertedID = Integer.parseInt(Id);
		        con = DBCon.getConnection();
		        stmt = con.createStatement();

		        // FIXED QUERY (added '=' and removed single quotes)
		        String sql = "SELECT * FROM ticket WHERE id = " + convertedID;

		        rs = stmt.executeQuery(sql);

		        if (rs.next()) {
		            int id = rs.getInt(1);
		            String studentId = rs.getString(2);
		            String name = rs.getString(3);
		            String email = rs.getString(4);
		            String contactNo = rs.getString(5);
		            String faculty = rs.getString(6);
		            String inqType = rs.getString(7);
		            String subject = rs.getString(8);
		            String inquiry = rs.getString(9);

		            ticket = new HelpDeskModel(id, studentId, name, email, contactNo, faculty, inqType, subject, inquiry);
		        }

		    } catch (Exception e) {
		        e.printStackTrace();
		    }

		    return ticket;
		}

				
				//get all data
				public static List<HelpDeskModel> getAllTickets(){
					
					ArrayList <HelpDeskModel> tickets = new ArrayList<>();
					
					try {
						//DBConnection
						con=DBCon.getConnection();
						stmt=con.createStatement();
						
						//query
						
						String sql = "Select * from ticket";
						
						rs = stmt.executeQuery(sql);
						
						while(rs.next()) {
						
							int id = rs.getInt(1);
							String studentId = rs.getString(2);
							String name = rs.getString(3);
							String email = rs.getString(4);
							String contactNo = rs.getString(5);
							String faculty = rs.getString(6);
							String inqType = rs.getString(7);
							String subject = rs.getString(8);
							String inquiry = rs.getString(9);
							
						
					HelpDeskModel HD = new HelpDeskModel(id, studentId, name, email,contactNo, faculty,inqType, subject, inquiry);
						tickets.add(HD);
						
						}
					}
					
					catch(Exception e) {
						e.printStackTrace();
					}
					return tickets;
					
				}
				
				
				
				
				
}
				
