package UserPackage;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UserInsertServlet5414")
public class UserInsertServlet5414 extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name= request.getParameter("name");
		String username= request.getParameter("username");
		String password= request.getParameter("password");
		String gmail= request.getParameter("gmail");
		String phone= request.getParameter("phone");
		
		boolean isTrue;
		boolean isTrue2;
		isTrue2 = UserController5414.checkPwd(password);
		
		if(isTrue2 == true) {
			String alertMsg = "passsword is already in the database; please enter new one.";
			response.getWriter().println("<script> alert('"+alertMsg+"'); window.location.href= 'Register5414.jsp'</script>");
			}
		else{
			isTrue = UserController5414.insertdata(name,username, password, gmail,phone);
			if(isTrue == true){
				String alertMessage = "Regester Successfull";
				response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='login5414.jsp'</script>");
			}
			else {
				RequestDispatcher dis2 = request.getRequestDispatcher("wrong5414.jsp");
				dis2.forward(request, response);
			}
		}
	
	}
	

}
