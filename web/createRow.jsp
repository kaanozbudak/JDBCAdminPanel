<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"
         import="java.util.ArrayList, data.ColumnData, data.RowData" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
</head>
<style>
    td {
        font-size: 32px;
        border: 1px solid black;
    }
    .btn{
        position: relative;
        left: 0;
        right: 0;
        margin-left: 20%;
        margin-right: 20%;
    }
</style>
<body style="background: #212529;">
<%
    ArrayList<ColumnData> columns = (ArrayList<ColumnData>) session.getAttribute("columnData");
    ArrayList<RowData> rows = (ArrayList<RowData>) session.getAttribute("rowData");
%>
<form action="createRowButton" method="post">
    <div class="container">
        <table class="table table-striped table-dark">
            <thead>
            <%for (int i = 0; i < columns.size(); i++) { %>
            <tr>
                <td><%= columns.get(i).getName() + ":" + columns.get(i).getType()%>
                </td>
                <td><input type="text" name="<%=columns.get(i).getName()%>"></td>
            </tr>
            <%} %>
            </thead>
        </table>
    </div>
    <hr>
    <button id="btnCrtRow" class="btn btn-dark" type=submit>Create Row</button>
    <a style="background-color: #212529; columns: white;" class="btn btn-dark" href="showRows.jsp">Back</a>
</form>
</body>
</html>