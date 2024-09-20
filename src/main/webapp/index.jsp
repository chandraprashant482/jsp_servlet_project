<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f0f4f8; /* Light and calm background color */
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        background-image: linear-gradient(to right, #e0eafc, #cfdef3); /* Soft blue gradient */
    }
    form {
        background-color: #fff;
        padding: 50px 40px;
        border-radius: 16px;
        box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
        width: 380px;
        text-align: center;
        position: relative;
    }
    h2 {
        color: #0072ff;
        font-size: 28px;
        font-weight: 700;
        margin-bottom: 30px;
    }
    input[type="email"], input[type="password"] {
        width: 100%;
        padding: 16px 15px;
        margin: 15px 0;
        border: 2px solid #ccc;
        border-radius: 10px;
        font-size: 18px;
        transition: border 0.3s ease;
    }
    input[type="email"]:focus, input[type="password"]:focus {
        border-color: #0072ff;
        outline: none;
        box-shadow: 0 0 6px rgba(0, 114, 255, 0.2);
    }
    input[type="submit"] {
        width: 100%;
        padding: 15px;
        background-color: #28a745;
        color: white;
        border: none;
        border-radius: 10px;
        font-size: 18px;
        font-weight: bold;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.2s ease;
        margin-top: 20px;
    }
    input[type="submit"]:hover {
        background-color: #218838;
        transform: scale(1.05);
    }
    .icon {
        width: 90px;
        height: 90px;
        background-color: #0072ff;
        color: white;
        border-radius: 50%;
        display: flex;
        justify-content: center;
        align-items: center;
        font-size: 40px;
        font-weight: bold;
        margin: 0 auto 25px;
    }
    .error {
        color: red;
        font-size: 14px;
        margin-top: 20px;
    }
    /* Responsive Styles */
    @media (max-width: 768px) {
        form {
            width: 90%;
            padding: 40px;
        }
    }
</style>
</head>
<body>
    <form action="VeifyLogin" method="post">
        <div class="icon">🔒</div>
        <h2>LOGIN HERE</h2>
        <input type="email" name="email" placeholder="Enter your email" required />
        <input type="password" name="password" placeholder="Enter your password" required />
        <input type="submit" value="Login" />
    </form>

    <%
    if(request.getAttribute("error") != null) {
    %>
        <div class="error"><%= request.getAttribute("error") %></div>
    <%
    }
    %>
</body>
</html>
