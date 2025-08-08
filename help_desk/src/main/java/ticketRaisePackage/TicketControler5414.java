package ticketRaisePackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class TicketControler5414 {
	//Connect DB
		private static boolean isSuccess;
		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;
		
		//data Insertion Function
		public static boolean insertdata (String studentId, String name,String email, String contactNo, String faculty,String inqType,String subject,String inquiry) {
			
			boolean isSuccess = false;
			
			try {
				//DB CONNECTION CALL
				con = DbConnection.getConnection();
				stmt = con.createStatement();
				
				//SQL QUERY
				String sql = "insert into ticket values(0,'"+studentId+"','"+name+"','"+email+"','"+contactNo+"','"+faculty+"','"+inqType+"','"+subject+"','"+inquiry+"')";
				int rs = stmt.executeUpdate(sql);//get number of raws affected 
				if(rs > 0) {
					isSuccess = true;
				}else {
					isSuccess = false;
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			return isSuccess;
			
		}
		//GetAll ticket Data
		public static List<TicketModel5414> getAllTicket(){
			ArrayList <TicketModel5414> tickets = new ArrayList<>();
			try {
				//DBConnection
				con = DbConnection.getConnection();
				stmt = con.createStatement();
				
				//Query
				String sql = "select * from ticket";
				
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
						
						TicketModel5414 tk = new TicketModel5414(id, studentId, name, email, contactNo, faculty, inqType, subject, inquiry);
						tickets.add(tk);
					}
				}catch(Exception e) {
					e.printStackTrace();
				}
				return tickets;
		}
		
		//update data
		public static boolean updateTicketdata(String id, String studentId, String name, String email, String contactNo, String faculty, String inqType, String subject, String inquiry){
			try {
				//DBConnection
				con = DbConnection.getConnection();
				stmt = con.createStatement();
				
				//SQL Query
				String sql = "update ticket set studentId='"+studentId+"',name='"+name+"',email='"+email+"',contactNo='"+contactNo+"',faculty='"+faculty+"',`inqType`='"+inqType+"',subject='"+subject+"',inquiry='"+inquiry+"'where id='"+id+"'";
				
				int rs = stmt.executeUpdate(sql);
				if(rs > 0) {
					isSuccess = true;
				}else {
					isSuccess = false;
				}
			}catch(Exception e){
				e.printStackTrace();
			}
			return isSuccess;
		}
		//Delete data
		public static boolean deleteTicketdata(String id) {
			int convID = Integer.parseInt(id);
			try {
				//DBconnection
				con = DbConnection.getConnection();
				stmt = con.createStatement();
				
				String sql = "delete from ticket where id='"+convID+"'";
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0) {
					isSuccess = true;
				}else {
					isSuccess = false;
				}
			}
			catch(Exception e){
				e.printStackTrace();
			}
			return isSuccess;
		}
		
		
}
