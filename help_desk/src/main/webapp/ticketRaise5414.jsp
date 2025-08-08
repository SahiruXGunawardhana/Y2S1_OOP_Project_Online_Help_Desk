<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Raise a Ticket</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <!-- FontAwesome for icons if needed -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  <link rel="stylesheet" href="./style/RaiseTicket5414.css">
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

<div class="main-content">
  <div class="formMain">
    <div class="TsignForm">
      <h2>Raise a Ticket</h2>
      <form action="TicketInsertServlet5414" method="post">
        <label for="studentId">Student ID</label>
        <input type="text" id="studentId" name="studentId" placeholder="Enter your student ID" required pattern=".{10}" minlength="10" maxlength="10" title="Student ID must be exactly 10 characters">

        <label for="name">Name</label>
        <input type="text" id="name" name="name" placeholder="Enter your full name" required>

        <label for="email">Email</label>
        <input type="text" id="email" name="email" placeholder="Enter your email" required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="Enter a valid email address">

        <label for="contact">Contact No</label>
        <input type="tel" id="contact" name="contactNo" placeholder="Enter your contact number" required pattern="\d{1,10}" maxlength="10" title="Please enter up to 10 digits">

        <label for="faculty">Faculty</label>
        <select id="faculty" name="faculty" required>
          <option value="">-- Choose Faculty --</option>
          <option value="Computing">Computing</option>
          <option value="Engineering">Engineering</option>
          <option value="Business">Business</option>
          <option value="Arts">Arts</option>
          <option value="Technology">Technology</option>
        </select>

        <label for="inquiryType">Inquiry Type</label>
        <select id="inquiryType" name="inqType" required>
          <option value="">-- Choose Inquiry Type --</option>
          <option value="Academic">Academic</option>
          <option value="Non-Academic">Non-Academic</option>
          <option value="Technical">Technical</option>
          <option value="Other">Other</option>
        </select>

        <label for="subject">Subject</label>
        <input type="text" id="subject" name="subject" placeholder="Enter the subject" required>

        <label for="message">Message</label>
        <textarea id="message" name="inquiry" rows="5" placeholder="Enter your message here..." required></textarea>

        <button type="submit">Submit</button>
      </form>
    </div>

    <div class="Tdescription">
      <h2>Support That</h2>
      <h2>Makes a Difference</h2>
      <h3>Raise Your Concerns</h3>
      <h2>With Confidence</h2>
      <img src="./images/Rtk.jpg" alt="Support Illustration" class="support-img">
      <p>Use our ticketing system to report issues, ask questions, or request help. We’re committed to responding quickly and helping you solve problems smoothly and efficiently.</p>
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
    <a href="https://facebook.com"><i class="fab fa-facebook-f"></i></a>
    <a href="https://twitter.com"><i class="fab fa-twitter"></i></a>
    <a href="https://www.instagram.com/"><i class="fab fa-instagram"></i></a>
  </div>
  <p>&copy; 2025 Student Help Desk. All rights reserved.</p>
</footer>

</body>
</html>
