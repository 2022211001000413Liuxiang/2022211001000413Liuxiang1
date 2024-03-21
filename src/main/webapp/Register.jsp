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
        .error { color: red; font-size: 0.9em; }
    </style>

    </script>
</head>
<body>
<form name="registrationForm" action="register" onsubmit="return validateForm()" method="post">
    <%--@declare id="gender"--%><label for="username">Username:</label>
    <input type="text" id="username" name="username" required>
    <span class="error" id="usernameError"></span><br>

    <label for="password">Password:</label>
    <input type="password" id="password" name="password" minlength="8" required>
    <span class="error" id="passwordError"></span><br>

    <label for="Email">Email:</label>
    <input type="text" id="Email" name="Email" required>
    <span class="error" id="EmailError"></span><br>

    <label for="Gender">Gender:</label>
    <input type="radio" name="Gender" value="male" >Male <input type="radio" name="Gender" value="female">Female
    <br>

    <label for="Birthdate">Birthdate:</label>
    <input type="text" id="Birthdate" name="Birthdate" pattern="\d{4}-\d{2}-\d{2}" title="Format: yyyy-mm-dd" required>
    <span class="error" id="BirthdateError"></span><br>

    <input type="submit" value="Submit">
</form>
</body>
</html>