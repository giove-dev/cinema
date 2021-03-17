<%@include file="header.jsp"%>

<div class="container-fluid">
	<div class="d-flex  justify-content-center">
			<div class="card my-5" style="width: 18rem;">
	<div class="card-body">
		<h5 class="card-title">Biglietto</h5>
<div id="img">
</div>
	</div>
	<ul class="list-group list-group-flush">
		<li class="list-group-item">ID ABBONAMENTO: ${abbonamento.id }</li>
		<li class="list-group-item">${abbonamento.utente_username }</li>
		<li class="list-group-item">RIMANENZA: ${abbonamento.rimanenza }</li>
	</ul>
	<div class="card-body">
		<a class="btn btn-primary btn-sm mb-1"
		href="/abbonamento/update/${abbonamento.getId()}">modifica</a> <a
		class="btn btn-danger btn-sm mb-1"
		href="/abbonamento/delete?id=${abbonamento.getId()}">elimina </a>
	</div>
</div>
	</div>

</div>



<%@include file="footer.jsp"%>
