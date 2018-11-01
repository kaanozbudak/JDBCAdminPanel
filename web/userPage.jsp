<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="index.css">
    <script src="userpageJs.js"></script>
</head>
<body>


<div id="container" aria-width="300" aria-height="500" style="display: block;">
    <div>
        <img src="/person.png" width="200" height="200" style="opacity:0.6; margin-left: 45px; margin-top:30px;" alt="">
    </div>
    <form>
        <div>
            <button style="height: 60px; width: 250px; margin-left: 25px;" type="button" class="btn btn-light">Enter Database</button>
        </div>
        <div>
            <button style="height: 60px; width: 250px; margin-left: 25px;" type="button" class="btn btn-light">Dash-Board</button>
        </div>
        <div>
            <button id="userSettingsButton" style="height: 60px; width: 250px; margin-left: 25px;" type="button" class="btn btn-light">User Settings</button>
        </div>
        <div>
            <button formaction="LogoutServlet" type="submit" id="logout" style="height: 60px; width: 250px; margin-left: 25px;" type="button" class="btn btn-light">Logout</button>
        </div>
    </form>

    <div id="containerUserSettings" aria-width="300" aria-height="500" style="display: block;">
        <div>
        </div>
        <form>
        </form>
    </div>
</body>
<style>
    body{
        background-color: whitesmoke;
    }
    #container{
        display:block;
        width:300px;
        height:500px;
        box-shadow:0 0 3px rgba(0,0,0,0.2);
        background-color: white;
        -webkit-transition:all .4s ease-in-out;
        animation-name: showcase;
        -webkit-animation-name: showcase;
        animation-duration: 1.5s;
        -webkit-animation-duration: 1.5s;
        animation-timing-function: ease-in-out;
        -webkit-animation-timing-function: ease-in-out;
        position:absolute;
        top:50%;
        left:50%;
        transform:translate(-50%,-50%);
        -webkit-transform:translate(-50%,-50%);
    }
    @-webkit-keyframes showcase{
        0%{
            width:1px;
            height:1px;
            overflow:hidden;
            overflow: hidden !important;
        }
        50%{
            width:300px;
            height:300px;
            overflow:hidden;
            overflow: hidden !important;
        }
        100%{
            height:500px;
            width:300px;
            overflow:auto;
            overflow: hidden !important;
        }
    }
    @keyframes showcase{
        0%{
            width:1px;
            height:1px;
            overflow:hidden;
            overflow: hidden !important;
        }
        50%{
            width:300px;
            height:300px;
            overflow:hidden;
            overflow: hidden !important;
        }
        100%{
            height:500px;
            width:300px;
            overflow:auto;
            overflow: hidden !important;
        }
    }
</style>
</html>

