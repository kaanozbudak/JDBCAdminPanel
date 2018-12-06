<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<style>
	#div{
		margin: auto;
    	width: 14%;
    	border: 3px solid #73AD21;
    	padding: 10px;
	}
</style>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>	
	<%ArrayList<String> tables = (ArrayList<String>)session.getAttribute("tables");%>
	<div id="div">

	<form action="rows" method="post">	
		<%for(int i=0;i<tables.size();i++){	%>
	
		<input onchange="buttonVis()" type="radio" name ="tables" id="<%= tables.get(i)%>"  value="<%=tables.get(i)%>"><%=tables.get(i)%></input><br>
		
		<%} %>
		<input type="submit" value="Show Rows" style="visibility:hidden" id="button1">
	</form>
	<br>
	<input type="submit" formaction="//daha yapilmadi" value="add a New Table">
	</div>
</body>
<script>
	function buttonVis(){
		document.getElementById("button1").style.visibility = "visible";
	}
</script>

</html>