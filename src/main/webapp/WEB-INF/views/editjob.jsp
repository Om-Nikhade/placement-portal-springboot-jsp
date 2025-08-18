<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Job - Placement Portal</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body { background-color: #f4f6f9; font-family: 'Poppins', sans-serif; }
        .container { max-width: 800px; margin-top: 40px; }
        .card { border-radius: 12px; box-shadow: 0 4px 8px rgba(0,0,0,0.1); }
    </style>
</head>
<body>

<div class="container">
    <div class="card p-4">
        <h3 class="mb-4 text-center">Edit Job</h3>
        <form action="${pageContext.request.contextPath}/admin/editJob/${job.jobid}" method="post">
            <div class="mb-3">
                <label class="form-label">Job Title</label>
                <input type="text" class="form-control" name="title" value="${job.title}" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Company</label>
                <input type="text" class="form-control" name="company" value="${job.company}" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Location</label>
                <input type="text" class="form-control" name="location" value="${job.location}" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Salary</label>
                <input type="number" class="form-control" name="salary" value="${job.salary}">
            </div>
            <div class="mb-3">
                <label class="form-label">Application Deadline</label>
                <input type="date" class="form-control" name="lastdate" value="${job.lastdate}" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Description</label>
                <textarea class="form-control" rows="4" name="description" required>${job.description}</textarea>
            </div>
            <div class="d-flex justify-content-between">
                <a href="${pageContext.request.contextPath}/admin/dashboard" class="btn btn-secondary">Cancel</a>
                <button type="submit" class="btn btn-success">Update Job</button>
            </div>
        </form>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
