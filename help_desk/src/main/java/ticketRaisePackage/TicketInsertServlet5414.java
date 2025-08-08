package ticketRaisePackage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/TicketInsertServlet5414")
public class TicketInsertServlet5414 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String studentId = request.getParameter("studentId");
		String name = request.getParameter("name");////id, studentId, name, email, contactNo, faculty, inqType, subject, inquiry
		String email = request.getParameter("email");
		String contactNo = request.getParameter("contactNo");
		String faculty = request.getParameter("faculty");		
		String inqType = request.getParameter("inqType");
		String subject = request.getParameter("subject");
		String inquiry = request.getParameter("inquiry");
		
		
		boolean isTrue;
		
		isTrue = TicketControler5414.insertdata(studentId, name, email, contactNo, faculty, inqType, subject, inquiry);
		
		if(isTrue == true) {
			String alertMessage = "Data Insert Successful";
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href= 'index.jsp'</script>");
			
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong5414.jsp");
			dis2.forward(request, response);
		}
	}

}
