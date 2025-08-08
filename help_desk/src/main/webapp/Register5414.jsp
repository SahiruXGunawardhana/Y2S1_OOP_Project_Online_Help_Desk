<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Register</title>
  <link rel="stylesheet" href="style/register5414.css"> 
  
</head>
<body>
  <div class="register-container">
    <h1>Register User</h1>
    <form action="UserInsertServlet5414" method="post">
      <div class="form-group">
        <label for="name">Name:</label>
        <input type="text" name="name" placeholder="Enter your name" required>
      </div>
      <div class="form-group">
        <label for="gmail">Email:</label>
        <input type="email" name="gmail" placeholder="Enter your email" required>
      </div>  

      <div class="form-group">
        <label for="username">Username (create your own):</label>
        <input type="text" name="username" placeholder="Enter a username" required>
      </div>
      <div class="form-group">
        <label for="phone">Phone Number:</label>
        <input type="text" name="phone" placeholder="10-digit phone number" pattern="\d{10}" maxlength="10" required title="Enter a 10-digit number">
      </div>

      <div class="form-group">
        <label for="password">Password:</label>
        <input type="password" name="password" placeholder="At least 8 characters" minlength="8" required>
      </div>
      <div class="submit-btn">
        <input type="submit" value="Register">
      </div>
    </form>
  </div>
</body>
</html>
    