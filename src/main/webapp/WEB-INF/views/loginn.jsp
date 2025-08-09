<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login | Placement Portal</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            background: url('https://images.unsplash.com/photo-1581092919535-6c77c9d4e529') no-repeat center center fixed;
            background-size: cover;
            font-family: 'Segoe UI', sans-serif;
        }
        .login-container {
            margin-top: 100px;
            background: rgba(255, 255, 255, 0.9);
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.3);
        }
        .form-control {
            border-radius: 20px;
        }
        .btn {
            border-radius: 20px;
        }
    </style>
</head>
<body>
    <div class="container col-md-4 offset-md-4 login-container">
        <h3 class="text-center mb-4">Login to Placement Portal</h3>
        <form action="/loginn" method="post">
            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="text" name="email" id="email" class="form-control" required placeholder="Enter your email">
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" name="password" id="password" class="form-control" required placeholder="Enter password">
            </div>
            <div class="d-grid mb-3">
                <input type="submit" value="Loginn" class="btn btn-primary">
            </div>
        </form>
        <div class="text-center">
            <p>Don't have an account?</p>
            <a href="/register" class="btn btn-outline-secondary">Register</a>
        </div>
    </div>
</body>
</html>
