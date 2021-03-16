<%@include file="header.jsp"%>


<form action="/abbonamento/updateAbb/${abbonamento.getId()}"
	method="post">

			  <label for="film_id" class="form-label">Inserire la nuova rimanenza</label>

	<input type="hidden" name="rimanenza" class="form-control" id="rimanenza"
		aria-describedby="rimanenza">
	<input type="hidden" name="rim" class="form-control" id="rim"
		aria-describedby="rim" value="${abbonamento.rimanenza}">
		 
		<input
		type="hidden" name="utente_username" class="form-control"
		id="utente_username" aria-describedby="utente_username"
		value="${abbonamento.utente_username}">

	<button type="submit" id="btnX" class="btn btn-primary" value="update abb">salva</button>

</form>


<script type="text/javascript">

var rim = document.getElementById('rim').value;
var rimanenzaAbb = document.getElementById('rimanenza');

	console.log(rim);

	q = localStorage.getItem("quantita");
	console.log(q);
	
	rimanenzaAbb.value = rim - q;
	console.log(rimanenzaAbb);
	
</script>

<%@include file="footer.jsp"%>