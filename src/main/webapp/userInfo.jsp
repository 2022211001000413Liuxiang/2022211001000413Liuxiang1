<%@ page import="com.Liuxiang.model.User" %><%--
  Created by IntelliJ IDEA.
  User: lx
  Date: 2024/4/11
  Time: 19:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<h1> User Info</h1>
<%
    User user =(User) request.getAttribute("user");
%>
<table>
    <tr>
        <td>Username:</td><td><%=user.getUsername()%></td>
        <td>password:</td><td><%=user.getPassword()%></td>
        <td>email:</td><td><%=user.getEmail()%></td>
        <td>gender:</td><td><%=user.getGender()%></td>
        <td>birthdate:</td><td><%=user.getBirthdate()%></td>

    </tr>
</table>



<%@include file="footer.jsp"%>