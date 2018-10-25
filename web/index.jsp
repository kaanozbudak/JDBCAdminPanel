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
  <link rel="stylesheet" type="text/css" href="index.css">
  <script src="index.js"></script>
  <script src='http://code.jquery.com/jquery-1.7.1.min.js'></script>
  <script>
      document.getElementById("requiredUser").addEventListener("click", function(){
          document.getElementById("requiredUser").autofocus;
      });
  </script>
</head>
<body>

<div class="user">
  <header class="user__header">
    <img src="" alt="" />
  </header>
  <!-- Register Page -->


  <button class="btn" id="enterRegister" type="submit">Register</button>
  <button class="btn" id="enterLogin"  type="button">Login</button>

  <form id="registerForm" class="form" action="RegisterServlet" method="post" style="display: none">
    <div class="form__group">
      <input type="text" placeholder="Username" name="userName" class="form__input" autocomplete="off" />
    </div>
    <div class="form__group">
      <input type="text" placeholder="Name" name="firstName" class="form__input" autocomplete="off" />
    </div>
    <div class="form__group">
      <input type="text" placeholder="Last Name" name="lastName" class="form__input" autocomplete="off" />
    </div>
    <div class="form__group">
      <input type="email" placeholder="Email" name="email" class="form__input" autocomplete="off" />
    </div>

    <div class="form__group">
      <input type="password" placeholder="Password" name="password" class="form__input" autocomplete="off" />
    </div>

    <button class="btn" id="submit" type="submit">Register</button>
    <button class="btn" id="loginSide"  type="button">Login Side</button>
  </form>
  <!-- Login Page -->
  <form id="loginForm" class="form" action="LoginServlet" method="post" style="display: none">
    <div class="form__group">
      <input type="text" placeholder="Username" name="userName" class="form__input" autocomplete="off" />
    </div>
    <div class="form__group">
      <input type="password" placeholder="Password" name="password" class="form__input" autocomplete="off" />
    </div>

    <button class="btn" type="submit">Login</button>
    <button class="btn" id="registerSide" type="button">Register Side</button>
  </form>

</div>
</body>
</html>
