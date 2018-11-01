<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="userPage.css">
    <script src="userpageJs.js"></script>
</head>
<body>

<div class="user" "display: block;">
<header class="user__header">
    <img width="200px" height="220px" src="person.png" alt="" />
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
        <div class="form__group">
    </form>
</div>


</body>
</html>

