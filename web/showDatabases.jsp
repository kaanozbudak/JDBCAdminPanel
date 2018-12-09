<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/index.css">
    <script src="js/index.js"></script>
    <script src='http://code.jquery.com/jquery-1.7.1.min.js'></script>
</head>
<style>
    body {
        overflow: scroll !important;
    }

    #div {
        display: block;
        width: 30%;
        margin-top: 3%;
        font-family: "Roboto";
        -webkit-appearance: none;
        border: 0;
        outline: 0;
        transition: 0.1s;
        background: #ffffff;
        color: #808080;
        font-size: 18px;
        left: 0;
        right: 0;
        margin-right: auto !important;
        margin-left: auto !important;
        padding: 2%;
        border-radius: 10px;
    }
    #radioValues {
        margin-left: auto;
        margin-right: auto;
    }

    a {
        text-decoration: none;
        text-align: center;
    }
    @import('https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.0/css/bootstrap.min.css')

    .funkyradio div {
        clear: both;
        overflow: hidden;
    }

    .funkyradio label {
        width: 100%;
        border-radius: 3px;
        border: 1px solid #D1D3D4;
        font-weight: normal;
    }

    .funkyradio input[type="radio"]:empty,
    .funkyradio input[type="checkbox"]:empty {
        display: none;
    }

    .funkyradio input[type="radio"]:empty ~ label,
    .funkyradio input[type="checkbox"]:empty ~ label {
        position: relative;
        line-height: 2.5em;
        text-indent: 3.25em;
        margin-top: 2em;
        cursor: pointer;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
    }

    .funkyradio input[type="radio"]:empty ~ label:before,
    .funkyradio input[type="checkbox"]:empty ~ label:before {
        position: absolute;
        display: block;
        top: 0;
        bottom: 0;
        left: 0;
        content: '';
        width: 2.5em;
        background: #D1D3D4;
        border-radius: 3px 0 0 3px;
    }

    .funkyradio input[type="radio"]:hover:not(:checked) ~ label,
    .funkyradio input[type="checkbox"]:hover:not(:checked) ~ label {
        color: #888;
    }

    .funkyradio input[type="radio"]:hover:not(:checked) ~ label:before,
    .funkyradio input[type="checkbox"]:hover:not(:checked) ~ label:before {
        content: '\2714';
        text-indent: .9em;
        color: #C2C2C2;
    }

    .funkyradio input[type="radio"]:checked ~ label,
    .funkyradio input[type="checkbox"]:checked ~ label {
        color: #777;
    }

    .funkyradio input[type="radio"]:checked ~ label:before,
    .funkyradio input[type="checkbox"]:checked ~ label:before {
        content: '\2714';
        text-indent: .9em;
        color: #333;
        background-color: #ccc;
    }

    .funkyradio input[type="radio"]:focus ~ label:before,
    .funkyradio input[type="checkbox"]:focus ~ label:before {
        box-shadow: 0 0 0 3px #999;
    }

    .funkyradio-default input[type="radio"]:checked ~ label:before,
    .funkyradio-default input[type="checkbox"]:checked ~ label:before {
        color: #333;
        background-color: #ccc;
    }

    .funkyradio-primary input[type="radio"]:checked ~ label:before,
    .funkyradio-primary input[type="checkbox"]:checked ~ label:before {
        color: #fff;
        background-color: #337ab7;
    }

    .funkyradio-success input[type="radio"]:checked ~ label:before,
    .funkyradio-success input[type="checkbox"]:checked ~ label:before {
        color: #fff;
        background-color: #5cb85c;
    }

    .funkyradio-danger input[type="radio"]:checked ~ label:before,
    .funkyradio-danger input[type="checkbox"]:checked ~ label:before {
        color: #fff;
        background-color: #d9534f;
    }

    .funkyradio-warning input[type="radio"]:checked ~ label:before,
    .funkyradio-warning input[type="checkbox"]:checked ~ label:before {
        color: #fff;
        background-color: #f0ad4e;
    }

    .funkyradio-info input[type="radio"]:checked ~ label:before,
    .funkyradio-info input[type="checkbox"]:checked ~ label:before {
        color: #fff;
        background-color: #5bc0de;
    }

</style>
<body>
<%  String dbName = (String) request.getAttribute("dbName");
    String elementDbName = (String) request.getAttribute("elementDbName");
    ArrayList<String> databases = (ArrayList<String>) session.getAttribute("databases");
    databases.add(dbName);
    databases.remove(elementDbName);%>
<div id="div">
    <form action="tables" method="post">
        <%for (int i = 0; i < databases.size(); i++) {%>
        <hr style="border: 1px inset rgba(138,69,85,0.82);">
        <div class="funkyradio-danger">
            <input class="values" onchange="buttonVis()" type="radio" name="databases" id="<%= databases.get(i)%>"
                   value="<%= databases.get(i)%>">
            <label for=id="<%= databases.get(i)%>"><%= databases.get(i)%></label>
            <%} %>

        </div>
        <br>
        <input class="btn" type="submit" value="Show Tables" id="button1" style="visibility:hidden">
        <a class="btn" name="createDB" href="createDatabases.jsp" style="">Create Database</a>
        <input class="btn" type="submit" value="Drop Database" formaction="dropDatabase" name="dropDB" >
        <a class="btn" href="index2.jsp"> Back </a>
    </form>
    <br>
</div>
</body>

<script>

    function buttonVis() {
        document.getElementById("button1").style.visibility = "visible";
    }

</script>
</html>