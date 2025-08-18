<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard - Placement Portal</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body { background-color: #f4f6f9; font-family: 'Poppins', sans-serif; }
        .navbar { background-color: #0d6efd; }
        .navbar-brand, .nav-link { color: white !important; }
        .card { border-radius: 12px; }
        .table th, .table td { vertical-align: middle; }
    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg">
    <div class="container">
        <a class="navbar-brand fw-bold" href="#">Admin Panel</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="#">Dashboard</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Jobs</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Applicants</a></li>
                <li class="nav-item"><a class="nav-link text-warning fw-bold" href="/logout">Logout</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Dashboard Stats -->
<div class="container my-4">
    <div class="row g-4">
        <div class="col-md-3">
            <div class="card text-center p-3 shadow">
                <h5>Total Jobs</h5>
                <h3>${totalJobs}</h3>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card text-center p-3 shadow">
                <h5>Total Applicants</h5>
                <h3>${totalApplicants}</h3>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card text-center p-3 shadow">
                <h5>Active Jobs</h5>
                <h3>${activeJobs}</h3>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card text-center p-3 shadow">
                <h5>Companies</h5>
                <h3>${totalCompanies}</h3>
            </div>
        </div>
    </div>
</div>

<!-- Job Management Table -->
<div class="container mt-4">
    <div class="d-flex justify-content-between align-items-center mb-3">
        <h4>Manage Jobs</h4>
        <!-- Button trigger modal -->
        <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addJobModal">
            + Add Job
        </button>
    </div>
    <div class="table-responsive shadow">
        <table class="table table-bordered table-hover">
            <thead class="table-dark">
            <tr>
                <th>Job ID</th>
                <th>Title</th>
                <th>Company</th>
                <th>Location</th>
                <th>Description</th>
                <th>Posted Date</th>
                <th>Activity</th>
            </tr>
            </thead>
            <tbody>
                <c:forEach var="jobs" items="${jobs}">
                    <tr>
                        <td>${jobs.jobid}</td>
                        <td>${jobs.title}</td>
                        <td>${jobs.company}</td>
                        <td>${jobs.location}</td>
                        <td>${jobs.description}</td>
                        <td>${jobs.lastdate}</td>
                        <td>
                            <a href="/admin/editJob/${jobs.jobid}" class="btn btn-warning btn-sm">Edit</a>
                            <a href="/admin/deleteJob/${jobs.jobid}" class="btn btn-danger btn-sm"
                               onclick="return confirm('Are you sure you want to delete this job?');">
                                Delete
                            </a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

<!-- Add Job Modal -->
<div class="modal fade" id="addJobModal" tabindex="-1" aria-labelledby="addJobModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form action="/admin/addjob" method="post">
                <div class="modal-header">
                    <h5 class="modal-title" id="addJobModalLabel">Add New Job</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body row g-3">
                    <div class="col-md-6">
                        <label class="form-label">Job Title</label>
                        <input type="text" class="form-control" name="title" required>
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">Company</label>
                        <input type="text" class="form-control" name="company" required>

                    </div>
                    <div class="col-md-6">
                        <label class="form-label">Location</label>
                        <input type="text" class="form-control" name="location" required>
                    </div>

                    <div class="col-md-6">
                        <label class="form-label">Salary</label>
                        <input type="number" class="form-control" name="salary">
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">Application Deadline</label>
                        <input type="date" class="form-control" name="lastdate" required>
                    </div>
                    <div class="col-12">
                        <label class="form-label">Description</label>
                        <textarea class="form-control" rows="3" name="description" required></textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-success">Save Job</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
