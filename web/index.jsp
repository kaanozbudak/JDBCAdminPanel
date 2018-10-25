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

  <form id="registerForm" class="form" action="registerServlet" method="post" style="display: none">
    <div class="form__group">
      <input type="text" placeholder="Username" name="username" id="requiredUser" class="form__input" autocomplete="off" />
    </div>
    <div class="form__group">
      <input type="text" placeholder="Name" name="firstname" id="requiredUser" class="form__input" autocomplete="off" />
    </div>
    <div class="form__group">
      <input type="text" placeholder="Last Name" name="lastname" id="requiredUser" class="form__input" autocomplete="off" />
    </div>
    <div class="form__group">
      <input type="email" placeholder="Email" name="email" id="requiredEmail" class="form__input" autocomplete="off" />
    </div>

    <div class="form__group">
      <input type="password" placeholder="Password" name="pass" id="requiredPass" class="form__input" autocomplete="off" />
    </div>

    <button class="btn" id="submit" type="submit">Register</button>
    <button class="btn" id="loginSide"  type="button">Login Side</button>
  </form>
  <!-- Login Page -->
  <form id="loginForm" class="form" action="loginServlet" method="post" style="display: none">
    <div class="form__group">
      <input type="text" placeholder="Username" name="username" class="form__input" autocomplete="off" />
    </div>
    <div class="form__group">
      <input type="password" placeholder="Password" name="pass" class="form__input" autocomplete="off" />
    </div>

    <button class="btn" type="submit">Login</button>
    <button class="btn" id="registerSide" type="button">Register Side</button>
  </form>

</div>
</body>
</html>
