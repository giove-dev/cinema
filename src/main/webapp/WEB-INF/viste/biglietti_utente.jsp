<%@include file="header.jsp"%> 
<h2>Biglietti di: '${keyword}'</h2>

 <ul>
<c:forEach var="i" begin="0" end="${searchResult.size()-1}">
						
		
		<div class="card" style="width: 18rem;">
	<div class="card-body">
		<h5 class="card-title">Biglietto</h5>
	</div>
	<ul class="list-group list-group-flush">
		<li class="list-group-item">ID BIGLIETTO: ${searchResult[i].id} ID FILM:  ${searchResult[i].film_id}</li>
		<li class="list-group-item">${searchResult[i].utente_username}</li>
		<li class="list-group-item">QUANTITA': ${searchResult[i].quantita }</li>
		<li class="list-group-item">POSTO/I: ${searchResult[i].posto }</li>
	</ul>
	<div class="card-body">
		<a class="btn btn-primary btn-sm mb-1"
			href="/biglietto/update/${searchResult[i].id}">modifica</a> <a
			class="btn btn-danger btn-sm mb-1"
			href="/biglietto/delete?id=${searchResult[i].id}">elimina </a>
	</div>
</div>
				
</c:forEach>
</ul>


<%@include file="footer.jsp"%>