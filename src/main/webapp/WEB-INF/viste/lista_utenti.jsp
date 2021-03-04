<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Lista utenti</h1>
	
	<ul>
	
<!--  	<c:  items="${utente}" var="user">-->
	
		<li>${utente}</li>
		<li>${utente.getUsername()}</li>
	
	
	</ul>

</body>
</html>