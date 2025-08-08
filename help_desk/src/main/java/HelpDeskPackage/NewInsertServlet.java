package HelpDeskPackage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/NewInsertServlet")
public class NewInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String ticketId = request.getParameter("id");
		String reply = request.getParameter("reply");
		
		boolean isTrue;
		
		isTrue = TicketReplyController.insertdata(ticketId, reply);
		
		if(isTrue == true){
			String alertMessage = "Data insert successfully";
		    response.getWriter().println("<script> alert('"+alertMessage+"');window.location.href='NewServlet'</script>");
		}
	
	    else {
		RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
		dis2.forward(request, response);
	    }
	}

}
