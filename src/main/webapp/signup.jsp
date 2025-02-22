<!DOCTYPE html>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>dang ky</title>
<style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            max-width: 400px;
            margin: 60px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
        }
        input {
            width: 90%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
            background-color: #007BFF;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
        .error-message {
            color: #ff0000;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Đăng ký tài khoản</h1>
        <form id="registration-form" action="" method="post">
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="phone">Phone Number:</label>
                <input type="tel" id="phone" name="phone" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <label for="confirm-password">Confirm Password:</label>
                <input type="password" id="confirm-password" name="confirm-password" required>
                <div id="password-match-error" class="error-message"></div>
            </div>
            <button type="submit">Đăng ký</button>
        </form>
    </div>

    <script>
        const registrationForm = document.getElementById('registration-form');
        const passwordInput = document.getElementById('password');
        const confirmPasswordInput = document.getElementById('confirm-password');
        const passwordMatchError = document.getElementById('password-match-error');

        registrationForm.addEventListener('submit', function(event) {
            if (passwordInput.value !== confirmPasswordInput.value) {
                passwordMatchError.textContent = "Mật khẩu không khớp.";
                event.preventDefault(); // Ngăn chặn việc submit form nếu mật khẩu không khớp
            } else {
                passwordMatchError.textContent = "";
            }
        });
    </script>
</body>
</html>