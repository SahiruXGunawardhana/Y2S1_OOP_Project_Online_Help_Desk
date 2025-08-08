package ManageArticles;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import ManageArticles.DBConnection;
import ManageArticles.ManageKbModel;

public class ManageKbController {
	
// Connect Data Base
    private static boolean isSuccess;
    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;

	
// Insert data (Add Article)
    
    public static boolean insertdata( String article_title, String article_content, String article_category) {
    	  boolean isSuccess = false;
          try {
        	  //DB Connect call
              con = DBConnection.getConnection();
              stmt = con.createStatement();

              //SQL Quary
              String sql = "INSERT INTO manageKb (article_title,article_content,article_category) VALUES ('" 
                          + article_title + "', '" + article_content + "', '" + article_category + "')";

              int result = stmt.executeUpdate(sql);
              if (result > 0) {
                  isSuccess = true;
              } else {
                  isSuccess = false;
              }
          } catch (Exception e) {
              e.printStackTrace();
          }
          return isSuccess;
      }
    	
    



// View Article


public static List<ManageKbModel> getById (String Id){
	
	int convertedID = Integer.parseInt(Id);
	
	ArrayList <ManageKbModel> kb = new ArrayList<>();
	
	try {
		//DBConnection
		con = DBConnection.getConnection();
        stmt = con.createStatement();
        
        //Query
        String sql = "select * from managekb where id '"+convertedID+"'";
        
        rs = stmt.executeQuery(sql);
        
        while(rs.next()) {
        	int id = rs.getInt(1); // number one shows colume in DB
        	String article_title = rs.getString(2);
        	String article_content = rs.getString(3);
        	String article_category = rs.getString(4);
        	
        	ManageKbModel bk = new ManageKbModel(id,article_title,article_content,article_category);
        	kb.add(bk);
        }
	

	 } catch (Exception e) {
        e.printStackTrace();
    }
    return kb;
}


//get All data

  public static List<ManageKbModel>getAllArticle (){
	  ArrayList <ManageKbModel> Articles = new ArrayList<>();
	  try {
			//DBConnection
			con = DBConnection.getConnection();
	        stmt = con.createStatement();
	        
	        //Query
	        String sql = "select * from managekb ";
	        
	        rs = stmt.executeQuery(sql);
	        
	        while(rs.next()) {
	        	int id = rs.getInt(1); // number one shows colume in DB
	        	String article_title = rs.getString(2);
	        	String article_content = rs.getString(3);
	        	String article_category = rs.getString(4);
	        	
	        	ManageKbModel bk = new ManageKbModel(id,article_title,article_content,article_category);
	        	Articles.add(bk);
	        }
		

		 } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return Articles;
	}
	  
  


//Update Article

	public static boolean updateArticle(String id,String article_title,String article_content,String article_category) {
		 try {
				//DBConnection
				con = DBConnection.getConnection();
		        stmt = con.createStatement();
		        
		        //SQL Query
		        String sql = "update manageKb set article_title='"+article_title+"',article_content='"+article_content+"',article_category='"+article_category+"'"  
		        		+"where id='"+id+"'";
		        
		        int rs = stmt.executeUpdate(sql);
		        if (rs > 0) {
	                  isSuccess = true;
	              } else {
	                  isSuccess = false;
	              }
		        
		 }catch (Exception e) {
		        e.printStackTrace();
		    }
		    return isSuccess;
	}

	


//Delete Article


public static boolean deleteArticle(String id) {
	
	int conID = Integer.parseInt(id);
	try {
		//DBconnection
		con = DBConnection.getConnection();
        stmt = con.createStatement();
        
        //sql query
        String sql="delete from manageKb where id='"+conID+"' ";
        
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

