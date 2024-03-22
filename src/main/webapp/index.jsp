<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .login-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .login-container h2 {
            margin-top: 0;
            text-align: center;
        }
        .login-container form {
            display: flex;
            flex-direction: column;
        }
        .login-container form input {
            margin-bottom: 10px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        .login-container form button {
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Login</h2>
        <form id="loginForm">
            <input type="text" id="username" name="username" placeholder="Username" required>
            <input type="password" id="password" name="password" placeholder="Password" required>
            <button type="submit">Login</button>
        </form>
    </div>

    <script>
        document.getElementById("loginForm").addEventListener("submit", function(event) {
            event.preventDefault(); // Prevent the default form submission
            var username = document.getElementById("username").value;
            var password = document.getElementById("password").value;

            // You can add your authentication logic here (e.g., sending a request to a server)

            // For demonstration purposes, assuming login is successful
            // Redirect to home page and display greeting message
            var greeting = "Hello " + username + ", good morning!";
            var content = "Welcome to our website.";

            // You can replace this with the URL of your home page
            var homePageUrl = "home.html";
            // Redirect to the home page with greeting message as URL parameter
            window.location.href = homePageUrl + "?greeting=" + encodeURIComponent(greeting) + "&content=" + encodeURIComponent(content);
        });
    </script>
</body>
</html>

