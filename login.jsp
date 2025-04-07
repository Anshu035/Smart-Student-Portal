<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #fbc2eb, #a6c1ee);
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        .navbar {
            background-color: #343a40;
            color: white;
            width: 97%;
            padding: 15px 40px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            font-size: 20px; 
            position: fixed;
            top: 0;
            left: 0;
            z-index: 1000;
        }
        .navbar .title {
            font-size: 24px;
            font-weight: bold;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            font-size: 18px;
            margin-left: 15px;
            transition: 0.3s;
        }
        .navbar a:hover {
            text-decoration: underline;
            color: #fbc2eb;
        }
        .container {
            background-color: lightcyan;
            padding: 30px;
            border-radius: 10px;
            width: 380px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
            text-align: center;
            margin-top: 80px;
            animation: fadeIn 0.8s ease-in-out;
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }
        h2 {
            margin-bottom: 20px;
            color: #333;
        }
        label {
            display: block;
            text-align: left;
            margin-top: 12px;
            font-weight: bold;
            color: #555;
        }
        input {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 16px;
            transition: 0.3s;
        }
        input:focus {
            border-color: #007bff;
            outline: none;
            box-shadow: 0 0 8px rgba(0, 123, 255, 0.2);
        }
        button {
            width: 100%;
            padding: 12px;
            margin-top: 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
            transition: 0.3s;
        }
        button:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }
        .error {
            color: red;
            margin-bottom: 15px;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <div class="title">Smart Student Portal</div>
        <div class="nav-links">
            <a href="home.jsp">Home</a>
            <a href="about.jsp">About</a>
            <a href="contact.jsp">Contact</a>
        </div>
    </div>

    <!-- Login Form -->
    <div class="container">
        <h2>Admin Login</h2>
        <% if (request.getParameter("error") != null) { %>
            <p class="error">Invalid username or password.</p>
        <% } %>
        <form action="login" method="post">
            <label for="username">Username:</label>
            <input type="text" name="username" id="username" required>

            <label for="password">Password:</label>
            <input type="password" name="password" id="password" required>

            <button type="submit">Login</button>
        </form>
    </div>



</body>
</html>
