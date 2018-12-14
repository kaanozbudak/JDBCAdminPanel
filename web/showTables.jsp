<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		 pageEncoding="ISO-8859-1" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="css/index.css">
	<script src="js/index.js"></script>
	<script src='http://code.jquery.com/jquery-1.7.1.min.js'></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/userPage.css">
</head>
<style>
	body {
		overflow: scroll !important;
	}

	#div {
		display: block;
		width: 20%;
		margin-top: 3%;
		font-family: "Roboto";
		-webkit-appearance: none;
		border: 0;
		transition: 0.1s;
		background: #ffffff;
		color: #808080;
		font-size: 18px;
		left: 0;
		right: 0;
		margin-right: auto !important;
		margin-left: auto !important;
		border-radius: 10px;
		padding-top: 20px;
	}

	a {
		text-decoration: none;
		text-align: center;
	}

	.chec-radio label.radio-inline input[type="checkbox"] {
		display: none;
	}

	.chec-radio label.radio-inline input[type="checkbox"]:checked + div {
		color: #fff;
		background-color: #000;
	}

	.chec-radio .radio-inline .clab {
		cursor: pointer;
		background: #e7e7e7;
		padding: 7px 20px;
		text-align: center;
		text-transform: uppercase;
		color: #333;
		position: relative;
		height: 34px;
		float: left;
		margin: 0;
		margin-bottom: 5px;
	}

	.chec-radio label.radio-inline input[type="checkbox"]:checked + div:before {
		content: "\e013";
		margin-right: 5px;
		font-family: 'Glyphicons Halflings';
	}

	.chec-radio label.radio-inline input[type="radio"] {
		display: none;
	}

	.chec-radio label.radio-inline input[type="radio"]:checked + div {
		color: #fff;
		background-color: #000;
	}

	.chec-radio label.radio-inline input[type="radio"]:checked + div:before {
		content: "\e013";
		margin-right: 5px;
		font-family: 'Glyphicons Halflings';
	}

	.pro-chx {
		text-decoration: none;
	}

</style>
<body>
<%ArrayList<String> tables = (ArrayList<String>) session.getAttribute("tables");%>
<div class="form__group">
	<form id="TablesForm" class="form" action="rows" method="post" style="
    display: block; width: 400px;
    left: 0;
    right: 0;
    margin-left: auto;
    margin-right: auto;">
		<%for(int i=0;i<tables.size();i++){	%>

		<ul class="chec-radio">
			<label class="radio-inline">
				<input id="<%= tables.get(i)%>" type="radio" onchange="buttonVis()"
					   name="tables" class="pro-chx" value="<%= tables.get(i)%>">
				<div class="clab"><%= tables.get(i)%>
				</div>
			</label>
		</ul>

		<%} %>
		<input class="btn" type="submit" value="Show Rows" id="button1" disabled>
		<a class="btn" name="createTable" href="fillTable.jsp" style="">Create Tables</a>
		<input class="btn" type="submit" value="Drop Table" formaction="" name="">
		<a class="btn" href="showDatabases.jsp"> Back </a>
	</form>
</div>
</body>

<script>

    function buttonVis() {
        document.getElementById("button1").disabled = false;
    }

</script>
</html>