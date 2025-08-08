package UserPackage;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteProfile5414")
public class DeleteProfile5414 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userID = request.getParameter("userID");
		
		boolean isTure;
		
		isTure = UserController5414.deleteprofile(userID);
		
		if(isTure == true) {
			String alertMessage="Profile Delete Successful";
			response.getWriter().println("<script>alert('"+alertMessage+"');"+"window.location.href='login5414.jsp';</script>");
			
		}
		else {
			RequestDispatcher dispacher = request.getRequestDispatcher("wrong5414.jsp");
			dispacher.forward(request, response);
		}
	}

}
