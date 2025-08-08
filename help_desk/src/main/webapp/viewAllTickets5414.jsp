<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>All Submitted Tickets</title>

    <!-- FontAwesome for social icons in footer -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
	<link rel="stylesheet" href="./style/viewAllTkts5414.css">
</head>
<body>

<!-- Header -->
<header>
    <div class="headname">Student Help Desk</div>
    <nav class="navbar">
        <ul>
            <li><a href="Homepg5414.jsp">Home</a></li>	
            <li><a href="#">View Articles</a></li>
            <li><a href="#faq">FAQ</a></li>
            <li><a href="feedback-home.jsp">Feedback</a></li>
            <li><a href="GetAllTicketServlet5414">Tickets</a></li>
            <li><a href="login5414.jsp">Login</a></li>
            <li><a href="staffLogin.jsp">Staff Login</a></li>
        </ul>
    </nav>
</header>

<!-- Main Content -->
<div class="container">
    <div class="title">All Submitted Tickets</div>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Student ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Contact No</th>
                <th>Faculty</th>
                <th>Inquiry Type</th>
                <th>Subject</th>
                <th>Message</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach var="Ticket" items="${allTickets}">
            <tr>
                <td>${Ticket.id}</td>
                <td>${Ticket.studentId}</td>
                <td>${Ticket.name}</td>
                <td>${Ticket.email}</td>
                <td>${Ticket.contactNo}</td>
                <td>${Ticket.faculty}</td>
                <td>${Ticket.inqType}</td>
                <td>${Ticket.subject}</td>
                <td>${Ticket.inquiry}</td>
                <td>
                    <div class="action-buttons">
                        <form action="updateTicket5414.jsp" method="post">
						    <input type="hidden" name="id" value="${Ticket.id}">
						    <input type="hidden" name="studentId" value="${Ticket.studentId}">
						    <input type="hidden" name="name" value="${Ticket.name}">
						    <input type="hidden" name="email" value="${Ticket.email}">
						    <input type="hidden" name="contactNo" value="${Ticket.contactNo}">
						    <input type="hidden" name="faculty" value="${Ticket.faculty}">
						    <input type="hidden" name="inqType" value="${Ticket.inqType}">
						    <input type="hidden" name="subject" value="${Ticket.subject}">
						    <input type="hidden" name="inquiry" value="${Ticket.inquiry}">
						
						    <button type="submit" class="updateTk">Update</button>
						</form>
                        
                        <form action="DeleteTicketServlet5414" method="post">
                            <input type="hidden" name="id" value="${Ticket.id}">
                            <button type="submit">Delete</button>
                        </form>
                    </div>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<!-- Footer -->
<footer>
    <ul class="footer-links">
        <li><a href="index.jsp">Home</a></li>
        <li><a href="#faq">FAQ</a></li>
        <li><a href="#">View Articles</a></li>
    </ul>
    <div class="social-icons">
        <a href="https://facebook.com"><i class="fab fa-facebook-f"></i></a>
        <a href="https://twitter.com"><i class="fab fa-twitter"></i></a>
        <a href="https://www.instagram.com/"><i class="fab fa-instagram"></i></a>
    </div>
    <p>&copy; 2025 Student Help Desk. All rights reserved.</p>
</footer>

</body>
</html>
