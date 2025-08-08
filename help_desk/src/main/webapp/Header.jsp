<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Register</title>
  <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  <link rel="stylesheet" href="./style/headFootstyle.css">
   <link rel="stylesheet" href="style/articleList.css">

    
</head>
<body>
<header>
  <div class="headname">Student Help Desk</div>
  <nav class="navbar">
    <ul>
      <li><a href="index.jsp">Home</a></li>
      <li><a href="ViewArticlesServlet">View Articles</a></li>
      <li><a href="#faq">FAQ</a></li>
      <li><a href="../feedback-home.jsp">Feedback</a></li>
      <li><a href="GetAllTicketServlet5414">Tickets</a></li>
      <li><a href="login5414.jsp">Login</a></li>
      <li><a href="../staffLogin.jsp">Staff login</a></li>
      
      
      <div class="d-flex align-items-center">
                    <c:if test="${sessionScope.user.name == null}">
                        <a href="login5414.jsp" class="btn btn-sm btn-light d-flex align-items-center">
                            <i class="fas fa-sign-in-alt me-1"></i> Login
                        </a>
                    </c:if>
                    <c:if test="${sessionScope.user.name != null}">
                        <a href="ProfileServlet5414" class="d-flex align-items-center text-white">
                            <span class="me-2">${sessionScope.user.name}</span>
                            <div class="profile-icon">
                                <i class="fas fa-user"></i>
                            </div>
                        </a>
                    </c:if>
                </div>
    </ul>
  </nav>
</header>
