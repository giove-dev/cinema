<%@include file="header.jsp"%>

<form action="/abbonamento/updateAbb/${abbonamento.getId()}"
	method="post">

			  <label for="film_id" class="form-label">Inserire la nuova rimanenza</label>

	<input type="text" name="rimanenza" class="form-control" id="rimanenza"
		aria-describedby="rimanenza" value="${abbonamento.rimanenza}">
		 
		<input
		type="hidden" name="utente_username" class="form-control"
		id="utente_username" aria-describedby="utente_username"
		value="${abbonamento.utente_username}">

	<button type="submit" class="btn btn-primary" value="update abb">salva</button>

</form>

<%@include file="footer.jsp"%>