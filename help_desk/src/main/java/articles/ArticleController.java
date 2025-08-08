package articles;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import articles.DBConnection;
import articles.Article;

public class ArticleController {

	// Connect Data Base
    private static boolean isSuccess;
    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;
    
    
    public static List<Article>getAllArticle (){
  	  ArrayList <Article> articles = new ArrayList<>();
  	  try {
  			//DBConnection
  			con = DBConnection.getConnection();
  	        stmt = con.createStatement();
  	        
  	        //Query
  	        String sql = "select * from managekb ";
  	        
  	        rs = stmt.executeQuery(sql);
  	        
  	        while(rs.next()) {
  	        	int id = rs.getInt(1); // number one shows colume in DB
  	        	String title = rs.getString(2);
  	        	String content = rs.getString(3);
  	        	String article_category = rs.getString(4);
        	
  	        	Article bk = new Article(id,title,content,article_category);
  	        	articles.add(bk);
  	        }
  		

  		 } catch (Exception e) {
  	        e.printStackTrace();
  	    }
  	    return articles;
  	}
  	  
    
 
   

}
