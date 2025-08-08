package ManageArticles;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateArticleServlet
 */
@WebServlet("/UpdateArticleServlet")
public class UpdateArticleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		String article_title= request.getParameter("article_title");
		String article_content= request.getParameter("article_content");
		String article_category= request.getParameter("article_category");
		
		boolean isTrue;
		isTrue = ManageKbController.updateArticle(id, article_title, article_content, article_category);
		 if(isTrue ==true) {
			 	List<ManageKbModel> UpdateArticle = ManageKbController.getById(id);  //create object updateArticle
			 	request.setAttribute("UpdateArticle", UpdateArticle);
			 	
			 	
				String alertMessage = "Data update Successful";
				response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='ViewArticleServlet'</script>");//js part
			}
			else {
				RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
				dis2.forward(request, response);
			}
	}

}
