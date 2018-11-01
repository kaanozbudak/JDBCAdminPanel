<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script src="logoutJS.js"></script>
</head>
<body>


<div id="container" aria-width="300" aria-height="600">
    <div id="logoutDiv" >Logout</div>
    <div>
        <img src="/person.png" width="200" height="200" style="opacity:0.6; margin-left: 45px; margin-top: 10px;" alt="">
    </div>
    <br>
    <br>
    <div>
        <button style="width: 250px; margin-left: 25px; margin-top: 70px;" type="button" class="btn btn-light">test</button>
    </div>
    <br>
    <div>
        <button style="width: 250px; margin-left: 25px;" type="button" class="btn btn-light">test</button>
    </div>
</div>
</body>
<style>
    #logoutDiv{
        width: 60px;
        height: 25px;
        color:white;
        background-color: rgb(255, 97, 97);
        font-weight: bold;
        text-align: left;
        font-size: 14px;
        margin-left: 76%;
        margin-top: 3%;
        border-bottom-right-radius: 20px;
    }
    body{
        background-color: whitesmoke;
    }
    #container{
        display:block;
        width:300px;
        height:600px;
        box-shadow:0 0 3px rgba(0,0,0,0.2);
        background-image: -moz-linear-gradient(bottom, #05dec8 0%, #ecf2f2 100%);
        background-image: -webkit-linear-gradient(bottom, #05dec8 0%, #ecf2f2 100%);
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
            background:#ecf2f2;
            overflow: hidden !important;
        }
        50%{
            width:300px;
            height:300px;
            overflow:hidden;
            background:#ecf2f2;
            overflow: hidden !important;
        }
        100%{
            height:600px;
            width:300px;
            overflow:auto;
            background-image: -moz-linear-gradient(bottom, #05dec8 0%, #ecf2f2 100%);
            background-image: -webkit-linear-gradient(bottom, #05dec8 0%, #ecf2f2 100%);
            overflow: hidden !important;
        }
    }
    @keyframes showcase{
        0%{
            width:1px;
            height:1px;
            overflow:hidden;
            background:#ecf2f2;
            overflow: hidden !important;
        }
        50%{
            width:300px;
            height:300px;
            overflow:hidden;
            background:#ecf2f2;
            overflow: hidden !important;
        }
        100%{
            height:600px;
            width:300px;
            overflow:auto;
            background-image: -moz-linear-gradient(bottom, #05dec8 0%, #ecf2f2 100%);
            background-image: -webkit-linear-gradient(bottom, #05dec8 0%, #ecf2f2 100%);
            overflow: hidden !important;
        }
    }
</style>
</html>

