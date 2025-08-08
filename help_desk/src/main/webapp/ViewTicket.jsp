<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online HelpDesk</title>
<link rel="stylesheet" type="text/css" href="CSS/style1.css">

</head>
<body>

<%
   String id = request.getParameter("id");
   String name = request.getParameter("name");
   String email = request.getParameter("email");
   String faculty = request.getParameter("faculty");
   String inqType = request.getParameter("inqType");
   String inquiry = request.getParameter("inquiry");
%>

<form action="NewInsertServlet" method="post">
   
    <table> 
    
      <tr>
       <td>Ticket Id:</td>
       <td><input type="text" id="id"  name="id" value="<%=id%>" ></td> 
     </tr>
    
     <tr>
       <td>Student Name:</td>
       <td><input type="text" id="name" name="name" value="<%=name%>" ></td> 
     </tr>
     
     <tr>
       <td>Email:</td>
       <td><input type="text" id="email" name="email" value="<%=email%>"></td> 
    </tr> 
    
    <tr>
       <td>Faculty:</td>
       <td><input type="text" id="faculty" name="faculty" value="<%=faculty%>"></td> 
    </tr>
    
    <tr>
       <td>Inquiry Type:</td>
       <td><input type="text" id="inqType" name="inqType" value="<%=inqType%>"></td> 
    </tr>  
    
    <tr>
       <td>Inquiry:</td>
       <td><input type="text" id="inquiry" name="inquiry" value="<%=inquiry%>"></td> 
    </tr>
    
    
    
    <tr>
       <td>Reply:</td>
       <td><textarea id="reply" name="reply" ></textarea></td> 
    </tr>
    
    <tr>
       <td colspan="2"><input type="submit" value="Submit"></td>
    </tr>
   
    
    </table>

</form>

</body>
</html>

<jsp:include page="StaffFooter.jsp" /> <!-- Include Footer -->