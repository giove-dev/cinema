<%@include file="header.jsp"%>
<div class="container-fluid" style="text-align: center;margin-top:1rem;margin-bottom:1rem;"><h2>Dettaglio abbonamento</h2></div>
<div class="container-fluid">
	<div class="d-flex  justify-content-center">
			<div class="card my-3" style="width: 18rem;">
	<div class="card-body">
		<h5 class="card-title">Abbonamento</h5>
	</div>
	<ul class="list-group list-group-flush">
		<li class="list-group-item">ID ABBONAMENTO: ${abbonamento.id }</li>
		<li class="list-group-item">${abbonamento.utente_username }</li>
		<li class="list-group-item">RIMANENZA: ${abbonamento.rimanenza }</li>
	</ul>
	<div class="card-body">
		 <a
		class="btn btn-danger btn-sm mb-1"
		href="/abbonamento/delete?id=${abbonamento.getId()}">elimina </a>
	</div>
</div>
	</div>

</div>



<%@include file="footer.jsp"%>
