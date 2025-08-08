package HelpDeskPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@SuppressWarnings("serial")
@WebServlet("/NewUpdateServlet")
public class NewUpdateServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("id");
		String ticketId = request.getParameter("ticketId");
		String reply = request.getParameter("reply");
		
		boolean isTrue;
		isTrue = TicketReplyController.updatedata(id, ticketId, reply);
		
				if(isTrue == true){
					
					HelpDeskModel ticket = HelpDeskController.getTicketById(ticketId).get(0); // get first ticket
				    request.setAttribute("ticket", ticket);
					
				    List<TicketReplyModel> ticketReplies = TicketReplyController.getById(id);
				    request.setAttribute("ticketReplies", ticketReplies);

					
					String alertMessage = "Data Update successfully";
				    response.getWriter().println("<script> alert('"+alertMessage+"');window.location.href='NewGetAllServlet'</script>");
				}
			
			    else {
				RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
				dis2.forward(request, response);
			    }	


	}
}
