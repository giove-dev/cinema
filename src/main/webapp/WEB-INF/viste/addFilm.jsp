
<%@include file="header.jsp"%>

<form action="addFilm" method="post">

	<input type="text" name="titolo" placeholder="titolo">
	<input type="text" name="genere" placeholder="genere">
	<input type="text" name="descrizione" placeholder="descrizione">
	<input type="text" name="sala" placeholder="sala">
	<input type="text" name="giorno" placeholder="giorno">
	<input type="text" name="ora" placeholder="ora">
	<input type="text" name="locandina" placeholder="locandina">
	<input type="text" name="link_trailer" placeholder="trailer">
	<input type="submit" value="aggiungi film">
	
</form>

<%@include file="footer.jsp"%>