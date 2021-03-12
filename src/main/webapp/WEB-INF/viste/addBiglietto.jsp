<%@include file="header.jsp"%>

<form action="addBiglietto" method="post">

<!-- 	<input type="hidden" name="id" value="null"> -->

	<img src="${film.locandina}" alt=”biglia” style="float: left; margin: 5px"
			width="29%">

	<input type="hidden" id="user" name="utente_username" placeholder="username" value="">
	<input type="hidden" id="film" name="film_id" placeholder="id film" value="${film.id}">
	
	<input type="submit" value="acquista biglietto">
		


</form>

<script src="/../../resources/js/acquista.js"></script>

<%@include file="footer.jsp"%>
