<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="java.sql.*" %>
<jsp:include page="StaffHeader.jsp">
    <jsp:param name="title" value="Staff Dashboard" />
</jsp:include>
<link href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css" rel="stylesheet">
    <!-- Include Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<body class="bg-gray-100 min-h-screen">
    <%
        // Get session attributes
      String staffId = String.valueOf(session.getAttribute("staffId"));

        String name = (String) session.getAttribute("name");
        String email = (String) session.getAttribute("email");
        String phone = String.valueOf(session.getAttribute("contactNo")); // not "phone"

        String password = (String) session.getAttribute("password");
        String profileImage = (String) session.getAttribute("profileImage");
        String joinDate = (String) session.getAttribute("joinDate");
        
        // If there's no session data, you might redirect to login or pull data from database
        if(staffId == null) {
            // This is just placeholder code - replace with your actual database connection
            Connection conn = null;
            PreparedStatement pstmt = null;
            ResultSet rs = null;
            
            try {
                // Get staff ID from request parameter if available
                String requestStaffId = request.getParameter("id");
                if(requestStaffId != null) {
                    // Your database connection code here
                    // conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/yourdb", "username", "password");
                    
                    // Query to get staff details
                    // String sql = "SELECT * FROM staff WHERE id = ?";
                    // pstmt = conn.prepareStatement(sql);
                    // pstmt.setString(1, requestStaffId);
                    // rs = pstmt.executeQuery();
                    
                    // if(rs.next()) {
                    //     staffId = rs.getString("id");
                    //     name = rs.getString("name");
                    //     email = rs.getString("gmail");
                    //     phone = rs.getString("phone");
                    //     password = rs.getString("password");
                    //     profileImage = rs.getString("profile_image");
                    //     joinDate = rs.getString("join_date");
                    // }
                } else {
                    // If no session and no request parameter, redirect to login
                    // response.sendRedirect("login.jsp");
                }
            } catch(Exception e) {
                e.printStackTrace();
            } finally {
                // Close database resources
                // if(rs != null) rs.close();
                // if(pstmt != null) pstmt.close();
                // if(conn != null) conn.close();
            }
        }
    %>

   

    <!-- Main Content -->
    <div class="max-w-6xl mx-auto p-4 pt-8">
        <div class="bg-white rounded-lg shadow-lg overflow-hidden">
            <div class="bg-indigo-600 py-6 px-8 flex justify-between items-center">
                <h2 class="text-white text-2xl font-bold">My Profile</h2>
                <a href="updateStaffProfile.jsp?id=<%= staffId %>&name=<%= name %>&gmail=<%= email %>&password=<%= password %>&phone=<%= phone %>" class="bg-white text-indigo-600 hover:bg-indigo-100 px-4 py-2 rounded-md text-sm font-medium transition duration-300 flex items-center">
                    <i class="fas fa-edit mr-2"></i> Update Profile
                </a>
            </div>

            <div class="p-8">
                <div class="flex flex-col md:flex-row">
                    <!-- Profile Image Section -->
                    <div class="md:w-1/3 flex flex-col items-center pb-6 md:pb-0">
                        <div class="w-40 h-40 rounded-full overflow-hidden shadow-lg mb-4">
                            <% if(profileImage != null && !profileImage.isEmpty()) { %>
                                <img src="<%= profileImage %>" alt="Profile Image" class="w-full h-full object-cover">
                            <% } else { %>
                                <img src="/api/placeholder/200/200" alt="Profile Image" class="w-full h-full object-cover">
                            <% } %>
                        </div>
                        <h3 class="text-xl font-semibold text-gray-800"><%= name != null ? name : "Staff Name" %></h3>
                        <p class="text-gray-500 text-sm mt-1">Member since <%= joinDate != null ? joinDate : "N/A" %></p>
                    </div>

                    <!-- Profile Details Section -->
                    <div class="md:w-2/3 md:pl-8 border-t md:border-t-0 md:border-l border-gray-200 pt-6 md:pt-0 md:pl-8">
                        <h3 class="text-lg font-medium text-gray-900 mb-4 pb-2 border-b border-gray-200">Account Information</h3>
                        
                        <div class="space-y-6">
                            <!-- Staff ID -->
                            <div class="flex flex-col md:flex-row">
                                <div class="md:w-1/3 flex items-center">
                                    <i class="fas fa-id-card text-indigo-500 mr-3"></i>
                                    <span class="text-gray-600 font-medium">Staff ID</span>
                                </div>
                                <div class="md:w-2/3 text-gray-800"><%= staffId != null ? staffId : "N/A" %></div>
                            </div>
                            
                            <!-- Name -->
                            <div class="flex flex-col md:flex-row">
                                <div class="md:w-1/3 flex items-center">
                                    <i class="fas fa-user text-indigo-500 mr-3"></i>
                                    <span class="text-gray-600 font-medium">Name</span>
                                </div>
                                <div class="md:w-2/3 text-gray-800"><%= name != null ? name : "N/A" %></div>
                            </div>

                            <!-- Email -->
                            <div class="flex flex-col md:flex-row">
                                <div class="md:w-1/3 flex items-center">
                                    <i class="fas fa-envelope text-indigo-500 mr-3"></i>
                                    <span class="text-gray-600 font-medium">Email</span>
                                </div>
                                <div class="md:w-2/3 text-gray-800"><%= email != null ? email : "N/A" %></div>
                            </div>

                            <!-- Phone -->
                            <div class="flex flex-col md:flex-row">
                                <div class="md:w-1/3 flex items-center">
                                    <i class="fas fa-phone text-indigo-500 mr-3"></i>
                                    <span class="text-gray-600 font-medium">Phone</span>
                                </div>
                                <div class="md:w-2/3 text-gray-800"><%= phone != null ? phone : "N/A" %></div>
                            </div>

                            <!-- Account Status -->
                            <div class="flex flex-col md:flex-row">
                                <div class="md:w-1/3 flex items-center">
                                    <i class="fas fa-check-circle text-indigo-500 mr-3"></i>
                                    <span class="text-gray-600 font-medium">Status</span>
                                </div>
                                <div class="md:w-2/3">
                                    <span class="px-2 py-1 text-xs rounded-full bg-green-100 text-green-800">Active Account</span>
                                </div>
                            </div>

                            <!-- Password -->
                            <div class="flex flex-col md:flex-row">
                                <div class="md:w-1/3 flex items-center">
                                    <i class="fas fa-lock text-indigo-500 mr-3"></i>
                                    <span class="text-gray-600 font-medium">Password</span>
                                </div>
                                <div class="md:w-2/3 flex items-center">
                                    <span class="text-gray-800">••••••••</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Footer Actions -->
 <form action="DeleteStaffAcountServlet" method="post" onsubmit="return confirm('Are you sure you want to delete your profile?');">
    <button type="submit" class="bg-red-600 hover:bg-red-700 text-white font-medium py-2 px-6 rounded-md transition duration-300">
        <i class="fas fa-trash-alt mr-2"></i> Delete My Profile
    </button>
</form>


           
            
        </div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Mobile menu toggle
            const mobileMenuButton = document.querySelector('.mobile-menu-button');
            const mobileMenu = document.querySelector('.mobile-menu');
            
            mobileMenuButton.addEventListener('click', function() {
                mobileMenu.classList.toggle('hidden');
            });
        });
    </script>
<jsp:include page="StaffFooter.jsp" />