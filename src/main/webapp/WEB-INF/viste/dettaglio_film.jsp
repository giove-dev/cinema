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

<h1>${film[id-1].titolo}</h1>
<ul>
	${film[id-1].locandina}<br>
	${film[id-1].descrizione}
</ul>
</body>
</html>