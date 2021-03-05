<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Update film</h1>

<form action="/admin/updateFilm/${film.id}" method="post">

	<input type="text" name="titolo" placeholder="titolo" value="${film.titolo}">
	<input type="text" name="genere" placeholder="genere" value="${film.genere}">
	<input type="text" name="descrizione" placeholder="descrizione" value="${film.descrizione}">
	<input type="text" name="sala" placeholder="sala" value="${film.sala}">
	<input type="text" name="giorno" placeholder="giorno" value="${film.giorno}">
	<input type="text" name="ora" placeholder="ora" value="${film.ora}">
	<input type="text" name="locandina" placeholder="locandina" value="${film.locandina}">
	<input type="text" name="link_trailer" placeholder="trailer" value="${film.link_trailer}">
	<input type="submit" value="update film">
	
</form>

</body>
</html>