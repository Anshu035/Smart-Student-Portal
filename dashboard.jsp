<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.mycompany.adminpanel.DashboardServlet.Student" %>
<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
       <link 
      rel="stylesheet" 
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />
    <style>
        body {
            background: linear-gradient(to right, #a1c4fd, #c2e9fb);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .navbar {
            background-color: #343a40;
            padding: 15px;

        }
        .navbar-brand {
            font-size: 22px;
            font-weight: bold;
            color: white;
             align-content:space-between;;   
        }
        .dashboard-container {
            max-width: 1000px;
            margin: 50px auto;
            background: white;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .table-container {
            overflow-x: auto;
        }
        .table {
            border-radius: 20px;
            overflow: hidden;
        }
        .table th {
            text-align: center;
            background-color: #343a40 !important;
            color: white;
        }
        .table td {
            text-align: center;
        }
        .table-hover tbody tr:hover {
            background-color: #f0f0f0;
        }
        .btn {
            transition: 0.3s;
        }
        .btn:hover {
            transform: scale(1.05);
        }
        .btn-signout {
            background-color: #dc3545;
            border-color: #dc3545;
        }
        .btn-signout:hover {
            background-color: #c82333;
        }
        .btn-add {
            background-color: #007bff;
            border-color: #007bff;
        }
        .btn-add:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg">
    <div class="container">
        <a class="navbar-brand">Smart Student Portal</a>
        <div class="d-flex">
            <a href="logout" class="btn btn-signout me-2">Sign Out</a>
            <a href="register" class="btn btn-add">Add New Student</a>
        </div>
    </div>
</nav>

<div class="dashboard-container">
    <h2 class="text-center mb-4">Student List</h2>

    <div class="table-container">
        <table class="table table-striped table-hover">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Student Name</th>
                    <th>E-mail</th>
                    <th>Phone Number</th>
                    <th>Course</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
            <%
                List<Student> students = (List<Student>) request.getAttribute("students");
                if (students != null) {
                    for (Student s : students) {
            %>
                <tr>
                    <td><%= s.id %></td>
                    <td><%= s.name %></td>
                    <td><%= s.email %></td>
                    <td><%= s.phone %></td>
                    <td><%= s.course %></td>
                    <td>
                        <a href="update.jsp?id=<%= s.id %>" class="btn btn-warning btn-sm">
                            Edit
                        </a>
                        <a href="delete?id=<%= s.id %>" 
                           onclick="return confirm('Are you sure?')" 
                           class="btn btn-danger btn-sm">
                            Delete
                        </a>
                    </td>
                </tr>
            <%
                    }
                }
            %>
            </tbody>
        </table>
    </div>
</div>

<script 
  src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js">
</script>
</body>
</html>
