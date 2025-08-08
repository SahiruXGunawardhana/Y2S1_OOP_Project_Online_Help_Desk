package UserPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/GetUserDetails5414")
public class GetUserDetails5414 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String userID = request.getParameter("userID");
    	List<UserModel5414> userdetails = UserController5414.getById(userID);//call  model and make object
		request.setAttribute("user",userdetails);
		
		UserModel5414 user = userdetails.isEmpty() ? null : userdetails.get(0);
		request.setAttribute("user", user);
		request.getSession().setAttribute("user", user);

		RequestDispatcher dispatcher = request.getRequestDispatcher("StudentProfile5414.jsp");
		dispatcher.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
