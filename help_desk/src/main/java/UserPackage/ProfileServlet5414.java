package UserPackage;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ProfileServlet5414")
public class ProfileServlet5414 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	processRequest(request,response);
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	processRequest(request,response);
	}
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//retrieve user information from session
	UserModel5414 user =(UserModel5414) request.getSession().getAttribute("user");
	
	if (user != null) {
		//forward user data to profile.jsp
		
		request.setAttribute("user",user);
		request.getRequestDispatcher("StudentProfile5414.jsp").forward(request, response);
		
		
	}else {
		//handel case where user is not logged in
		
		response.sendRedirect("login5414.jsp");
	}
	
	
	}


}
