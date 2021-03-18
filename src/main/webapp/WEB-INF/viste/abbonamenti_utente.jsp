<%@include file="header.jsp"%>

<div class="container" style="text-align: center;margin-top:1rem;margin-bottom:1rem;"><h2>Abbonamenti di: '${keyword}'</h2></div>

<div class="container-fluid">
	<div class="d-flex justify-content-center">
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
					href="/abbonamento/delete?id=${searchResult[i].id}">elimina </a> 
			</div>
		</div>

	</c:forEach>
	</div>
</div>




<div class="fixed-bottom">
	<%@include file="footer.jsp"%>
</div>
