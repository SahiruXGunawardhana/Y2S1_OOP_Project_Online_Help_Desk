package ManageArticles;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ManageArticles.ManageKbController;
import ManageArticles.ManageKbModel;


@WebServlet("/DeleteArticleServlet")
public class DeleteArticleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id =request.getParameter("id");
		System.out.println("ID from request: " + id); //this for dubaging
		boolean isTure;
		isTure = ManageKbController.deleteArticle(id);
		if(isTure == true) {
			String alertMessage="Data Delete Successful";
			response.getWriter().println("<script>alert('"+alertMessage+"');"+"window.location.href='ViewArticleServlet';</script>");
			
		}
		else {
			List<ManageKbModel> bookDetails = ManageKbController.getById(id);
			request.setAttribute("bookDetails",bookDetails);
			
			RequestDispatcher dispacher = request.getRequestDispatcher("wrong.jsp");
			dispacher.forward(request, response);
		}
	}

}
