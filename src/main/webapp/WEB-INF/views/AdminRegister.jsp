<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Admin Registration | Placement Portal</title>
    <!-- Bootstrap CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f4f6f8;
        }
        .register-container {
            margin-top: 50px;
            padding: 30px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .form-label {
            font-weight: 500;
        }
    </style>
</head>
<body>
<div class="container col-md-6 offset-md-3 register-container">
    <h3 class="text-center mb-4">Admin Registration</h3>
    <form action="/admin" method="post">
        <div class="mb-3">
            <label for="fullname" class="form-label">Full Name</label>
            <input type="text" name="name" id="fullname" class="form-control" required placeholder="Enter full name">
        </div>
        <div class="mb-3">
            <label for="email" class="form-label">Official Email</label>
            <input type="email" name="email" id="email" class="form-control" required placeholder="Enter email">
        </div>
        <div class="mb-3">
            <label for="company" class="form-label">Company Name</label>
            <input type="text" name="company" id="company" class="form-control" required placeholder="Enter company name">
        </div>
        <div class="mb-3">
            <label for="designation" class="form-label">Designation</label>
            <input type="text" name="designation" id="designation" class="form-control" required placeholder="e.g., HR Manager">
        </div>
        <div class="mb-3">
            <label for="mobile" class="form-label">Mobile Number</label>
            <input type="tel" name="phone" id="mobile" class="form-control" required placeholder="Enter mobile number">
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" name="password" id="password" class="form-control" required placeholder="Choose a strong password">
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Confirm Password</label>
            <input type="password" name="Cpassword" id="password" class="form-control" required placeholder="Choose a strong password">
        </div>
        <div class="d-grid mb-3">
            <input type="submit" value="Register as Admin" class="btn btn-success">
        </div>
        <div class="text-center">
            <p>Already registered? <a href="/admin/login">Login here</a></p>
        </div>
    </form>
</div>
</body>
</html>
