<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="StaffHeader.jsp">
    <jsp:param name="title" value="Manage Articles" />
    <jsp:param name="additionalCss" value="
    .article-content {
        display: none;
        background-color: white;
        padding: 15px;
        margin-top: 10px;
        border-radius: 5px;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05);
        width: 100%;
        max-width: 100%;
        overflow-x: auto;
        border: 1px solid #ddd;
        white-space: pre-wrap;
        line-height: 1.6;
    }

    .article-title {
        color: #3498db;
        cursor: pointer;
        text-decoration: none;
    }

    .article-title:hover {
        text-decoration: underline;
    }

    .article-table {
        border-radius: 8px;
        overflow: hidden;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        width: 100%;
    }

    .article-table thead th {
        background-color: #3498db;
        color: white;
        font-weight: 600;
        padding: 12px 16px;
        border-top: none; /* Remove top border */
    }

    .btn-update {
        background-color: #3498db;
        color: white;
        padding: 6px 12px;
        border-radius: 4px;
        border: none;
    }

    .btn-delete {
        background-color: #e74c3c;
        color: white;
        padding: 6px 12px;
        border-radius: 4px;
        border: none;
    }

    .btn-add-article {
        background-color: #2ecc71;
        color: white;
        padding: 8px 16px;
        border-radius: 4px;
        font-weight: 500;
        display: inline-flex;
        align-items: center;
        gap: 8px;
    }

    .table-responsive {
        overflow: visible !important;
        position: relative;
    }
    " />
</jsp:include>

<link href="https://cdn.jsdelivr.net/npm/@tailwindcss/typography@0.5.9/dist/typography.min.css" rel="stylesheet">

<div class="container">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h2 class="fw-bold text-primary">Article Management</h2>
        <a href="addArticles.jsp" class="btn-add-article">
            <i class="fas fa-plus"></i> Add New Article
        </a>
    </div>

    
        <div class="card-header bg-primary text-white py-3">
            <h5 class="mb-0"><i class="fas fa-file-alt me-2"></i> Manage Knowledge Base Articles</h5>
        </div>
        <div class="card-body p-0">
            <div class="table-responsive">
                <table class="table table-hover article-table mb-0">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Title</th>
                            <th>Category</th>
                            <th>Update</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="Article" items="${allArticles}">
                            <tr>
                                <td>${Article.id}</td>
                                <td>
                                    <a href="#" class="article-title" onclick="toggleContent('content-${Article.id}', event)">
                                        ${Article.article_title}
                                    </a>
                                    <div id="content-${Article.id}" class="article-content">
                                        <h6 class="mb-2">Article Content:</h6>
                                        <div class="content-body prose max-w-full text-gray-800">
                                            <c:out value="${Article.article_content}" escapeXml="false" />
                                        </div>
                                    </div>
                                </td>
                                <td>${Article.article_category}</td>
                                <td>
                                    <a href="UpdateArticle.jsp?id=${Article.id}&article_title=${Article.article_title}&article_content=${Article.article_content}&article_category=${Article.article_category}" class="btn-update">
                                        <i class="fas fa-edit me-1"></i> Update
                                    </a>
                                </td>
                                <td>
                                    <form action="DeleteArticleServlet" method="post" class="d-inline">
                                        <input type="hidden" name="id" value="${Article.id}" />
                                        <button type="submit" class="btn-delete">
                                            <i class="fas fa-trash-alt me-1"></i> Delete
                                        </button>
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    
</div>

<script>
    let openContentId = null;

    function toggleContent(contentId, event) {
        event.preventDefault();
        const contentElement = document.getElementById(contentId);

        if (openContentId && openContentId !== contentId) {
            document.getElementById(openContentId).style.display = 'none';
        }

        if (contentElement.style.display === 'block') {
            contentElement.style.display = 'none';
            openContentId = null;
        } else {
            contentElement.style.display = 'block';
            openContentId = contentId;
        }
    }

    document.addEventListener('click', function(event) {
        if (!event.target.closest('.article-title') && !event.target.closest('.article-content')) {
            if (openContentId) {
                document.getElementById(openContentId).style.display = 'none';
                openContentId = null;
            }
        }
    });
</script>

<jsp:include page="StaffFooter.jsp">
    <jsp:param name="additionalJs" value="" />
</jsp:include>
