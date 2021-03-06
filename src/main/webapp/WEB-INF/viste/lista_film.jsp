<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
				<a class = "btn btn-warning" href=/admin/films/update/${film[i].id} >modifica</a>
				<a class="btn btn-danger" href=/admin/films/delete?id=${film[i].getId()} >elimina</a>
			</li>
			
		</c:forEach>
	</ul>

</body>
</html>