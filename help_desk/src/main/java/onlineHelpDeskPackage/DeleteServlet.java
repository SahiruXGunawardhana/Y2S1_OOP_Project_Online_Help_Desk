package onlineHelpDeskPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import onlineHelpDeskPackage.appoinmentController;
import onlineHelpDeskPackage.appoinmentModel;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String appID = request.getParameter("appID");
		boolean isTrue;
		isTrue = appoinmentController.deletedata(appID);
		if(isTrue == true) {
			String alertMessage = "Data Delete Successful ";
			response.getWriter().println("<script>alert('"+alertMessage+"');"+"window.location.href='GetAllServlet';</script>");
		}
		else {
			List<appoinmentModel>appoinmentDetails = appoinmentModel.getById(appID);
			request.setAttribute("appoinmentDetails", appoinmentDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("wrong.jsp");
			dispatcher.forward(request,response);
		}
	}

}