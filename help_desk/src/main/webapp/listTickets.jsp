<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<%@ include file="StaffHeader.jsp" %> <!-- Include Header -->
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display All Tickets here</title>
<link rel="stylesheet" type="text/css" href="CSS/style1.css">
</head>
<body>

<h1>All Tickets</h1>

    <h2><input type="text" id="searchInput" placeholder="search..."></h2>

    <table border="1">
        <tr>
            <th>Ticket ID</th>
            <th>Student ID</th>
            <th>Inquiry Type</th>
            <th>Action</th>
            
           
        </tr>
        
  <c:forEach var="ticket" items="${allTickets}">
  
  <tr>
    <td>${ticket.id}</td>
    <td>${ticket.studentId}</td>
    <td>${ticket.inqType}</td>
    
    
    <td>
       <a href = "ViewTicket.jsp?id=${ticket.id}&name=${ticket.name}&email=${ticket.email}&faculty=${ticket.faculty}&inqType=${ticket.inqType}&inquiry=${ticket.inquiry}"> 
        ViewTicket
       </a>      
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

<%@ include file="StaffFooter.jsp" %> <!-- Include Footer -->