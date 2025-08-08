<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
 <jsp:include page="StaffHeader.jsp">
    <jsp:param name="title" value="Staff Dashboard" />
</jsp:include> <!-- Include Header -->
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online HelpDesk</title>
<link rel="stylesheet" type="text/css" href="CSS/style1.css">
</head>
<body>

<h1><B>Replied Tickets</B></h1>

<table border="1">
  <tr>
    <th>ReplyNo.</th>
    <th>Ticket ID</th>
    <th>Response</th> 
  </tr>
  
  <c:forEach var="ticket" items="${allReplies}">
  
  <tr>
    <td>${ticket.id}</td>
    <td>${ticket.ticketId}</td>
    <td>${ticket.reply}</td>
    
    
  </tr>
  
  </c:forEach>
</table>

<button onclick="window.location.href='nextpage.jsp'">Next Page</button>

</body>
</html>

<jsp:include page="StaffFooter.jsp" /> <!-- Include Footer -->