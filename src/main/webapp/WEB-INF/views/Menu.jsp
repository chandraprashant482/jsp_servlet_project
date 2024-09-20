<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Menu</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f9f9f9;
        margin: 0;
        padding: 0;
    }

    /* Navigation bar at the top-right corner */
    .navbar {
        display: flex;
        justify-content: flex-end;
        align-items: center;
        background-color: #007bff;
        padding: 10px 30px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    }

    .navbar a {
        color: white;
        text-decoration: none;
        margin-left: 20px;
        padding: 8px 15px;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        border-radius: 5px;
    }



    .navbar form {
        margin-left: 20px;
        background-color: #007bff;
    }

    .navbar form input[type="submit"] {
        padding: 8px 12px;
        background-color: #dc3545; /* Red color */
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 14px; /* Smaller font size */
        
    }

    .navbar form input[type="submit"]:hover {
        background-color: #007bff; /* Darker red on hover */
    }
</style>
</head>
<body>
    <!-- Top navigation bar -->
    <div class="navbar">
        <a href="createRegistration">Add Registration</a>
        <a href="fetchReg">List Registration</a>
        <form action="Logout" method="post">
            <input type="submit" value="Logout">
        </form>
    </div>
</body>
</html>
