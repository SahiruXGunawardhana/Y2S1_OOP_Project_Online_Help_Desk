</div>
    <!-- Main Content Container End -->

    <!-- Enhanced Fixed Footer -->
    <footer class="bg-darker-blue text-white py-3 fixed-bottom">
        <div class="container">
            <div class="row align-items-center">
                <!-- University Logo & Copyright -->
                <div class="col-md-4 text-center text-md-start mb-2 mb-md-0">
                    <h5 class="mb-0">University Help Desk</h5>
                    <p class="small mb-0">&copy; Copyright 2025. All Rights Reserved</p>
                </div>
                
                <!-- Quick Links & Contact Info -->
                <div class="col-md-4 mb-2 mb-md-0">
                    <div class="d-flex flex-column align-items-center">
                        <div class="d-flex justify-content-center gap-3 mb-2">
                            <a href="#" class="text-white small footer-link">Privacy Policy</a>
                            <a href="#" class="text-white small footer-link">Contact Us</a>
                            <a href="#" class="text-white small footer-link">Support Hours</a>
                        </div>
                        <div class="d-flex flex-column align-items-center">
                            <p class="small mb-1"><i class="fas fa-phone-alt me-2"></i>+94 11 2345678</p>
                            <p class="small mb-0"><i class="fas fa-envelope me-2"></i>helpdesk@university.edu.lk</p>
                        </div>
                    </div>
                </div>
                
                <!-- Social Media Icons -->
                <div class="col-md-4 text-center text-md-end">
                    <div class="d-flex justify-content-center justify-content-md-end gap-3">
                        <a href="#" class="text-white social-icon">
                            <i class="fab fa-facebook fa-lg"></i>
                        </a>
                        <a href="#" class="text-white social-icon">
                            <i class="fab fa-twitter fa-lg"></i>
                        </a>
                        <a href="#" class="text-white social-icon">
                            <i class="fab fa-instagram fa-lg"></i>
                        </a>
                        <a href="#" class="text-white social-icon">
                            <i class="fab fa-linkedin fa-lg"></i>
                        </a>
                        <a href="#" class="text-white social-icon">
                            <i class="fab fa-youtube fa-lg"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- Bootstrap JS Bundle with Popper -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>

    <!-- Additional JavaScript can be added in specific pages -->
    <c:if test="${not empty param.additionalJs}">
        <script>
            ${param.additionalJs}
        </script>
    </c:if>
</body>
</html>