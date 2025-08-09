<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Register Page</title>
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
            width: 350px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        input[type="submit"],
        .back-btn {
            background: #007bff;
            border: none;
            padding: 10px;
            width: 100%;
            color: white;
            font-weight: bold;
            cursor: pointer;
            border-radius: 5px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
        }

        .back-btn {
            background: #6c757d;
            margin-top: 10px;
        }

        .error {
            color: red;
            margin-bottom: 10px;
        }

        .success {
            color: green;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
<div class="register-container">
    <h2>Register</h2>

    <c:if test="${not empty param.error}">
        <div class="error">${param.error}</div>
    </c:if>

    <c:if test="${not empty param.success}">
        <div class="success">${param.success}</div>
    </c:if>

    <form action="<c:url value='/register'/>" method="post">
        <label>email:</label><br/>
        <input type="text" name="email" required /><br/>

        <label>Password:</label><br/>
        <input type="password" name="password" required /><br/>

        <input type="submit" value="Register" />
        <a href="<c:url value='/loginn'/>" class="back-btn">Back to Login</a>
    </form>
</div>
</body>
</html>
