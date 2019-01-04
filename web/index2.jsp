<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/index.css">
    <script src="js/index.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/userPage.css">
</head>
<style>
    a {
        text-decoration: none;
        text-align: center;
    }
</style>
<body>

<form id="serverLogin" class="form" action="databases" method="post" style="
    display: block; width: 400px;
    left: 0;
    right: 0;
    margin-left: auto;
    margin-right: auto;">
    <div class="form__group">
        <input type="text" placeholder="Server IP" name="serverIP" value="localhost" class="form__input" required/>
    </div>
    <div class="form__group">
        <input type="text" placeholder="Server ID" name="serverID" value="root" class="form__input" required/>
    </div>
    <div class="form__group">
        <input type="password" placeholder="Server Password" name="serverPassword" value="" class="form__input"/>
    </div>
    <button class="btn" type="submit">Login</button>
    <a class="btn" href="userPage.jsp"> Back </a>
</form>

</body>
</html>
