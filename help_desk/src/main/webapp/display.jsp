<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="Header.jsp"/>
<link rel="stylesheet" type="text/css" href="CSS/display.css">
<title>Insert title here</title>
</head>
<body>
<h2>My Appointment </h2>

<input type="text" id="searchInput" placeholder="search...">
<table>
<tr>
	<th>appointment ID</th>
	<th>student Name</th>
	<th>student ID</th>
	<th>studentEmail</th>
	<th>lecturerName</th>
	<th>lecturer ID</th>
	<th>reason</th>
	<th>mode</th>
	<th>Action</th>
</tr>
<c:forEach var="appoinment" items="${allAppoinments}">
<tr>
	<td>${appoinment.appID}</td>
	<td>${appoinment.stName}</td>
	<td>${appoinment.stID}</td>
	<td>${appoinment.stEmail}</td>
	<td>${appoinment.lecName}</td>
	<td>${appoinment.lecID}</td>
	<td>${appoinment.reason}</td>
	<td>${appoinment.mode}</td>
	
	<td><a href="update.jsp?appID=${appoinment.appID}&stName=${appoinment.stName}&stID=${appoinment.stID}&stEmail=${appoinment.stEmail}&lecName=${appoinment.lecName}&lecID=${appoinment.lecID}&reason=${appoinment.reason}&mode=${appoinment.mode}">
	<button>Update</button>
	</a>
	<form action="DeleteServlet" method="post">
	<input type="hidden" name="appID" value="${appoinment.appID}"/>
	<button>Delete</button>
	
	</form> 
	</td>
	</tr>
	</c:forEach>

</table>
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
<jsp:include page="Footer.jsp" />

</html>