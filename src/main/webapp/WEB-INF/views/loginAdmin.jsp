<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin Login | Placement Portal</title>
    <!-- Bootstrap CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #eef2f5;
        }
        .login-container {
            margin-top: 80px;
            padding: 30px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
        }
        .form-label {
            font-weight: 500;
        }
    </style>
</head>
<body>
<div class="container col-md-4 offset-md-4 login-container">
    <h3 class="text-center mb-4">Admin Login</h3>
    <form action="/admin/login" method="post">
        <div class="mb-3">
            <label for="email" class="form-label">Email ID</label>
            <input type="email" name="email" id="email" class="form-control" required placeholder="Enter your email">
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" name="password" id="password" class="form-control" required placeholder="Enter your password">
        </div>
        <div class="d-grid mb-3">
            <input type="submit" value="Login" class="btn btn-primary">
        </div>
        <div class="text-center">
            <a href=forgot-password">Forgot Password?</a>
            <br>
            <p class="mt-2">New Admin? <a href="/admin">Register here</a></p>
        </div>
    </form>
</div>
</body>
</html>
