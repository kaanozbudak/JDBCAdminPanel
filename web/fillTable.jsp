<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"
         import="java.util.ArrayList, data.ColumnData, data.RowData"
%>
<%@ page import="handler.Table" %>
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

    .cols {
        text-decoration: underline;
        font-size: 2.5em;
    }

    .btn {
        color: #fff;
    }

    .inValues {
        width: 100%;
    }

    .box_1 {
        background: #212529;
    }

    input[type="checkbox"].switch_1 {
        font-size: 20px;
        -webkit-appearance: none;
        -moz-appearance: none;
        appearance: none;
        width: 3.5em;
        height: 1.5em;
        background: #ddd;
        border-radius: 3em;
        position: relative;
        cursor: pointer;
        outline: none;
        -webkit-transition: all .2s ease-in-out;
        transition: all .2s ease-in-out;
    }

    input[type="checkbox"].switch_1:checked {
        background: #63ffec;
    }

    input[type="checkbox"].switch_1:after {
        position: absolute;
        content: "";
        width: 1.5em;
        height: 1.5em;
        border-radius: 50%;
        background: #fff;
        -webkit-box-shadow: 0 0 .25em rgba(0, 0, 0, .3);
        box-shadow: 0 0 .25em rgba(0, 0, 0, .3);
        -webkit-transform: scale(.7);
        transform: scale(.7);
        left: 0;
        -webkit-transition: all .2s ease-in-out;
        transition: all .2s ease-in-out;
    }

    input[type="checkbox"].switch_1:checked:after {
        left: calc(100% - 1.5em);
    }
</style>
<body style="background: #212529;">
<form action="fillTables" method="post">
    <div class="container">
        <%
            String loop = (String) session.getAttribute("loop");
            int intloop = Integer.parseInt(loop);
            for(int i=0;i<intloop;i++){

        %>
        <table class="table table-striped table-dark">
            <thead>

            <td>
            <th class="cols">Col Name<%=i%>%></th>
            <th class="cols">Type<%=i%></th>
            <th class="cols">P-Key<%=i%></th>
            </td>

            <td>
            </td>

            <tr>
                <td>
                <th>
                    <input class="inValues" type="text" name="colName<%=i%>" placeholder="Enter Column Name">
                </th>
                <th>
                    <select name="type<%=i%>" class="browser-default custom-select inValues" required>
                        <option selected>Select Type</option>
                        <option value="int">int</option>
                        <option value="varchar">varchar</option>
                        <option value="text">text</option>
                    </select>
                </th>
                <th>
                    <div class="switch_box box_1">
                        <input name="pk<%=i%>" type="checkbox" value="PRIMARY KEY" class="switch_1">
                    </div>
                </th>
                </td>
                <td>
                </td>
            </tr>
            </thead>
        </table>
        <% }%>
    </div>
    <div class="text-center">
        <button id="btnUpdate" class="btn btn-dark" type="submit">Create Table</button>
        <a class="btn btn-dark" href="createTable.jsp" style="text-decoration: none;"> Back</a>
    </div>
</form>
</body>
<script src="typeFilter.js"></script>
<script>
</script>
</html>