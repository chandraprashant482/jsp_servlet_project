<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="Menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Registration</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f9f9f9;
        margin: 0;
        padding: 0;
    }
    .nav {
        position: absolute;
        top: 10px;
        left: 10px;
    }
    .container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: calc(100vh - 60px); /* Adjust height to account for nav */
    }
    h2 {
        color: #333;
        text-align: center;
        margin-bottom: 20px;
    }
    form {
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    }
    table {
        width: 100%;
        margin: 0 auto;
    }
    td {
        padding: 10px;
    }
    input[type="email"], input[type="text"] {
        width: 100%;
        padding: 8px;
        margin: 5px 0;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    input[type="submit"] {
        padding: 10px 15px;
        background-color: #007bff;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
    <div class="nav">
        <%-- Menu.jsp will be included here --%>
    </div>
    <div class="container">
        <form action="updatereg" method="post">
            <h2>UPDATE REGISTRATION</h2>
            <table>
                <tr>
                    <td>EMAIL</td>
                    <td><input type="email" name="email" value="<%=request.getAttribute("email") %>" readonly="readonly"></td>
                </tr>
                <tr>
                    <td>Contact NO.</td>
                    <td><input type="text" name="mobile" value="<%=request.getAttribute("mobile") %>"></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;"><input type="submit" value="Update"></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
