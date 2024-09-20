<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="Menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Registration</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f0f4f8;
        margin: 0;
        padding: 0;
    }

    /* Navigation menu styles */
    .nav {
        position: absolute;
        top: 10px;
        left: 10px;
    }

    /* Centering form and overall page layout */
    .container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: calc(100vh - 60px); /* Adjust height to account for nav */
        background-color: #f0f4f8;
    }
    
    h2 {
        color: #0072ff;
        text-align: center;
        margin-bottom: 20px;
        font-size: 26px;
    }
    
    form {
        background-color: #fff;
        padding: 40px;
        border-radius: 12px;
        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
        width: 400px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 15px;
    }
    
    td {
        padding: 12px 0;
        vertical-align: top;
        font-size: 16px;
        color: #555;
    }

    input[type="text"], input[type="email"] {
        width: 100%;
        padding: 12px;
        margin: 5px 0;
        border: 1px solid #ccc;
        border-radius: 8px;
        font-size: 16px;
        transition: border-color 0.3s ease;
    }

    input[type="text"]:focus, input[type="email"]:focus {
        border-color: #0072ff;
        outline: none;
        box-shadow: 0 0 5px rgba(0, 114, 255, 0.2);
    }
    
    input[type="submit"] {
        padding: 12px 20px;
        background-color: #28a745;
        color: white;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        margin-top: 15px;
        font-size: 16px;
        font-weight: bold;
        transition: background-color 0.3s ease;
        width: 100%;
    }

    input[type="submit"]:hover {
        background-color: #218838;
    }
</style>
</head>
<body>
    <div class="nav">
        <%-- Menu.jsp will be included here --%>
    </div>
    <div class="container">
        <form action="createRegistration" method="post">
            <h2>CREATE REGISTRATION</h2>
            <table>
                <tr>
                    <td>NAME</td>
                    <td><input type="text" name="firstname" placeholder="Enter your name" required></td>
                </tr>
                <tr>
                    <td>EMAIL</td>
                    <td><input type="email" name="email" placeholder="Enter your email" required></td>
                </tr>
                <tr>
                    <td>CONTACT NO.</td>
                    <td><input type="text" name="mobile" placeholder="Enter your contact number" required></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <input type="submit" value="ADD">
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
