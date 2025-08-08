<%@ include file="StaffHeader.jsp" %>
<!-- Include Tailwind CSS CDN -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css" rel="stylesheet">
<!-- Custom Styles to ensure everything works properly -->
<style>
    /* Ensure proper spacing */
    .form-group {
        margin-bottom: 1.5rem;
    }
    
    /* Button styles */
    .btn-blue {
        background-color: #3498db;
        color: white;
        padding: 0.75rem 1rem;
        border-radius: 0.375rem;
        font-weight: 500;
        transition: background-color 0.2s;
    }
    
    .btn-blue:hover {
        background-color: #2980b9;
    }
    
    .btn-gray {
        background-color: #f3f4f6;
        color: #4b5563;
        padding: 0.75rem 1rem;
        border-radius: 0.375rem;
        font-weight: 500;
        border: 1px solid #e5e7eb;
        transition: background-color 0.2s;
    }
    
    .btn-gray:hover {
        background-color: #e5e7eb;
    }
    
    .btn-dark {
        background-color: #1f2937;
        color: white;
        padding: 0.75rem 1rem;
        border-radius: 0.375rem;
        font-weight: 500;
        transition: background-color 0.2s;
    }
    
    .btn-dark:hover {
        background-color: #374151;
    }
    
    /* Input styles */
    .form-input {
        width: 100%;
        padding: 0.75rem 1rem;
        border: 1px solid #d1d5db;
        border-radius: 0.375rem;
        transition: border-color 0.2s, box-shadow 0.2s;
    }
    
    .form-input:focus {
        outline: none;
        border-color: #3498db;
        box-shadow: 0 0 0 3px rgba(52, 152, 219, 0.25);
    }
    
    /* Card styles */
    .card {
        background-color: white;
        border-radius: 0.5rem;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        padding: 1.5rem;
    }
    
    /* Icon positioning */
    .input-icon {
        position: relative;
    }
    
    .input-icon i {
        position: absolute;
        left: 12px;
        top: 50%;
        transform: translateY(-50%);
        color: #9ca3af;
    }
    
    .input-icon input {
        padding-left: 2.5rem;
    }
    
    /* Editor toolbar */
    .editor-toolbar {
        display: flex;
        flex-wrap: wrap;
        gap: 0.5rem;
        padding: 0.5rem;
        background-color: #f9fafb;
        border-bottom: 1px solid #e5e7eb;
    }
    
    .toolbar-btn {
        padding: 0.25rem 0.5rem;
        border-radius: 0.25rem;
        cursor: pointer;
    }
    
    .toolbar-btn:hover {
        background-color: #e5e7eb;
    }
    
    .divider {
        width: 1px;
        background-color: #e5e7eb;
        margin: 0 0.5rem;
    }
</style>

<!-- Main Section -->
<main class="container mx-auto px-4 py-8">
    <% 
    String id = request.getParameter("id");
    String article_title = request.getParameter("article_title");
    String article_content = request.getParameter("article_content");
    String article_category = request.getParameter("article_category");
    String article_tags = request.getParameter("article_tags") != null ? request.getParameter("article_tags") : "";
    %>

    <div class="card max-w-4xl mx-auto">
        <!-- Page Header -->
        <div class="border-b border-gray-200 pb-4 mb-6">
            <h2 class="text-2xl font-bold text-gray-800" style="display: flex; align-items: center;">
                <i class="fas fa-edit mr-3" style="color: #3498db;"></i>
                Update Article
            </h2>
            <p class="text-gray-600 mt-2">Modify an existing help desk knowledge base article</p>
        </div>

        <!-- Form -->
        <form id="updateArticleForm" action="UpdateArticleServlet" method="post" class="space-y-6">
            <!-- ID Field (Hidden) -->
            <div class="form-group">
                <label for="id" class="block text-sm font-medium text-gray-700 mb-1">
                    Article ID <span class="text-gray-500">(read-only)</span>
                </label>
                <div class="input-icon">
                    <i class="fas fa-fingerprint"></i>
                    <input 
                        type="text" 
                        id="id" 
                        name="id" 
                        class="form-input bg-gray-100" 
                        value="<%=id%>" 
                        readonly
                    >
                </div>
            </div>

            <!-- Title Field -->
            <div class="form-group">
                <label for="article_title" class="block text-sm font-medium text-gray-700 mb-1">
                    Article Title <span class="text-red-500">*</span>
                </label>
                <div class="input-icon">
                    <i class="fas fa-heading"></i>
                    <input 
                        type="text" 
                        id="article_title" 
                        name="article_title" 
                        class="form-input"
                        placeholder="Enter a descriptive title (minimum 5 characters)" 
                        value="<%=article_title%>"
                        required
                    >
                </div>
                <p class="mt-1 text-xs text-gray-500">A clear, concise title helps users find your article</p>
            </div>

            <!-- Category Field -->
            <div class="form-group">
                <label for="article_category" class="block text-sm font-medium text-gray-700 mb-1">
                    Category <span class="text-red-500">*</span>
                </label>
                <div class="input-icon">
                    <i class="fas fa-folder"></i>
                    <input 
                        type="text" 
                        id="article_category" 
                        name="article_category" 
                        class="form-input"
                        placeholder="Enter article category (minimum 3 characters)" 
                        value="<%=article_category%>"
                        required
                    >
                </div>
                <p class="mt-1 text-xs text-gray-500">Categorize your article to help with organization</p>
            </div>

            <!-- Content Field -->
            <div class="form-group">
                <label for="article_content" class="block text-sm font-medium text-gray-700 mb-1">
                    Article Content <span class="text-red-500">*</span>
                </label>
                <div style="border: 1px solid #d1d5db; border-radius: 0.375rem; overflow: hidden;">
                    <!-- Simple Editor Toolbar -->
                    <div class="editor-toolbar">
                        <button type="button" class="toolbar-btn" title="Bold">
                            <i class="fas fa-bold" style="color: #4b5563;"></i>
                        </button>
                        <button type="button" class="toolbar-btn" title="Italic">
                            <i class="fas fa-italic" style="color: #4b5563;"></i>
                        </button>
                        <button type="button" class="toolbar-btn" title="Underline">
                            <i class="fas fa-underline" style="color: #4b5563;"></i>
                        </button>
                        <div class="divider"></div>
                        <button type="button" class="toolbar-btn" title="Heading">
                            <i class="fas fa-heading" style="color: #4b5563;"></i>
                        </button>
                        <button type="button" class="toolbar-btn" title="Bulleted List">
                            <i class="fas fa-list-ul" style="color: #4b5563;"></i>
                        </button>
                        <button type="button" class="toolbar-btn" title="Numbered List">
                            <i class="fas fa-list-ol" style="color: #4b5563;"></i>
                        </button>
                        <div class="divider"></div>
                        <button type="button" class="toolbar-btn" title="Insert Link">
                            <i class="fas fa-link" style="color: #4b5563;"></i>
                        </button>
                        <button type="button" class="toolbar-btn" title="Insert Image">
                            <i class="fas fa-image" style="color: #4b5563;"></i>
                        </button>
                        <button type="button" class="toolbar-btn" title="Insert Table">
                            <i class="fas fa-table" style="color: #4b5563;"></i>
                        </button>
                    </div>
                    
                    <!-- Text Area -->
                    <textarea 
                        id="article_content" 
                        name="article_content" 
                        rows="15"
                        style="width: 100%; padding: 0.75rem 1rem; border: none; outline: none;"
                        placeholder="Write your article content here (minimum 20 characters)..."
                        required
                    ><%=article_content%></textarea>
                </div>
                <p class="mt-1 text-xs text-gray-500">Format your content to make it easy to read and understand</p>
            </div>
            
            <!-- Tags Field (Optional) -->
            <div class="form-group">
                <label for="article_tags" class="block text-sm font-medium text-gray-700 mb-1">
                    Tags <span class="text-gray-500">(optional)</span>
                </label>
                <div class="input-icon">
                    <i class="fas fa-tags"></i>
                    <input 
                        type="text" 
                        id="article_tags" 
                        name="article_tags" 
                        class="form-input"
                        placeholder="Enter tags separated by commas"
                        value="<%=article_tags%>" 
                    >
                </div>
                <p class="mt-1 text-xs text-gray-500">Add relevant tags to improve searchability</p>
            </div>

            <!-- Action Buttons -->
            <div style="display: flex; flex-direction: column; gap: 1rem; padding-top: 1rem; border-top: 1px solid #e5e7eb; margin-top: 1rem;">
                <div style="display: flex; flex-wrap: wrap; gap: 1rem;">
                    <button 
                        type="submit" 
                        class="btn-blue"
                        style="flex: 1; display: flex; align-items: center; justify-content: center;"
                    >
                        <i class="fas fa-save" style="margin-right: 0.5rem;"></i>
                        Update Article
                    </button>
                    <button 
                        type="button" 
                        class="btn-gray"
                        style="flex: 1; display: flex; align-items: center; justify-content: center;"
                        onclick="window.location.href='ViewArticleServlet'"
                    >
                        <i class="fas fa-times" style="margin-right: 0.5rem;"></i>
                        Cancel
                    </button>
                    <button 
                        type="button" 
                        class="btn-dark"
                        style="flex: 1; display: flex; align-items: center; justify-content: center;"
                        id="previewBtn"
                    >
                        <i class="fas fa-eye" style="margin-right: 0.5rem;"></i>
                        Preview
                    </button>
                </div>
            </div>
        </form>
    </div>
</main>

<script>
// Form validation script
document.getElementById("updateArticleForm").addEventListener("submit", function(event) {
    const title = document.getElementById("article_title").value.trim();
    const content = document.getElementById("article_content").value.trim();
    const category = document.getElementById("article_category").value.trim();
    
    let errorMessages = [];
    
    if (title.length < 5) {
        errorMessages.push("Title must be at least 5 characters long");
    }
    
    if (content.length < 20) {
        errorMessages.push("Content must be at least 20 characters long");
    }
    
    if (category.length < 3) {
        errorMessages.push("Category must be at least 3 characters long");
    }
    
    if (errorMessages.length > 0) {
        // Stop form from submitting
        event.preventDefault();
        
        // Create a simple error alert instead of complex HTML structure
        let errorMsg = "Please fix the following issues:\n";
        errorMessages.forEach(msg => {
            errorMsg += "- " + msg + "\n";
        });
        
        alert(errorMsg);
    }
});

// Mock editor toolbar functionality
document.querySelectorAll('.toolbar-btn').forEach(button => {
    button.addEventListener('click', function() {
        // This is just for UI feedback - in a real implementation, this would apply formatting
        this.classList.toggle('bg-gray-200');
        setTimeout(() => this.classList.remove('bg-gray-200'), 200);
    });
});

// Preview button functionality (mock)
document.getElementById("previewBtn").addEventListener("click", function() {
    const content = document.getElementById("article_content").value.trim();
    const title = document.getElementById("article_title").value.trim();
    
    if (title === "" || content === "") {
        alert("Please fill in both the title and content fields to preview");
        return;
    }
    
    // In a real implementation, this would show a preview - here we just give feedback
    alert("Preview feature would show how your article will look when published.");
});
</script>

<%@ include file="StaffFooter.jsp" %>