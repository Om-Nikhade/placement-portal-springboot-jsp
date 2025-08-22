<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>User Registration</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap JS Bundle (with Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <style>
        body {
            background: #f0f2f5;
            font-family: Arial, sans-serif;
            display: flex;
            height: 100vh;
            justify-content: center;
            align-items: center;
        }
        .register-container {
            background: white;
            padding: 30px;
            border-radius: 10px;
            width: 100%;
            max-width: 400px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.15);
        }
        .register-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .form-label {
            font-weight: 500;
            margin-top: 10px;
        }
        .btn-primary {
            width: 100%;
        }
        .back-btn {
            width: 100%;
            margin-top: 10px;
        }
    </style>
</head>
<body>

<div class="register-container">
    <h2>User Registration</h2>

    <form action="<c:url value='/user'/>" method="post">
        <label class="form-label">Name</label>
        <input type="text" name="name" class="form-control" required />

        <label class="form-label">Email</label>
        <input type="email" name="email" class="form-control" required />

        <label class="form-label">Mobile Number</label>
        <input type="text" name="phone" class="form-control" required />

        <label class="form-label">College</label>
        <input type="text" name="college" class="form-control" required />

        <label class="form-label">Degree</label>
        <input type="text" name="degree" class="form-control" />

        <label class="form-label">Year of Passing</label>
        <input type="date" name="year" class="form-control" />

        <label class="form-label">Password</label>
        <input type="password" name="password" class="form-control" required />

        <label class="form-label">Confirm Password</label>
        <input type="password" name="Cpassword" class="form-control" required />

        <button type="submit" class="btn btn-primary mt-3">Register</button>
        <a href="<c:url value='/loginn'/>" class="btn btn-secondary back-btn">Back to Login</a>
    </form>
</div>

<!-- Bootstrap Modal -->
<div class="modal fade" id="popupModal" tabindex="-1" aria-labelledby="popupModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header
                 <c:choose>
                     <c:when test="${popupType eq 'success'}">bg-success</c:when>
                     <c:when test="${popupType eq 'error'}">bg-danger</c:when>
                     <c:otherwise>bg-primary</c:otherwise>
                 </c:choose>
                 text-white">
                <h5 class="modal-title" id="popupModalLabel">Message</h5>
                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                ${popupMessage}
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">OK</button>
            </div>
        </div>
    </div>
</div>

<!-- Script to trigger modal -->
<c:if test="${not empty popupMessage}">
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            var myModal = new bootstrap.Modal(document.getElementById('popupModal'));
            myModal.show();
        });
    </script>
</c:if>

</body>
</html>
