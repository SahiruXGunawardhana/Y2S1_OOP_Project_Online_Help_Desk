<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
  <jsp:include page="StaffHeader.jsp">
    <jsp:param name="title" value="Staff Dashboard" />
</jsp:include>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online HelpDesk</title>
<link rel="stylesheet" type="text/css" href="CSS/style1.css">
</head>
<body>

<h1><B>Replied Tickets</B></h1>

<h2><input type="text" id="searchInput" placeholder="search..."></h2>

<table border="1">
  <tr>
    <th>ReplyNo.</th>
    <th>Ticket ID</th>
    <th>Response</th> 
    
    <th>Action</th>
    <th>Action</th>

  </tr>
  
  <c:forEach var="ticket" items="${allReplies}">
  
  <tr>
    <td>${ticket.id}</td>
    <td>${ticket.ticketId}</td>
    <td>${ticket.reply}</td>
    
    <td>
       <a href="NewUpdate.jsp?id=${ticket.id}&ticketId=${ticket.ticketId}&reply=${ticket.reply}"> 
         <button>Update</button>
       </a>
    </td>
    
    <td>
        <form action="NewDeleteServlet" method="post">
       <input type="hidden" name="id" value="${ticket.id}" >
          <button>Delete</button>
       </form>
    </td>   
  </tr>
  
  </c:forEach>
</table>

<h2><button onclick="window.location.href='nextpage.jsp'">Next Page</button></h2>


<script>
   
   function filterTable(){
	   var input, filter, table, tr, td, i, txtValue;
	   input=document.getElementById("searchInput");
	   filter = input.value.toUpperCase();
	   table = document.querySelector("table");
	   tr = table.getElementsByTagName("tr");
	   
	   for(i=0; i<tr.length; i++){
		   
		   td=tr[i].getElementsByTagName("td");
		   
		   for(var j=0; j<td.length; j++){
			   
			   if(td[j]){
				   txtValue = td[j].textContent || td[j].innerText;
				   
				   if(txtValue.toUpperCase().indexOf(filter) > -1){
					   tr[i].style.display  = "";
					   break;
					   
				   }else{
					   tr[i].style.display = "none";
				   }
				 
			   }
		   }
	   }
   }

document.getElementById("searchInput").addEventListener("input",filterTable);

</script>

</body>
</html>

<jsp:include page="StaffFooter.jsp" /> <!-- Include Footer -->