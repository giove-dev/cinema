<%@include file="header.jsp"%>

<h2 style="text-align:center; margin-top:1.5rem; margin-bottom:1rem">Biglietti di: '${keyword}'</h2>



<div class="container-fluid">
	<div class="d-inline-flex justify-content-between mx-5">


		
		<c:forEach var="i" begin="0" end="${searchResult.size()-1}">
					<div class="col-3 mb-1">

		<div class="card" style="width: 18rem;">
			<div class="card-body">
				<h5 class="card-title">Biglietto</h5>
			</div>
			<ul class="list-group list-group-flush">
				<li class="list-group-item">ID BIGLIETTO: ${searchResult[i].id}
					ID FILM: ${searchResult[i].film_id}</li>
				<li class="list-group-item">${searchResult[i].utente_username}</li>
				<li class="list-group-item">QUANTITA':
					${searchResult[i].quantita }</li>
				<li class="list-group-item">POSTO/I: ${searchResult[i].posto }</li>
			</ul>
			<div class="card-body">
				<a class="btn btn-danger btn-sm mb-1"
					href="/biglietto/delete?id=${searchResult[i].id}">elimina </a> <a
					class="btn btn-primary btn-sm mb-1"
					href="/biglietto/dettaglio/${searchResult[i].id}">dettaglio</a>
			</div>
		</div>
	</div>
	
	
	
	
</c:forEach>


	</div>
</div>
	


<div class="fixed-bottom">
<%@include file="footer.jsp"%>
</div>
