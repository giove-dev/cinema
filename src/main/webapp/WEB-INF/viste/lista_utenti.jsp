<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Lista utenti</h1>

	<ul>
		<c:forEach var="i" begin="0" end="${utente.size()-1}">
			<li><c:out value="${utente[i].username}" /></li>
		</c:forEach>
	</ul>

</body>
</html>