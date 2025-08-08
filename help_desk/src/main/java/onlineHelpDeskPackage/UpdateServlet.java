package onlineHelpDeskPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String appID = request.getParameter("appID");
	    String stName = request.getParameter("stName");
	    String stID = request.getParameter("stID");
	    String stEmail = request.getParameter("stEmail");
	    String lecName = request.getParameter("lecName");
	    String lecID = request.getParameter("lecID");
	    String reason = request.getParameter("reason");
	    String mode = request.getParameter("mode");
		
		Boolean isTrue;
		isTrue = appoinmentController.updatedata(appID,stName, stID, stEmail, lecName, lecID, reason, mode);
		
		if(isTrue == true) {
			List<appoinmentModel>appoinmentdetails = appoinmentController.getById(appID);
			request.setAttribute("appoinmentdetails",appoinmentdetails);
			
			String alertMessege = "Data update successful";
			response.getWriter().println("<script> alert('"+alertMessege+"'); window.location.href ='GetAllServlet'</script>");
			
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request,response);
		}
		
	}

}