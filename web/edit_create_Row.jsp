<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"
         import="java.util.ArrayList, data.ColumnData, data.RowData"
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

    #inValue {
        width: 100%;
    }
</style>
<body style="background: #212529;">
<% ArrayList<ColumnData> columns = (ArrayList<ColumnData>) session.getAttribute("columnData");
    ArrayList<RowData> rows = (ArrayList<RowData>) session.getAttribute("rowData");
    String checkedRow = (String) session.getAttribute("checkedRow");
    int primaryKeyIndex;
    if (session.getAttribute("primaryKeyIndex") != null)
        primaryKeyIndex = (Integer) session.getAttribute("primaryKeyIndex");
    else {
        primaryKeyIndex = 0;
        session.setAttribute("primaryKeyIndex", 0);
    }
    int j;
    for (j = 0; j < rows.size(); j++) {
        System.out.println(rows.get(j).getCol()[primaryKeyIndex] + " : " + checkedRow);
        if (rows.get(j).getCol()[primaryKeyIndex].equals(checkedRow)) {
            break;
        }
    }
    int selectedRowIndex = j;
    session.setAttribute("selectedRowIndex", selectedRowIndex);
%>
<form action="updateRow" method="post">
    <div class="container">
        <table class="table table-striped table-dark">
            <thead>
            <td>
            <th class="cols">Col</th>
            <th class="cols">Type</th>
            <th class="cols">Value</th>
            </td>
            <td></td>
            <% for (int i = 0; i < columns.size(); i++) {%>

            <tr>
                <td>
                <th><%=columns.get(i).getName()%>
                </th>
                <th><%=columns.get(i).getType()%>
                </th>
                </td>
                <th>
                    <input id="inValue" type="text" name="<%=columns.get(i).getName()%>"
                           value="<%=rows.get(selectedRowIndex).getCol()[i]%>">
                </th>
                <td></td>
            </tr>

            <%} %>
            </thead>
        </table>
    </div>
    <div class="text-center">
        <button id="btnUpdate" class="btn btn-dark" type="submit">Update Rows</button>
        <a class="btn btn-dark" href="showRows.jsp" style="text-decoration: none;"> Back</a>
    </div>
</form>
</body>
<script src="typeFilter.js"></script>
<script>
    window.onload = function () {
        var types = [];
        <%for(int i=0;i<columns.size();i++){%>
        types.push("<%=columns.get(i).getType()%>");
        <%}%>
        checkTypes(types);
        <%for(int i=0;i<columns.size();i++){%>
        if ("<%=columns.get(i).getKey()%>" == "PRI") {
            document.getElementsByTagName("input")[<%=i%>].disabled = true;
            console.log(document.getElementsByTagName("input")[<%=i%>].value);
        }
        <%}%>
        var btnUpdate = document.getElementById("btnUpdate");
        /*btnUpdate.addEventListener('click',
            function () {
                //window.location.reload();
            });*/
    }
</script>
</html>