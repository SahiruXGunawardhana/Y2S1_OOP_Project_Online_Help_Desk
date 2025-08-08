package UserPackage;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateProfileServlet")
public class UpdateProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userID = request.getParameter("userID");
	    String name = request.getParameter("name");
		String username= request.getParameter("username");
		String password= request.getParameter("password");
		String gmail= request.getParameter("gmail");
	    String phone = request.getParameter("phone");

		
		boolean isTrue;
		isTrue = UserController5414.updateprofile(userID,name,username,password,gmail,phone);
		
		if(isTrue ==true) {
			String alertMessage = "Data Update Successful";
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='GetUserDetails5414?userID=" + userID + "'</script>");
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong5414.jsp");
			dis2.forward(request, response);
		}
		
	}
	
	
}
