<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Update Profile</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <!-- FontAwesome for icons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  <link rel="stylesheet" href="style/updateProfile5414.css">
  	
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
  <%
      String userID = request.getParameter("userID");
      String name = request.getParameter("name");
      String username = request.getParameter("username");
      String password = request.getParameter("password");
      String gmail = request.getParameter("gmail");
      String phone = request.getParameter("phone");
  %>

  <div class="update-container">
    <h2>Update Profile</h2>
    <form action="UpdateProfileServlet" method="post">

      <div class="form-group">
        <label>User ID:</label>
        <input type="text" name="userID" value="<%=userID%>" readonly>
      </div>

      <div class="form-group">
        <label>Name:</label>
        <input type="text" name="name" value="<%=name%>" placeholder="Enter your name" required>
      </div>

      <div class="form-group">
        <label>Username:</label>
        <input type="text" name="username" value="<%=username%>" placeholder="Enter a username" required>
      </div>

      <div class="form-group">
        <label>Password:</label>
        <input type="text" name="password" value="<%=password%>" placeholder="At least 8 characters" minlength="8" required>
      </div>

      <div class="form-group">
        <label>Email (Gmail):</label>
        <input type="email" name="gmail" value="<%=gmail%>" placeholder="Enter your email" required>
      </div>

      <div class="form-group">
        <label>Contact No:</label>
        <input type="text" name="phone" value="<%=phone%>" placeholder="10-digit phone number" pattern="\d{10}" maxlength="10" required title="Enter a 10-digit phone number">
      </div>

      <div class="submit-btn">
        <input type="submit" value="Update">
      </div>

    </form>
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
