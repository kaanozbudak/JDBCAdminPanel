<%--
  Created by IntelliJ IDEA.
  User: base002
  Date: 10/25/2018
  Time: 5:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/index.css">
    <script src="js/index.js"></script>
    <script src='http://code.jquery.com/jquery-1.7.1.min.js'></script>
</head>
<body>
<%
    String userName = request.getParameter("userName");
    if (userName == null)
    {
        userName = "";
    }
    String email = request.getParameter("email");
    if (email == null)
    {
        email = "";
    }
%>
<div class="user">
    <header class="user__header">
        <img src="" alt="" />
    </header>
    <!-- Register Page -->
    <h1> Have you register before ?</h1>
    <h2> This username : <%=userName%></h2>
    <h1>OR</h1>
    <h2> This email: <%=email%> already exists !</h2>
    <h1><a href="index.jsp">Log in !</a></h1>
    <br><br>
    <h2>Did you forget your password ? </h2>
    <h3><a href="resetPassword.jsp">Reset Password !</a></h3>
</div>
</body>
</html>
