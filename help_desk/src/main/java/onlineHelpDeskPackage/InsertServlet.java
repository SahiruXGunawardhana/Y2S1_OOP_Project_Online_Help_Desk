package onlineHelpDeskPackage;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InsertServlet")
public class InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String stName = request.getParameter("stName");
		String stID = request.getParameter("stID");
		String stEmail = request.getParameter("stEmail");
		String lecName = request.getParameter("lecName");
		String lecID = request.getParameter("lecID");
		String reason = request.getParameter("reason");
		String mode = request.getParameter("mode");
		
		boolean isTrue;
		isTrue = appoinmentController.insertdata(stName, stID, stEmail, lecName, lecID, reason, mode);
		if(isTrue == true) {
			String alertMessege = "Data insert successful";
			response.getWriter().println("<script> alert('"+alertMessege+"'); window.location.href ='GetAllServlet'</script>");
			
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request,response);
		}
	}

}