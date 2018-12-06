<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"
import = "java.util.ArrayList, data.ColumnData, data.RowData"
isELIgnored="false"

%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
</head>
<style>
    th{
        border : 1px solid black;
        max-width : 100px;
        
    }
    td{
        text-align : center;
        border : 1px solid black;
        max-width : 100px;
    }
    .inputs{
        text-align : center;
      	max-width : 100px;
    }
</style>
<body>
<%ArrayList <ColumnData> columns = (ArrayList<ColumnData>)session.getAttribute("columnData");
    ArrayList<RowData> rows = (ArrayList<RowData>)session.getAttribute("rowData"); %>
        <form action="editRowServlet">
        <table>
            <tr>
            	<td></td>
                <%for(int i=0;i<columns.size();i++){%>
                <td><input type="text" class="inputs"></td>
                <%} %>
            </tr>
            <tr>
             <td></td>
                <%
                for(int i =0;i<columns.size();i++){
                %>
                <td><%=columns.get(i).getName()%></td>
                <%} %>
            </tr>
           
            <%for(int i=0;i<rows.size();i++){%>
            <tr>
          		<td><input type="radio" name="radioButtons" value ="<%=rows.get(i).getCol()[0]%>"></td>
                <%for(int j=0;j<columns.size();j++){%>
                <td><%=rows.get(i).getCol()[j] %></td>

                <%} %>
            </tr>
            <%} %>
        </table>
        <button type="submit">Edit the chosen one</button>
        </form>
</body>
<script>
    window.onload = function(){
        var table = document.getElementsByTagName("table")[0];
    <%for(int i=0;i<columns.size();i++){%>
            document.getElementsByClassName("inputs")[<%=i%>].addEventListener("input", function(){
                var regex = new RegExp(this.value);
                for(var j=2;j<<%=rows.size()%> + 2;j++){
                    if(!regex.test(table.rows[j].cells[<%=i%>].innerHTML)){
                        table.rows[j].style.display = "none";
                      	table.rows[0].style.display = "block";
                      	table.rows[0].style.width ="100px";
                      	table.rows[1].style.display = "block";
                      	table.rows[1].style.width = "100px";

                    }
                else{
                        table.rows[j].style.display = "block";
                        table.rows[0].style.display = "block";
                        table.rows[0].style.width = "100px";
                      	table.rows[1].style.display = "block";
                      	table.rows[1].style.width = "100px";
                    }
                }

            });
        <%}%>

    };
</script>
</html>