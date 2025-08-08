<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Login</title>
  <link rel="stylesheet" href="style/login5414.css">
</head>
<body>
  <div class="login-container">
    <h1>Login</h1>
    <form action="LoginServlet5414" method="post">
      <div class="form-group">
        <label for="username">User-name:</label>
        <input type="text" id="username" name="username" placeholder="Enter your username" required>
      </div>
      
      <div class="form-group">
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" placeholder="At least 8 characters" minlength="8" required>
      </div>
      
      <div class="form-group">
        <input type="submit" value="Login">
      </div>
    </form>
    
    <div class="register-section">
      <p>If you don't have an account:</p>
      <form action="Register5414.jsp" method="post">
        <input type="submit" value="Register">
      </form>
    </div>
  </div>
</body>
</html>