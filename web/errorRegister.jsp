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

<div class="user">
    <header class="user__header">
        <img src="" alt="" />
    </header>
    <!-- Register Page -->
    <h1> Have you register <a href="index.jsp">before?</a></h1>
    <form id="registerForm" class="form" action="RegisterServlet" method="post" style="display: none">
        <div class="form__group">
            <input type="text" placeholder="Username" name="userName" class="form__input" autocomplete="off" required />
        </div>
        <div class="form__group">
            <input type="text" placeholder="Name" name="firstName" class="form__input" autocomplete="off" required />
        </div>
        <div class="form__group">
            <input type="text" placeholder="Last Name" name="lastName" class="form__input" autocomplete="off" required />
        </div>
        <div class="form__group">
            <input type="email" placeholder="Email" name="email" class="form__input" autocomplete="off" required />
        </div>

        <div class="form__group">
            <input type="password" placeholder="Password" name="password" class="form__input" autocomplete="off" required />
        </div>
        <button class="btn" id="submit" type="submit">Register</button>
        <button class="btn" id="loginSide"  type="button">Login</button>
    </form>
</div>
</body>
</html>
