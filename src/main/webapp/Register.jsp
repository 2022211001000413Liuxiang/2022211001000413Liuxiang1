<%--
  Created by IntelliJ IDEA.
  User: lx
  Date: 2024/3/11
  Time: 11:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Registration Form</title>
    <style>
        /* Add some basic CSS for error styling */
        .error { color: red; font-size: 0.9em; }
    </style>
    <!-- 使用正则表达式进行前端邮箱验证 -->
    <script>
        function validateEmail(email) {
            const re = /^[\w.-]+@[\w-]+(\.[\w-]+)+$/;
            return re.test(email);
        }

        function validateForm() {
            const username = document.forms["registrationForm"]["username"].value;
            const password = document.forms["registrationForm"]["password"].value;
            const email = document.forms["registrationForm"]["email"].value;
            const birthdate = document.forms["registrationForm"]["birthdate"].value;

            if (username === "") {
                document.getElementById("usernameError").innerHTML = "Username is required";
                return false;
            } else {
                document.getElementById("usernameError").innerHTML = "";
            }

            if (password.length < 8) {
                document.getElementById("passwordError").innerHTML = "Password must be at least 8 characters";
                return false;
            } else {
                document.getElementById("passwordError").innerHTML = "";
            }

            if (!validateEmail(email)) {
                document.getElementById("emailError").innerHTML = "Invalid email format";
                return false;
            } else {
                document.getElementById("emailError").innerHTML = "";
            }
            const datePattern = /^\d{4}-\d{2}-\d{2}$/;
            if (!datePattern.test(birthdate)) {
                document.getElementById("birthdateError").innerHTML = "Birthdate must be in yyyy-mm-dd format";
                return false;
            } else {
                document.getElementById("birthdateError").innerHTML = "";
            }

            return true;
        }
    </script>
</head>
<body>
<form name="registrationForm" action="Register.jsp" onsubmit="return validateForm()" method="post">
    <label for="username">Username:</label>
    <input type="text" id="username" name="username" required>
    <span class="error" id="usernameError"></span><br>

    <label for="password">Password:</label>
    <input type="password" id="password" name="password" minlength="8" required>
    <span class="error" id="passwordError"></span><br>

    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required>
    <span class="error" id="emailError"></span><br>

    <label for="birthdate">Birthdate:</label>
    <input type="text" id="birthdate" name="birthdate" pattern="\d{4}-\d{2}-\d{2}" title="Format: yyyy-mm-dd" required>
    <span class="error" id="birthdateError"></span><br>

    <input type="submit" value="Submit">
</form>
</body>
</html>