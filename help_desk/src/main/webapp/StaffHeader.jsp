<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${param.title} | University Help Desk</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <!-- CSS Styles -->
    <style>
        body {
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            padding-top: 70px; /* Space for fixed header */
            padding-bottom: 80px; /* Space for enhanced fixed footer */
            background-color: #f8fafc;
        }
        .main-content {
            flex: 1;
        }
        .bg-light-blue {
            background-color: #3498db !important;
        }
        .bg-darker-blue {
            background-color: #2980b9 !important;
        }
        .card {
            transition: all 0.3s ease;
            height: 100%;
            border-top: 4px solid #3498db;
            overflow: hidden;
        }
        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 30px rgba(0,0,0,0.1) !important;
            border-color: #2980b9;
        }
        .card:hover .fa-arrow-right {
            transform: translateX(5px);
        }
        .icon-container {
            background-color: #ebf5fb;
            width: 50px;
            height: 50px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-right: 15px;
            transition: all 0.3s ease;
        }
        .card:hover .icon-container {
            transform: scale(1.1);
        }
        .text-blue {
            color: #3498db;
        }
        .navbar-dark .navbar-nav .nav-link {
            color: rgba(255, 255, 255, 0.85);
        }
        .navbar-dark .navbar-nav .nav-link:hover {
            color: white;
        }
        .profile-icon {
            width: 32px;
            height: 32px;
            background-color: white;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #3498db;
        }
        a {
            text-decoration: none;
        }
        .welcome-banner {
            background-color: white;
            border-radius: 8px;
            overflow: hidden;
        }
        .welcome-banner .text-section {
            padding: 2rem;
        }
        .welcome-banner .image-section {
            background: linear-gradient(135deg, #e0f7ff 0%, #bae6fd 100%);
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 1rem;
        }
        .social-icon:hover {
            transform: translateY(-3px);
            transition: all 0.3s;
        }
        .footer-link:hover {
            color: #bae6fd !important;
            transition: all 0.3s;
        }
        /* Search bar specific styles */
        .search-container {
            position: relative;
            margin-bottom: 25px;
        }
        .search-input {
            padding-left: 40px;
            border: 1px solid #e2e8f0;
            transition: all 0.3s ease;
        }
        .search-input:focus {
            border-color: #3498db;
            box-shadow: 0 0 0 0.2rem rgba(52, 152, 219, 0.25);
        }
        .search-icon {
            position: absolute;
            left: 15px;
            top: 50%;
            transform: translateY(-50%);
            color: #94a3b8;
        }
        .search-btn {
            background-color: #3498db;
            border-color: #3498db;
        }
        .search-btn:hover {
            background-color: #2980b9;
            border-color: #2980b9;
        }
        /* Dashboard card enhancements */
        .ribbon {
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        .fa-arrow-right {
            transition: all 0.3s ease;
        }
        .badge {
            font-weight: 500;
            box-shadow: 0 2px 5px rgba(0,0,0,0.08);
        }
        .card-footer {
            border-top: 1px solid rgba(0,0,0,0.05) !important;
        }
        
        /* Additional CSS - can be overridden in specific pages */
        ${param.additionalCss}
    </style>
</head>
<body>
    <!-- Fixed Header -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-light-blue fixed-top">
        <div class="container">
            <a class="navbar-brand fw-bold" href="#">STAFF PANEL</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="Staff-Dashboard.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ViewArticleServlet">View Articles</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#faq">FAQ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Feedback</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Tickets</a>
                    </li>
                </ul>
                <!-- Profile/Login Section -->
                <div class="d-flex align-items-center">
                    <c:if test="${sessionScope.name == null}">
                        <a href="Stafflogin.jsp" class="btn btn-sm btn-light d-flex align-items-center">
                            <i class="fas fa-sign-in-alt me-1"></i> Login
                        </a>
                    </c:if>
                    <c:if test="${sessionScope.name != null}">
                        <a href="staffProfileServlet" class="d-flex align-items-center text-white">
                            <span class="me-2">${sessionScope.name}</span>
                            <div class="profile-icon">
                                <i class="fas fa-user"></i>
                            </div>
                        </a>
                    </c:if>
                </div>
            </div>
        </div>
    </nav>

    <!-- Main Content Container Start -->
    <div class="container main-content py-4">