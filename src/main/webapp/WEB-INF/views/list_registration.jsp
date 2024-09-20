<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="Menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Registrations</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 20px;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
    }
    h2 {
        color: #333;
        margin-bottom: 20px;
    }
    table {
        width: 80%;
        border-collapse: collapse;
        margin: 20px 0;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    }
    th, td {
        padding: 12px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
    th {
        background-color: #007bff;
        color: white;
        text-transform: uppercase;
        letter-spacing: 1px;
    }
    tr:hover {
        background-color: #f1f1f1;
    }
    td a {
        text-decoration: none;
        color: #007bff;
        font-weight: bold;
    }
    td a:hover {
        text-decoration: underline;
        color: #0056b3;
    }
    table, th, td {
        border: 1px solid #ddd;
        border-radius: 5px;
    }
</style>
</head>
<body>
<h2>ALL REGISTRATIONS</h2>
<table>
<tr>
    <th>NAME</th>
    <th>EMAIL</th>
    <th>MOBILE</th>
    <th>DELETE</th>
    <th>UPDATE</th>
</tr>
<%
    ResultSet result = (ResultSet)request.getAttribute("result");
    while(result.next()) { %>
    <tr>
        <td><%= result.getString(1) %></td>
        <td><%= result.getString(2) %></td>
        <td><%= result.getString(3) %></td>
        <td><a href="deletereg?email=<%= result.getString(2) %>">Delete</a></td>
        <td><a href="updatereg?email=<%= result.getString(2) %>&mobile=<%= result.getString(3) %>">Update</a></td>
    </tr>
<% } %>
</table>
</body>
</html>
