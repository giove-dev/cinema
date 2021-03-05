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
<h1>Dettaglio film</h1>

<!--  	<ul>
		<c:forEach var="i" begin="0" end="${film.size()-1}">
				<h3><c:out value="${film[id].titolo}" /></h3>
			<li>
				<c:out value="${film[id].titolo}" />
				<c:out value="${film[id].titolo}" />
			</li>
		</c:forEach>
	</ul>
-->
<h1>${film[id].titolo}</h1>
<ul>
	${film[id].locandina}<br>
	${film[id].descrizione}
</ul>
</body>
</html>