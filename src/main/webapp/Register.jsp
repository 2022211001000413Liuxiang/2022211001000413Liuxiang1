<%--
  Created by IntelliJ IDEA.
  User: 86134
  Date: 2024/3/10
  Time: 16:00
  To change this template use File | Settings | File Templates.
--%>
<%@include file="header.jsp"%>

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

<%@include file="footer.jsp"%>
