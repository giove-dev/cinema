<%@include file="header.jsp"%>



<div class="card" style="width: 18rem;">
	<div class="card-body">
		<h5 class="card-title">Biglietto</h5>
	</div>
	<ul class="list-group list-group-flush">
		<li class="list-group-item">ID BIGLIETTO: ${biglietto.id } ID FILM:  ${biglietto.film_id }</li>
		<li class="list-group-item">${biglietto.utente_username }</li>
		<li class="list-group-item">QUANTITA': ${biglietto.quantita }</li>
		<li class="list-group-item">POSTO/I: ${biglietto.posto }</li>
	</ul>
	<div class="card-body">
		<a class="btn btn-primary btn-sm mb-1"
			href="/biglietto/update/${biglietto.getId()}">modifica</a> <a
			class="btn btn-danger btn-sm mb-1"
			href="/biglietto/delete?id=${biglietto.getId()}">elimina </a>
	</div>
</div>


<%@include file="footer.jsp"%>
