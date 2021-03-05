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

<h1>Lista film</h1>

	<ul>
		<c:forEach var="i" begin="0" end="${film.size()-1}">
				<h3><c:out value="${film[i].titolo}" /></h3>
			<li>
				<c:out value="${film[i].sala}" />
				<c:out value="${film[i].giorno}" />
				<c:out value="${film[i].ora}" />
			</li>
		</c:forEach>
	</ul>

</body>
</html>