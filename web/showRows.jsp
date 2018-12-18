<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"
         import="java.util.ArrayList, data.ColumnData, data.RowData"
         isELIgnored="false"

%>


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
    a {
        text-decoration: none;
        text-align: center;
    }
</style>
<body style="background: #212529;">
<%
    ArrayList<ColumnData> columns = (ArrayList<ColumnData>) session.getAttribute("columnData");
    ArrayList<RowData> rows = (ArrayList<RowData>) session.getAttribute("rowData");
%>
<form action="editRow" method="post">
    <div class="text-center">
        <table class="table table-striped table-dark">
            <thead>
            <tr>
                <th></th>
                <%for (int i = 0; i < columns.size(); i++) {%>
                <th>
                    <input placeholder="filter" type="text" class="inputs">
                </th>
                <%} %>
            </tr>
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
                <th><input type="radio" name="rows" value="<%=rows.get(i).getCol()[0]%>"></th>
                <%for (int j = 0; j < columns.size(); j++) {%>
                <th><%=rows.get(i).getCol()[j] %>
                </th>

                <%} %>
            </tr>
            <tbody>
                <%} %>
        </table>
    </div>
    <div class="text-center">

        <button class="btn btn-dark" type="submit">Edit the chosen one</button>
        <button class="btn btn-dark" formaction="deleteRowButton" type="submit">Delete the chosen one</button>
        <button class="btn btn-dark" formaction="createRow" type="submit">Create A Row</button>
        <input class="btn btn-dark" type="button" onclick="window.location.reload();" value="Reflesh">
        <input class="btn btn-dark" type="button" onclick="location.href='showTables.jsp';" value="Back">
    </div>

</form>
</body>
<script>
    window.onload = function(){
        var table = document.getElementsByTagName("table")[0];
        <%for(int i=0;i<columns.size();i++){%>
        document.getElementsByClassName("inputs")[<%=i%>].addEventListener("input", function(){
            var regex = new RegExp(this.value);
            for(var j=2;j<<%=rows.size()%> + 2;j++){
                if(!regex.test(table.rows[j].cells[parseInt(this.id)+1].innerHTML)){
                    table.rows[j].style.visibility = "hidden";
                }
                else{
                    table.rows[j].style.visibility = "visible";
                }
            }
        });
        <%}%>
    };
</script>
</html>