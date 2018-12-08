<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
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
</style>
<body>
<%  String dbName = (String) session.getAttribute("dbName");
    String elementDbName = (String) request.getAttribute("elementDbName");
    ArrayList<String> databases = (ArrayList<String>) session.getAttribute("databases");
    databases.add(dbName);
    databases.remove(elementDbName);%>
<div id="div">
    <form action="tables" method="post">
        <%for (int i = 0; i < databases.size(); i++) {%>
        <hr style="border: 1px inset rgba(138,69,85,0.82);">
        <div>
            <input class="values" onchange="buttonVis()" type="radio" name="databases" id="<%= databases.get(i)%>"
                   value="<%= databases.get(i)%>"><%= databases.get(i)%>
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