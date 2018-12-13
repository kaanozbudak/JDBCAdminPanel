<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"
         import="java.util.ArrayList, data.ColumnData, data.RowData"
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
</head>
<style>
    td {
        font-size: 32px;
        border: 1px solid black;
    }
</style>
<body>
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
        System.out.println(rows.get(j).getCol()[primaryKeyIndex] + " : " + checkedRow) ;
        if (rows.get(j).getCol()[primaryKeyIndex].equals(checkedRow)) {
            break;
        }
    }
    int selectedRowIndex = j;
    session.setAttribute("selectedRowIndex", selectedRowIndex);
%>
<form action="updateRow" method="post">
    <table>
        <% for (int i = 0; i < columns.size(); i++) {%>
        <tr>
            <td><%=columns.get(i).getName() + " : " + columns.get(i).getType()%></td>
            <td><input type="text" name="<%=columns.get(i).getName()%>" value="<%=rows.get(selectedRowIndex).getCol()[i]%>"></td>
        </tr>
        <%} %>
    </table>
    <button type="submit">Update Row</button>
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


    }
</script>
</html>