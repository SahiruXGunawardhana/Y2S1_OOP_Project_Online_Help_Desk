<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="Header.jsp"/>
<link rel="stylesheet" type="text/css" href="CSS/insert.css">
<script>
        function fillLecturerId() {
            const lecturerMap = {
                "Dr. Smith": "L001",
                "Prof. John": "L002",
                "Ms. Alice": "L003"
            };
            const name = document.getElementById("lecName").value;
            document.getElementById("lecID").value = lecturerMap[name] || "";
        }
    </script>
<title>Insert title here</title>
</head>
<body>
<%
	String appID = request.getParameter("appID");
    String stName = request.getParameter("stName");
    String stID = request.getParameter("stID");
    String stEmail = request.getParameter("stEmail");
    String lecName = request.getParameter("lecName");
    String lecID = request.getParameter("lecID");
    String reason = request.getParameter("reason");
    String mode = request.getParameter("mode");
%>
	<div class="header-space"></div>
	<div class="form-container">
	<form action="UpdateServlet" method="post">
	<table>
	<h3>Appointment Request Form</h3>
	<tr></tr>
	<tr>
	<td>ID:</td>
	<td><input type="text" id="appID" name="appID" value="<%=appID%>" readonly></td>
	</tr>
	<tr>
	<td>Student Name:</td>
	<td><input type="text" id="stName" name="stName" value="<%=stName%>" required></td>
	</tr>
	<tr>
	<td>Student ID:</td>
	<td><input type="text" id="stID" name="stID" value="<%=stID%>" required></td>
	</tr>
	<tr>
	<td>Student Email:</td>
	<td><input type="text" id="stEmail" name="stEmail" value="<%=stEmail%>" required></td>
	</tr>
	<tr>
	<td>Lecturer Name:</td>
	<td><select name="lecName" id="lecName" onchange="fillLecturerId()"  value="<%=lecName%>" required>
	<option value="">--Select Lecturer--</option>
                        <option value="Dr. Smith">Dr. Smith</option>
                        <option value="Prof. John">Prof. John</option>
                        <option value="Ms. Alice">Ms. Alice</option>
	</td>
	</tr>
	<tr>
	<td>Lecturer ID:</td>
	<td><input type="text" id="lecID" name="lecID" value="<%=lecID%>" required></td>
	</tr>
	<tr>
	<td>Reason:</td>
	<td><input type="text" id="reason" name="reason" value="<%=reason%>" required></input></td>
	</tr>
	<tr>
	<td>Mode:</td>
	<td><select  id="mode" name="mode" value="<%=mode%>" required>
	<option value="">--Select Mode--</option>
                        <option value="Online">Online</option>
                        <option value="Physical">Physical</option>
                    </select>
	</td>
	</tr>
	
	<tr>
	<td colspan = "2"><input type="submit" value="submit"></td>
	</tr>
	</table>
	</form>
	</div>
	<jsp:include page="Footer.jsp" />
</body>
</html>