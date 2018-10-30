<%--
  Created by IntelliJ IDEA.
  User: basis
  Date: 30.10.2018
  Time: 22:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<div id="container" aria-width="300" aria-height="100">
    <div id="container1" aria-width="300" aria-height="100">
        <div id="container2" aria-width="300" aria-height="100">
        </div>
        </body>
        <style>
            #container{
                display:block;
                width:300px;
                height:100px;
                box-shadow:0 0 3px rgba(0,0,0,0.2);
                background-image: -moz-linear-gradient(bottom, #DEC104 0%, #F75234 100%);
                background-image: -webkit-linear-gradient(bottom, #DEC104 0%, #F75234 100%);
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
            #container1{
                display:block;
                width:300px;
                height:100px;
                box-shadow:0 0 3px rgba(0,0,0,0.2);
                background-image: -moz-linear-gradient(bottom, #DEC104 0%, #F75234 100%);
                background-image: -webkit-linear-gradient(bottom, #DEC104 0%, #F75234 100%);
                -webkit-transition:all .4s ease-in-out;
                animation-name: showcase;
                -webkit-animation-name: showcase;
                animation-duration: 1.5s;
                -webkit-animation-duration: 2.5s;
                animation-timing-function: ease-in-out;
                -webkit-animation-timing-function: ease-in-out;
                position:absolute;
                top:50%;
                left:-90%;
                transform:translate(-50%,-50%);
                -webkit-transform:translate(-50%,-50%);
            }
            #container2{
                display:block;
                width:300px;
                height:100px;
                box-shadow:0 0 3px rgba(0,0,0,0.2);
                background-image: -moz-linear-gradient(bottom, #DEC104 0%, #F75234 100%);
                background-image: -webkit-linear-gradient(bottom, #DEC104 0%, #F75234 100%);
                -webkit-transition:all .4s ease-in-out;
                animation-name: showcase;
                -webkit-animation-name: showcase;
                animation-duration: 1.5s;
                -webkit-animation-duration: 3s;
                animation-timing-function: ease-in-out;
                -webkit-animation-timing-function: ease-in-out;
                position:absolute;
                top:50%;
                left:330%;
                transform:translate(-50%,-50%);
                -webkit-transform:translate(-50%,-50%);
            }
            @-webkit-keyframes showcase{
                0%{
                    width:1px;
                    height:1px;
                    overflow:hidden;
                    background:#F75234;
                }
                50%{
                    width:300px;
                    height:1px;
                    overflow:hidden;
                    background:#F75234;
                }
                100%{
                    height:100px;
                    width:300px;
                    overflow:auto;
                    background-image: -moz-linear-gradient(bottom, #DEC104 0%, #F75234 100%);
                    background-image: -webkit-linear-gradient(bottom, #DEC104 0%, #F75234 100%);
                }
            }
            @keyframes showcase{
                0%{
                    width:1px;
                    height:1px;
                    overflow:hidden;
                    background:#F75234;
                }
                50%{
                    width:300px;
                    height:1px;
                    overflow:hidden;
                    background:#09c;
                }
                100%{
                    height:100px;
                    width:300px;
                    overflow:auto;
                    background-image: -moz-linear-gradient(bottom, #DEC104 0%, #F75234 100%);
                    background-image: -webkit-linear-gradient(bottom, #DEC104 0%, #F75234 100%);
                }
            }
        </style>
</html>

