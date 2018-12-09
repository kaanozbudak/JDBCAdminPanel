<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"
         import="java.util.ArrayList, data.ColumnData, data.RowData"
         isELIgnored="false"

%>


<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
</head>
<style>
    a {
        text-decoration: none;
        text-align: center;
    }
</style>
<body style="background: darkslategrey !important;">
<%
    ArrayList<ColumnData> columns = (ArrayList<ColumnData>) session.getAttribute("columnData");
    ArrayList<RowData> rows = (ArrayList<RowData>) session.getAttribute("rowData");
%>
<form action="editRowServlet">
    <table class="table table-striped table-dark">
        <thead>
        <tr>
            <th></th>
            <%for (int i = 0; i < columns.size(); i++) {%>
            <th scope="col">
                <input type="text" class="inputs">
            </th>
            <%} %>
        </tr>
        </thead>
        <thead>
        <tr>
            <th></th>
            <%
                for (int i = 0; i < columns.size(); i++) {
            %>
            <th scope="col"><%=columns.get(i).getName()%>
            </th>
            <%} %>
        </tr>
        </thead>
        <tbody>
            <%for (int i = 0; i < rows.size(); i++) {%>
        <tr>
            <th scope="row"><input type="radio" name="radioButtons" value="<%=rows.get(i).getCol()[0]%>"></th>
            <%for (int j = 0; j < columns.size(); j++) {%>
            <th><%=rows.get(i).getCol()[j] %>
            </th>

            <%} %>
        </tr>
        <tbody>
            <%} %>
    </table>
    <button class="btn" type="submit">Edit the chosen one</button>
    <input class="btn" type="button" onclick="window.location.reload();" value="Reflesh">
    <input class="btn" type="button" onclick="location.href='showTables.jsp';" value="Back">
</form>
</body>
<script>
    window.onload = function () {
        var table = document.getElementsByTagName("table")[0];
        <%for(int i=0;i<columns.size();i++){%>
        document.getElementsByClassName("inputs")[<%=i%>].addEventListener("input", function () {
            var regex = new RegExp(this.value);
            for (var j = 2; j < <%=rows.size()%> +2; j++) {
                if (!regex.test(table.rows[j].cells[<%=i%>].innerHTML)) {
                    table.rows[j].style.display = "none";
                    table.rows[0].style.display = "show";
                    table.rows[1].style.display = "show";

                }
                else {
                    table.rows[j].style.display = "show";
                    table.rows[0].style.display = "show";
                    table.rows[1].style.display = "show";
                }
            }

        });
        <%}%>

    };
</script>
</html>