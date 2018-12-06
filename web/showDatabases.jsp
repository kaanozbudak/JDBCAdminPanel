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
<body>
	
	<%ArrayList<String> databases = (ArrayList<String>) session.getAttribute("databases");%>
<div id="div">
	<form action="tables" method="post">
	
	<%for(int i=0;i<databases.size();i++){%>
	
	<input onchange="buttonVis()" type="radio" name ="databases" id="<%= databases.get(i)%>"  value="<%= databases.get(i)%>"><%= databases.get(i)%></input><br>
	
	<%} %>
	<br>	
	<input type="submit" value="Show Tables" id="button1" style="visibility:hidden">
	</form><br>
	<input id="crtDB" value="Create new Database" type="submit" formaction="//yapilmadi daha"> 
	
</div>
</body>

<script>
	function buttonVis(){
		document.getElementById("button1").style.visibility = "visible";
	}
	
</script>
</html>