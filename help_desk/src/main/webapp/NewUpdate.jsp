
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="HelpDeskPackage.HelpDeskModel" %>
<%@ page import="HelpDeskPackage.HelpDeskController" %>
<%
    String id = request.getParameter("id"); // reply ID
    String ticketId = request.getParameter("ticketId");
    String replyText = request.getParameter("reply");
    
    HelpDeskModel ticket = HelpDeskController.getTicketById(ticketId);
%>
<html>
<head>
    <title>Update Ticket Reply</title>
    <link rel="stylesheet" type="text/css" href="CSS/style1.css">
</head>
<body>
    <h2>Update Ticket Reply</h2>
    <form action="NewUpdateServlet" method="post">
        <table>
            <tr>
                <td>Reply ID:</td>
                <td><input type="text" name="id" value="<%=id%>" readonly></td>
            </tr>
            <tr>
                <td>Ticket ID:</td>
                <td><input type="text" name="ticketId" value="<%=ticketId%>" readonly></td>
            </tr>
            <tr>
                <td>Student Name:</td>
                <td><input type="text" value="<%=ticket != null ? ticket.getName() : ""%>" readonly></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input type="text" value="<%=ticket != null ? ticket.getEmail() : ""%>" readonly></td>
            </tr>
            <tr>
                <td>Faculty:</td>
                <td><input type="text" value="<%=ticket != null ? ticket.getFaculty() : ""%>" readonly></td>
            </tr>
            <tr>
                <td>Inquiry Type:</td>
                <td><input type="text" value="<%=ticket != null ? ticket.getInqType() : ""%>" readonly></td>
            </tr>
            <tr>
                <td>Inquiry:</td>
                <td><input type="text" value="<%=ticket != null ? ticket.getInquiry() : ""%>" readonly></td>
            </tr>
            <tr>
                <td>Reply:</td>
                <td><input type="text" name="reply" value="<%=replyText != null ? replyText : ""%>" required></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Update Reply"></td>
            </tr>
        </table>
    </form>
</body>
</html>
<jsp:include page="StaffFooter.jsp" /> 
