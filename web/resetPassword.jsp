<%--
  Created by IntelliJ IDEA.
  User: kaanozbudak
  Date: 5.11.2018
  Time: 12:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Reset Password</title>
    <link rel="stylesheet" type="text/css" href="css/index.css">
    <script src="js/index.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/userPage.css">
</head>
<body>
<div class="user">
    <header class="user__header">
        <img src="" alt="" />
    </header>
    <form id="registerForm" class="form" action="ResetServlet" method="post">
        <div class="form__group">
            <input type="text" placeholder="Username" name="userName" class="form__input" autocomplete="off" required />
        </div>
        <div class="form__group">
            <input type="text" placeholder="Password" name="user_password" class="form__input" autocomplete="off" required />
        </div>
        <button class="btn" id="submit" type="submit">Reset Password</button>
    </form>
</div>
</body>
</html>
