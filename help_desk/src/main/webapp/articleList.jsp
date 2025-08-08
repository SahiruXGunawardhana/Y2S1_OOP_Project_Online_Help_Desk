<%@ include file="Header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.sql.*" %>

<body>
  <div class="container">
    <div class="article-section">
      <h1 class="section-title">Articles</h1>
      
      <div class="articles-container">
        <c:forEach var="Article" items="${allArticles}">
          <div class="article-card">
            <div class="article-header" onclick="toggleArticle(this)">
              <h2 class="article-title">${Article.title}</h2>
              <span class="toggle-icon">+</span>
            </div>
            <div class="article-content">
              <div class="content-wrapper">
                <c:out value="${Article.content}" escapeXml="false" />
              </div>
            </div>
          </div>
        </c:forEach>
      </div>
    </div>
  </div>

  <script>
    function toggleArticle(header) {
      // Close all other open articles first
      const allContents = document.querySelectorAll('.article-content.active');
      const allIcons = document.querySelectorAll('.toggle-icon');
      
      allContents.forEach(content => {
        if (content !== header.nextElementSibling) {
          content.classList.remove('active');
        }
      });
      
      allIcons.forEach(icon => {
        if (icon !== header.querySelector('.toggle-icon')) {
          icon.textContent = '+';
        }
      });
      
      // Toggle this article
      const content = header.nextElementSibling;
      content.classList.toggle('active');
      
      // Change icon
      const icon = header.querySelector('.toggle-icon');
      icon.textContent = content.classList.contains('active') ? '−' : '+';
    }
  </script>
<%@ include file="Footer.jsp" %>