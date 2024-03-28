<%--
  Created by IntelliJ IDEA.
  User: 86134
  Date: 2024/3/10
  Time: 16:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <style>

        form{
            margin-left: 50px;
        }

        .color{
            background-color: orange;
            width: 100px;
            height: 30px;
            color: white;
            border-color: orange;
        }

        input{
            margin-top:10px;
        }

        .some{
            width: 300px;
            height: 30px;
        }
    </style>

</head>
<body>

<form method="post" action="register">

    <h2>New User registration!</h2>

    <input class="some" type="text" placeholder="username" name="username"><br>
    <input class="some" type="text" placeholder="password" name="password"><br>
    <input class="some" type="text" placeholder="Email" name="email"><br>
    <b>Gender</b>
    <input type="radio" name="gender" value="Male">Male
    <input type="radio" name="gender" value="Female">Female<br>
    <input class="some" type="text" placeholder="Date of Birth(yyyy-mm-dd)" name="birthdate"><br>

    <input class="color" type="submit" value="Register">
</form>

</body>
</html>
