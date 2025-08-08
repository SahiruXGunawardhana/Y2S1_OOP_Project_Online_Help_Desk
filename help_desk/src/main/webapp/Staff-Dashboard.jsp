<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- Include Header -->
<jsp:include page="StaffHeader.jsp">
    <jsp:param name="title" value="Staff Dashboard" />
</jsp:include>

<!-- Welcome Banner with Support Team Image -->
<div class="row mb-4">
    <div class="col-12">
        <div class="card border-0 shadow-sm overflow-hidden">
            <div class="card-body p-0">
                <div class="row g-0">
                    <div class="col-lg-7 p-4 d-flex flex-column justify-content-center">
                        <h4 class="mb-3">Welcome to the University Online Help Desk</h4>
                        <p class="mb-0">Access tools and resources to assist students and faculty. Use the dashboard below to manage support requests, access knowledge resources, and schedule appointments.</p>
                    </div>
                    <div class="col-lg-5 bg-gradient" style="background: linear-gradient(135deg, #e0f7ff 0%, #bae6fd 100%);">
                        <div class="text-center p-3">
                            <!-- Help Desk Support Team SVG Image -->
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 700 400" style="max-width: 100%; height: auto;">
                                <!-- SVG content from your original file -->
                                <!-- Background elements -->
                                <circle cx="290" cy="20" r="20" fill="#5b6abf" opacity="0.9" />
                                <rect x="447" y="45" width="35" height="25" fill="#4a5893" rx="5" />
                                <path d="M456,50 l8,7 l8,-7" stroke="white" stroke-width="2" fill="none" />
                                <!-- More SVG content... -->
                            </svg>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Search Bar -->
<div class="row mb-4">
    <div class="col-12">
        <div class="card shadow-sm border-0">
            <div class="card-body">
                <form action="search" method="GET" class="search-container">
                    <div class="input-group">
                        <span class="input-group-text bg-white border-end-0">
                            <i class="fas fa-search text-blue"></i>
                        </span>
                        <input type="text" name="query" class="form-control border-start-0 shadow-none" placeholder="Search for articles, FAQs, or ticket information..." aria-label="Search">
                        <button class="btn search-btn text-white" type="submit">Search</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Dashboard Cards -->
<div class="row mb-3">
    <div class="col-12">
        <h4 class="fw-bold mb-0"><i class="fas fa-th-large me-2 text-blue"></i>Dashboard</h4>
        <p class="text-muted">Quick access to important help desk functions</p>
    </div>
</div>
<div class="row g-4">
    <!-- Knowledge-Base Card -->
    <div class="col-md-6 col-lg-4">
        <a href="ViewArticleServlet" class="text-decoration-none">
            <div class="card shadow h-100 border-0">
                <div class="card-body position-relative p-4">
                    <div class="ribbon bg-blue text-white px-3 py-1 position-absolute" style="top: 15px; right: -5px; transform: rotate(45deg) translateX(30px); z-index: 1; font-size: 0.7rem;">POPULAR</div>
                    <div class="d-flex align-items-center mb-4">
                        <div class="icon-container" style="background-color: rgba(52, 152, 219, 0.15);">
                            <i class="fas fa-book text-blue fa-lg"></i>
                        </div>
                        <h5 class="card-title mb-0 fw-bold">Knowledge-Base</h5>
                    </div>
                    <p class="card-text text-muted mb-4">Access and manage knowledge articles and resources for quick reference</p>
                    <div class="d-flex justify-content-between align-items-center">
                        <span class="badge bg-light-blue text-white px-3 py-2"><i class="fas fa-file-alt me-1"></i> Articles: 128</span>
                        <i class="fas fa-arrow-right text-blue"></i>
                    </div>
                </div>
                <div class="card-footer bg-white border-top-0 text-end">
                    <small class="text-muted">Last updated: 3 days ago</small>
                </div>
            </div>
        </a>
    </div>

    <!-- Ticket Management Card -->
    <div class="col-md-6 col-lg-4">
        <a href="GetAllServlet1" class="text-decoration-none">
            <div class="card shadow h-100 border-0">
                <div class="card-body position-relative p-4">
                    <div class="ribbon bg-danger text-white px-3 py-1 position-absolute" style="top: 15px; right: -5px; transform: rotate(45deg) translateX(30px); z-index: 1; font-size: 0.7rem;">URGENT</div>
                    <div class="d-flex align-items-center mb-4">
                        <div class="icon-container" style="background-color: rgba(52, 152, 219, 0.15);">
                            <i class="fas fa-ticket-alt text-blue fa-lg"></i>
                        </div>
                        <h5 class="card-title mb-0 fw-bold">Ticket Management</h5>
                    </div>
                    <p class="card-text text-muted mb-4">View, assign and resolve support tickets submitted by students and faculty</p>
                    <div class="d-flex justify-content-between align-items-center">
                        <span class="badge bg-danger text-white px-3 py-2"><i class="fas fa-exclamation-circle me-1"></i> Open: 12</span>
                        <i class="fas fa-arrow-right text-blue"></i>
                    </div>
                </div>
                <div class="card-footer bg-white border-top-0 text-end">
                    <small class="text-muted">Last updated: Today</small>
                </div>
            </div>
        </a>
    </div>

    <!-- Appointment Card -->
    <div class="col-md-6 col-lg-4">
        <a href="#" class="text-decoration-none">
            <div class="card shadow h-100 border-0">
                <div class="card-body position-relative p-4">
                    <div class="ribbon bg-success text-white px-3 py-1 position-absolute" style="top: 15px; right: -5px; transform: rotate(45deg) translateX(30px); z-index: 1; font-size: 0.7rem;">NEW</div>
                    <div class="d-flex align-items-center mb-4">
                        <div class="icon-container" style="background-color: rgba(52, 152, 219, 0.15);">
                            <i class="fas fa-calendar-check text-blue fa-lg"></i>
                        </div>
                        <h5 class="card-title mb-0 fw-bold">Appointment Management</h5>
                    </div>
                    <p class="card-text text-muted mb-4">Schedule and manage student appointments for support sessions</p>
                    <div class="d-flex justify-content-between align-items-center">
                        <span class="badge bg-success text-white px-3 py-2"><i class="fas fa-clock me-1"></i> Today: 5</span>
                        <i class="fas fa-arrow-right text-blue"></i>
                    </div>
                </div>
                <div class="card-footer bg-white border-top-0 text-end">
                    <small class="text-muted">Last updated: 1 hour ago</small>
                </div>
            </div>
        </a>
    </div>
</div>

<!-- Include Footer -->
<jsp:include page="StaffFooter.jsp" />