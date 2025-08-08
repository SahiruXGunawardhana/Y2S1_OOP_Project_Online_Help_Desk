<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="Header.jsp" />
<link rel="stylesheet" type="text/css" href="CSS/insert.css">

<title>Make an Appointment for a lecturer</title>
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
        
  
        function validateForm() {
            const stName = document.forms[0]["stName"].value.trim();
            const stID = document.forms[0]["stID"].value.trim();

            const stIDPattern =  /^(IT|it)\d{8}$/;


            if (stName.length < 5) {
                alert("Student Name must be at least 5 characters long.");
                return false;
            }

            if (!stIDPattern.test(stID)) {
                alert("Student ID must start with 'IT' or 'it' followed by 8 digits.");
                return false;
            }

            return true;
        }
 // block submission if false
        
        

    </script>

</head>
<body>

<h2>Make an Appointment for a lecturer</h2>
<div class="form-container">
    <form  action="InsertServlet" method="post" onsubmit="return validateForm()">
        <table>
        <h3>Appointment Request Form</h3>
            <tr>
				<td>Student Name:</td>
                <td><input type="text" name="stName" required></td>
                
            </tr>
            <tr>
                <td>Student ID:</td>
                <td><input type="text" name="stID" required></td>
                
            </tr>
            <tr>
                <td>Student Email:</td>
                <td><input type="email" name="stEmail" required></td>
            </tr>
            <tr>
                <td>Lecturer Name:</td>
                <td>
                    <select name="lecName" id="lecName" onchange="fillLecturerId()" required>
                        <option value="">--Select Lecturer--</option>
                        <option value="Dr. Smith">Dr. Smith</option>
                        <option value="Prof. John">Prof. John</option>
                        <option value="Ms. Alice">Ms. Alice</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Lecturer ID:</td>
                <td><input type="text" name="lecID" id="lecID" readonly></td>
            </tr>
            <tr>
                <td>Reason:</td>
                <td><textarea name="reason" required></textarea></td>
            </tr>
            <tr>
				<td>Mode:</td>
                <td>
                    <select name="mode" required>
                        <option value="">--Select Mode--</option>
                        <option value="Online">Online</option>
                        <option value="Physical">Physical</option>
                    </select>
                </td> 
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Make Appointment"></td>
            </tr>
        </table>
    </form>
    </div>
<jsp:include page="Footer.jsp" />
</body>

</html>