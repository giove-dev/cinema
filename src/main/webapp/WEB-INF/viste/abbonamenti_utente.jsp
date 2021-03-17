<%@include file="header.jsp"%>
<h2>Abbonamenti di: '${keyword}'</h2>

<ul>
	<c:forEach var="i" begin="0" end="${searchResult.size()-1}">


		<div class="card" style="width: 18rem;">
			<div class="card-body">
				<h5 class="card-title">Abbonamento</h5>
			</div>
			<ul class="list-group list-group-flush">
				<li class="list-group-item">ID ABBONAMENTO: ${searchResult[i].id}</li>
				<li class="list-group-item">${searchResult[i].utente_username}</li>
				<li class="list-group-item">RIMANENZA:
					${searchResult[i].rimanenza }</li>
			</ul>
			<div class="card-body">
				<a class="btn btn-danger btn-sm mb-1"
					href="/abbonamento/delete?id=${searchResult[i].id}">elimina </a> <a
					class="btn btn-primary btn-sm mb-1"
					href="/abbonamento/dettaglio/${searchResult[i].id}">dettaglio</a>
			</div>
		</div>

	</c:forEach>
</ul>


<%@include file="footer.jsp"%>