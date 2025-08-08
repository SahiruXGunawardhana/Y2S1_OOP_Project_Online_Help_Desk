<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Student Profile</title>

  <!-- FontAwesome for social icons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  <link rel="stylesheet" href="./style/stuProf5414.css">

</head>
<body>

<header>
  <div class="headname">Student Help Desk</div>
  <nav class="navbar">
    <ul>
      <li><a href="index.jsp">Home</a></li>
      <li><a href="ViewArticlesServlet">View Articles</a></li>
      <li><a href="#faq">FAQ</a></li>
      <li><a href="feedback-home.jsp">Feedback</a></li>
      <li><a href="GetAllTicketServlet5414">Tickets</a></li>
      <li><a href="login5414.jsp">Login</a></li>
      <li><a href="staffLogin.jsp">Staff login</a></li>
    </ul>
  </nav>
</header>

<div class="main-content">
  <div class="container">

    <!-- Left Side: Profile Table -->
    <div class="left">
      <table>
        <tr><th>User ID</th><td>${sessionScope.user.userID}</td></tr>
        <tr><th>Name</th><td>${sessionScope.user.name}</td></tr>
        <tr><th>Username</th><td>${sessionScope.user.username}</td></tr>
        <!--<tr><th>Password</th><td>${sessionScope.user.password}</td></tr>-->
        <tr><th>Email</th><td>${sessionScope.user.gmail}</td></tr>
        <tr><th>Contact No</th><td>${sessionScope.user.phone}</td></tr>
      </table>

      <div class="button-row">
        <!-- Update -->
        <form action="UpdateProfile5414.jsp" method="post" style="display:inline;">
		  <input type="hidden" name="userID" value="${user.userID}">
		  <input type="hidden" name="name" value="${user.name}">
		  <input type="hidden" name="username" value="${user.username}">
		  <input type="hidden" name="password" value="${user.password}">
		  <input type="hidden" name="gmail" value="${user.gmail}">
		  <input type="hidden" name="phone" value="${user.phone}">
		  <input type="submit" class="update" value="Update Profile">
		</form>
        

        <!-- Delete -->
        <form action="DeleteProfile5414" method="post">
          <input type="hidden" name="userID" value="${user.userID}">
          <input type="submit" class="delete" value="Delete Profile">
        </form>
      </div>
    </div>

    <!-- Right Side: Avatar & Actions -->
    <div class="right">
      <h3>Student Profile</h3>
      <img src="./images/profile.png" alt="Student Avatar" class="profile-img">
      <div class="button-row">
        <a href="GetAllServlet"><input type="button" class="action" value="My Appointment"></a>
        <form action="GetAllTicketServlet5414" method="post">
          <input type="submit" class="action" value="My Tickets">
        </form>
      </div>
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
