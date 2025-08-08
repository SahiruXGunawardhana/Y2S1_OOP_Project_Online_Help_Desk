<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Ticket</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- FontAwesome for icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<link rel="stylesheet" href="./style/updateTicket5414.css">

</head>
<body>

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
          <li><a href="staffLogin.jsp">Staff login</a></li>
      </ul>
    </nav>
</header>

<%
    String id = request.getParameter("id");
    String studentId = request.getParameter("studentId");
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String contactNo = request.getParameter("contactNo");
    String faculty = request.getParameter("faculty");
    String inqType = request.getParameter("inqType");
    String subject = request.getParameter("subject");
    String inquiry = request.getParameter("inquiry");
%>

<div class="main-content">
    <div class="container">
        <div class="left-section">
            <h2>Update Ticket</h2>
            <img src="./images/update.jpg" alt="Support Image">
            <p>Update your existing inquiry here. Make sure to fill in accurate details to assist us in helping you better.</p>
        </div>

        <div class="right-section">
            <form action="UpdateTicketServlet5414" method="post">
                <label for="id">Ticket ID:</label>
                <input type="text" id="id" name="id" value="<%=id%>" readonly placeholder="Auto-generated ID">

                <label for="studentId">Student ID:</label>
                <input type="text" id="studentId" name="studentId" value="<%=studentId%>" required placeholder="Enter your student ID">

                <label for="name">Name:</label>
                <input type="text" id="name" name="name" value="<%=name%>" required placeholder="Enter your name">

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" value="<%=email%>" required placeholder="Enter your email">

                <label for="contact">Contact No:</label>
                <input type="tel" id="contact" name="contactNo" value="<%=contactNo%>" required placeholder="Enter 10-digit phone number" pattern="\d{10}" maxlength="10">

                <label for="faculty">Faculty:</label>
                <select id="faculty" name="faculty">
                    <option value="Computing" <%= "Computing".equals(faculty) ? "selected" : "" %>>Computing</option>
                    <option value="Engineering" <%= "Engineering".equals(faculty) ? "selected" : "" %>>Engineering</option>
                    <option value="Business" <%= "Business".equals(faculty) ? "selected" : "" %>>Business</option>
                    <option value="Arts" <%= "Arts".equals(faculty) ? "selected" : "" %>>Arts</option>
                    <option value="Technology" <%= "Technology".equals(faculty) ? "selected" : "" %>>Technology</option>
                </select>

                <label for="inquiryType">Inquiry Type:</label>
                <select id="inquiryType" name="inqType">
                    <option value="Academic" <%= "Academic".equals(inqType) ? "selected" : "" %>>Academic</option>
                    <option value="Non-Academic" <%= "Non-Academic".equals(inqType) ? "selected" : "" %>>Non-Academic</option>
                    <option value="Technical" <%= "Technical".equals(inqType) ? "selected" : "" %>>Technical</option>
                    <option value="Other" <%= "Other".equals(inqType) ? "selected" : "" %>>Other</option>
                </select>

                <label for="subject">Subject:</label>
                <input type="text" id="subject" name="subject" value="<%=subject%>" required placeholder="Enter the subject">

                <label for="message">Message:</label>
                <textarea id="message" name="inquiry" rows="5" required placeholder="Enter your inquiry message here"><%=inquiry%></textarea>

                <input type="submit" value="Update">
            </form>
        </div>
    </div>
</div>

<footer>
    <ul class="footer-links">
        <li><a href="index.jsp">Home</a></li>
        <li><a href="#faq">FAQ</a></li>
        <li><a href="#">View Articles</a></li>
    </ul>
    <div class="social-icons">
        <a href="https://twitter.com/"><i class="fab fa-twitter"></i></a>
        <a href="https://www.facebook.com/"><i class="fab fa-facebook"></i></a>
        <a href="https://www.instagram.com/"><i class="fab fa-instagram"></i></a>
    </div>
    <p>&copy; Copyright Help desk. All Rights Reserved</p>
</footer>

</body>
</html>
