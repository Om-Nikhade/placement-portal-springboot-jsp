<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Placement Portal | Job Search</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background: #f5f7fa;
            font-family: 'Segoe UI', sans-serif;
        }

        .navbar {
            background: #003366;
        }
        .navbar .navbar-brand, .navbar .nav-link {
            color: white !important;
        }
        .navbar .btn-login {
            margin-left: 10px;
        }

        .hero-section {
            background: linear-gradient(to right, #0066ff, #003399);
            color: white;
            padding: 60px 20px;
            text-align: center;
        }

        .hero-section h1 {
            font-size: 3rem;
            margin-bottom: 10px;
        }

        .hero-section p {
            font-size: 1.2rem;
        }

        .search-bar {
            margin-top: 20px;
        }

        .job-card {
            background: white;
            padding: 20px;
            margin-bottom: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        footer {
            background: #003366;
            color: white;
            padding: 15px 0;
            text-align: center;
        }

        .btn-search {
            background-color: #003366;
            color: white;
        }

        .btn-search:hover {
            background-color: #001f4d;
        }
    </style>
</head>
<body>

<!-- Navbar with Login Buttons -->
<nav class="navbar navbar-expand-lg">
    <div class="container">
        <a class="navbar-brand" href="/">Placement Portal</a>
        <div class="ml-auto">
            <a href="loginn" class="btn btn-light btn-sm btn-login">User Login</a>
            <a href="/admin/login" class="btn btn-warning btn-sm btn-login">Admin Login</a>
        </div>
    </div>
</nav>

<!-- Hero Section -->
<div class="hero-section">
    <h1>Find your dream job</h1>
    <p>Search from thousands of job opportunities across industries</p>
    <form action="search" method="get" class="form-inline justify-content-center search-bar">
        <input type="text" name="keyword" class="form-control mr-2" placeholder="Job title, skill, or company">
        <input type="text" name="location" class="form-control mr-2" placeholder="Location">
        <button type="submit" class="btn btn-search">Search Jobs</button>
    </form>
</div>
    <!-- Example Job Card -->
    <div class="container mt-4">
        <h3 class="mb-4">Featured Jobs</h3>

        <c:forEach var="job" items="${job}">
            <div class="job-card">
                <h5>${job.title}</h5>
                <p><strong>Company:</strong> ${job.company}</p>
                <p><strong>Location:</strong> ${job.location}</p>
                <a href="/loginn" class="btn btn-primary">Apply Now</a>
            </div>
        </c:forEach>
    </div>
</div>

<!-- Footer -->
<footer>
    &copy; 2025 Placement Portal Om Nikhade. All rights reserved.
</footer>

</body>
</html>
