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
    body{
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
        margin-right: auto!important;
        margin-left: auto!important;
        border-radius: 10px;
    }
    #radioValues{
        padding-left: 20px;
        padding-top: 15px;

    }
    a{
        text-decoration: none;
        text-align: center;
    }
</style>
<body>
<%ArrayList<String> databases = (ArrayList<String>) session.getAttribute("databases");%>
<div id="div">
    <form action="tables" method="post">
        <%for (int i = 0; i < databases.size(); i++) {%>
        <div id="radioValues">
            <input class="values" onchange="buttonVis()" type="radio" name="databases" id="<%= databases.get(i)%>"
                   value="<%= databases.get(i)%>"><%= databases.get(i)%>

            <input class="newValues" onchange="buttonVis()" type="radio" name="newDatabases" value="<%
                request.getAttribute("dbName");
            %>">
        </div>

        <br>
        <%} %>
        <br>
        <input class="btn" type="submit" value="Show Tables" id="button1" style="visibility:hidden">
    </form>
    <br>
    <a class="btn" name="createDB" href="createDatabases.jsp">Create Database</a>

</div>
</body>

<script>
    function buttonVis() {
        document.getElementById("button1").style.visibility = "visible";
    }

</script>
</html>