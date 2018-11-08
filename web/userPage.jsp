<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/userPage.css">
    <script src="js/userpageJs.js"></script>
</head>
<body>

<div class="user" style="display: block;">
<header class="user__header">
    <img width="200px" height="220px" src="img/person.png" alt="" />
</header>
<!-- Menu Page -->
<form class="form" >

    <button style="margin-bottom: 1px;"class="btn" type="button">Database Connect</button>
    <button style="margin-bottom: 1px;"class="btn" type="button">Dash Board</button>
    <button style="margin-bottom: 1px;"class="btn" type="button">User Settings</button>

    <button class="btn" formaction="LogoutServlet" type="submit">Logout</button>
</form>
</div>

<div class="user" style="display: none;">
    <header class="user__header">
    </header>
    <!-- Menu Page -->
    <form class="form" style="">
        <button style="margin-bottom: 1px;"class="btn" type="button">Update Password</button>
        <button style="margin-bottom: 1px;"class="btn" type="button">Update Information</button>
        <button id="themeButton" style="margin-bottom: 1px;"class="btn" type="button">Background Theme</button>
        <button id="backButton" style="margin-bottom: 1px;"class="btn" type="button">Back</button>
    </form>
</div>

<div class="user" style="display: none;">
    <header class="user__header">
    </header>
    <form class="form" style="">
        <button id="light" style="margin-bottom: 1px;"class="btn" type="button">Light</button>
        <button id="dark" style="margin-bottom: 1px;"class="btn" type="button">Dark</button>
        <button id="themeBackButton" style="margin-bottom: 1px;"class="btn" type="button">Back</button>
    </form>
</div>


</body>
</html>

