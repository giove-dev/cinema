<%@include file="header.jsp"%>

<p>${biglietto.id }</p>
<p>${biglietto.utente_username }</p>
<p>${biglietto.film_id }</p>

<a class="btn btn-primary btn-sm mb-1"
	href="/biglietto/update/${biglietto.getId()}">modifica</a>
<a class="btn btn-danger btn-sm mb-1"
	href="/biglietto/delete?id=${biglietto.getId()}">elimina </a>



<%@include file="footer.jsp"%>
