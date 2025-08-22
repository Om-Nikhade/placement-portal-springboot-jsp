<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dashboard | Placement Portal</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f6f8;
        }

        .navbar {
            background-color: #007bff;
            color: white;
            padding: 15px 30px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .navbar h1 {
            margin: 0;
            font-size: 22px;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            font-weight: bold;
            margin-left: 20px;
        }

        .container {
            padding: 30px;
        }

        .card {
            background-color: white;
            padding: 25px;
            margin-bottom: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }

        .card h3 {
            margin-top: 0;
            color: #333;
        }

        .grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 20px;
        }

        .logout-btn {
            background-color: #dc3545;
            padding: 10px 16px;
            color: white;
            border: none;
            border-radius: 4px;
            font-weight: bold;
            cursor: pointer;
        }

        .logout-btn:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>

<div class="navbar">
    <h1>Placement Portal Dashboard</h1>
    <div>
        <a href="/profile">My Profile</a>
        <a href="/logout"><button class="logout-btn">Logout</button></a>
    </div>
</div>

<div class="container">
    <div class="grid">

        <div class="card">
            <h3>Available Jobs</h3>
            <p>Browse and apply to the latest job opportunities posted by recruiters.</p>
            <a href="/">View Jobs</a>
        </div>

        <div class="card">
            <h3>Applied Jobs</h3>
            <p>Check the status of jobs you have applied for.</p>
            <a href="/applications">View Applications</a>
        </div>

        <div class="card">
            <h3>Profile Status</h3>
            <p>Complete and update your resume and academic records.</p>
            <a href="/profile">Update Profile</a>
        </div>

        <div class="card">
            <h3>Messages</h3>
            <p>View messages or interview calls from recruiters.</p>
            <a href="/messages">Check Messages</a>
        </div>

    </div>
</div>

</body>
</html>
